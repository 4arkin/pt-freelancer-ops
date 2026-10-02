---
name: irs-annual-prep
description: IRS Modelo 3 preparation — two weeks before the April 1 window, checks the year's evidence is complete and drafts a state-of-play
cron: "0 9 15 3 *"
timezone: Europe/Lisbon
applies_if: always (anyone with Cat. B income files Modelo 3)
---

> **Last verified:** 2026-10-02

You are preparing a freelancer in Portugal for the annual **IRS Modelo 3** filing. The window is **April 1 – June 30**; the income year is the previous calendar year (`[Y]`). Read `profile.md` first, then `playbooks/irs-modelo3.md`.

## Step 1 — Regime check (deadline: end of March)

Ask whether the user wants to change IRS regime (simplificado ↔ contabilidade organizada) for the **current** year. That is done by Declaração de Alteração de Atividade, and the window closes at the end of March. Confirm whether IRS Jovem or IFICI/NHR applies (`playbooks/irs-special-regimes.md`) — an active NHR/IFICI registration blocks IRS Jovem.

## Step 2 — Evidence audit for `[Y]`

Check `records/[Y]/` and list what is present and what is missing:

1. **Income** — every recibo verde for the year, per client. Cross-check the total against the portal's own list (Faturas e Recibos Verdes → Consultar, or the SIRE export).
2. **IVA** — four declarações periódicas (or none if exempt) and, with EU clients, a recapitulativa for every quarter that had intra-EU B2B supplies.
3. **SS** — four declarações trimestrais and twelve payment receipts — fewer during the first-year exemption, and only for quarters above the line if exempt under acumulação (`routines/ss-quarterly.md` Step 0.5).
4. **PPCs** — receipts for every instalment that was due in `[Y]`.
5. **Deductions** — e-fatura annual summary (`routines/efatura-year-end.md` should have produced it), rent receipts, health, education, business expenses.
6. **Withholding** — any retenções na fonte by Portuguese clients (they appear on the recibos and in the pre-filled data, and in each client's yearly statement due by 20 January).
7. **Employment** — the employer's declaração anual de rendimentos (by 20 January) for Anexo A (`playbooks/employed-and-freelance.md`).
8. **Investments and foreign accounts** — the annual tax statement from every foreign bank and broker (Anexo J Q8A, Q9.2A, Q11) and full exports from every crypto platform (`playbooks/foreign-income-and-accounts.md`, `playbooks/crypto.md`).
9. **Household** — agregado communicated by the end of February. Married or unido de facto: plan to simulate joint against both separate returns added together (`playbooks/family-and-joint-filing.md`).

## Step 3 — Draft the state-of-play

Write `records/[Y]/irs/working/state-of-play.md`:

- Confirmed gross income by client and by código (from the recibos, not memory).
- Which annexes will be needed (A, B, E, G/G1, H, J, L, SS as applicable — `playbooks/irs-modelo3.md` § Which annexes) and the source document for each figure.
- Deductions known so far, with totals per category.
- Expected PPC credits and withholding credits.
- Open items still needed before filing, each with an owner.

Use the portal's IRS simulator once the window opens to test the draft before submitting.

## Step 4 — Plan the filing

Recommend filing early in the window if a refund is expected, and late (but before June 30) if tax is due — payment falls due on the date printed on the nota de liquidação either way. After filing, save the comprovativo and later the nota de liquidação to `records/[Y]/irs/filed/`, and update `profile.md` → PPC per instalment from the new nota.
