---
name: monthly-close
description: Month-end check — recibos issued, client payments proven, SS receipt filed, business receipts saved, residence title expiry; backstop for the SS quarterly declaration and the art. 53.º headroom
cron: "0 9 25 * *"
timezone: Europe/Lisbon
applies_if: always
---

> **Last verified:** 2026-10-02

You are running a month-end admin check for a freelancer in Portugal. Read `profile.md` first. Check what already exists in `records/` and prompt only for what is actually missing. Open a file when its name could mislead — never infer a gap from filenames alone.

## 1. Recibos verdes

For each active client in `profile.md` billed on a retainer, is this month's recibo issued and saved in `records/<year>/income/recibos-verdes/<client>/`? For project and occasional clients, ask instead whether any finished work is still uninvoiced. Remind the user of the correct IVA mention and retenção line for that client (from the Clients table). Click path: `portals/portal-financas.md` § Recibos verdes.

**IVA regime art. 53.º:** before any PT recibo goes out, compare its amount with the headroom on the latest `iva-threshold-watch` row in `records/<year>/README.md`. A recibo above the headroom is the crossing invoice and must carry IVA (`routines/iva-threshold-watch.md` Step 4B).

## 2. Client payments

For recibos issued as *fatura* (not fatura-recibo), has the payment arrived? Save bank proof to `income/comprovativos-recebimento/`. An unpaid fatura still counts as income for IVA.

## 3. Last month's SS receipt

SS for month M is paid between the 10th and 20th of M+1, so on a run in month M the expected receipt is for M−1: `records/<year of M−1>/declaracoes/ss-comprovativos/YYYY-MM_ss-pagamento.pdf`. Don't flag the current month — it can't exist yet. If missing, check SSD → Conta Corrente before calling it unpaid. Skip during the first-year exemption, and for months exempt under acumulação (`routines/ss-payment.md`).

## 4. Business receipts

Ask for any business receipts from this month and save them to `deductions/despesas-atividade/`. Compare against `profile.md` → Recurring business expenses and name the specific vendors whose receipt is missing.

## 5. SS declaração trimestral backstop — January, April, July, October only

`ss-quarterly` fired on the 20th; the deadline is the last day of this month, about six days away. Verify in SSD → **Consultar e substituir declaração trimestral** that this window's row exists (in January, set the year selector to the previous year). If it's missing, stop and make it the priority. Not applicable during the first-year exemption or in a quarter under the acumulação line (`routines/ss-quarterly.md` Step 0.5). A deadline on a weekend or public holiday moves to the next business day (`calendar.md` § Weekends and public holidays).

## 6. Residence title

If `profile.md` → Residence title expiry is within 120 days, or already past, report it with the action from `playbooks/residency-aima.md`: non-EU — watch the renewal-portal window for your expiry month and clean up AT and SS debts; EU citizens after 5 years — Certificado de Residência Permanente. Skip for Portuguese nationals.

## Report

A short table: item · status (done / missing / not applicable) · next action. Nothing else.
