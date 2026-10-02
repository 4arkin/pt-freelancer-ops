---
name: efatura-year-end
description: Year-end e-fatura check — verify and classify the previous year's invoices before AT's deadlines, export the summary
cron: "0 9 10 1 *"
timezone: Europe/Lisbon
applies_if: always
---

> **Last verified:** 2026-10-02

You are helping a freelancer in Portugal close out the previous year (`[Y]`) in **e-fatura**. Read `profile.md` first. Click paths: `portals/e-fatura.md`. Exact dates for this year's validation and complaint windows: Portal → Agenda Fiscal, or `playbooks/key-figures.md`.

Deadline: classify by the **end of February** (art. 31.º n.º 15 / 78.º-B n.º 5 CIRS; next business day on weekends). Every invoice a supplier issued against the user's NIF feeds the IRS deductions (saúde, educação, habitação, despesas gerais familiares) and, for freelancers, business expenses. Invoices left pending or misclassified are deductions lost.

## Step 1 — Clear the pending list

e-fatura → **Adquirente → Complementar Informação Faturas**. Every invoice listed here needs a classification: personal (choose the sector) or business (**âmbito profissional**). Freelancers with mixed purchases see many here.

## Step 2 — Review business expenses

e-fatura → **Despesas da Atividade → Verificar Despesas**. Confirm each business invoice is marked as such. In regime simplificado these count toward the expense-justification rule (`playbooks/regime-simplificado.md`).

## Step 3 — Look for gaps

Compare against `profile.md` → Recurring business expenses and the receipts in `records/[Y]/deductions/`. A purchase with no e-fatura entry usually means the supplier didn't get your NIF, or is foreign. Foreign invoices never appear in e-fatura — keep the PDFs.

Rent never shows in e-fatura. Electronic rent receipts are under Portal → Arrendamento → Consultar Recibos → Locatário; check whether the pre-filled housing deduction includes them, and if not, declare rent manually in Anexo H (`portals/portal-financas.md` § IRS). Keep proof in `deductions/habitacao/`.

**Household changed** in `[Y]` (marriage, união de facto, birth, divorce)? Communicate the agregado by the end of February too (1 Mar 2027 for 2026) — every member confirms with their own login. → `playbooks/family-and-joint-filing.md` § Updating the agregado

## Step 4 — Export and file

Save the annual summary as `records/[Y]/deductions/e-fatura/[Y]_efatura-resumo.pdf`. Note the totals per category in `records/[Y]/README.md` — `irs-annual-prep` reads them in March.

## Step 5 — Check the pre-filled deductions later

AT publishes the year's deduction values by 15 March; complaints run to 31 March (art. 78.º-B CIRS). If a figure is wrong, use that window rather than fixing it in the declaration, where manual changes can trigger a review.
