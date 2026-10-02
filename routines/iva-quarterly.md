---
name: iva-quarterly
description: IVA declaração periódica (regime normal trimestral) — fires a week before the 20th of the 2nd month after each quarter
cron: "0 9 13 2,5,9,11 *"
timezone: Europe/Lisbon
applies_if: IVA regime normal trimestral (profile.md). Monthly filers need cron "0 9 13 * *" and the 20th of the 2nd month rule per month.
---

> **Last verified:** 2026-10-02

You are helping a freelancer in Portugal file the quarterly **IVA declaração periódica**. Read `profile.md` first. If their IVA regime is *isento art. 53.º*, no return is due for their sales. Before stopping, ask whether they bought services from suppliers outside Portugal this quarter (software, hosting, ads) without being charged VAT — that may require self-assessment and a declaração periódica for that period *(unverified — `playbooks/iva-regimes.md` § Gotchas, OCC Guia Q27)*. If none, say so and stop. Background: `playbooks/iva-regimes.md`. Form walkthrough: `portals/portal-financas.md` § Declaração periódica.

## Step 0 — Which quarter

| Fires | Quarter | Months | Income year | Declaration deadline | Payment deadline |
|---|---|---|---|---|---|
| 13 February | Q4 | Oct–Dec | **previous year** | Feb 20 | Feb 25 |
| 13 May | Q1 | Jan–Mar | current | May 20 | May 25 |
| 13 September | Q2 | Apr–Jun | current | **Sep 20** (férias fiscais) | Sep 25 |
| 13 November | Q3 | Jul–Sep | current | Nov 20 | Nov 25 |

Deadlines are the legal day. On a weekend or public holiday they move to the next business day (2026: Q2 → 21 September) — `calendar.md` § Weekends and public holidays.

`[Y]` = the income year. State the quarter you concluded before anything else.

## Step 1 — Was the recapitulativa filed?

If the user has EU business clients, the quarter's recapitulativa was due a month earlier (two months for Q2) (`routines/iva-recapitulativa.md`). Check `records/[Y]/declaracoes/iva-recapitulativa/`. If missing, that is now the priority — it's already late.

## Step 2 — Already filed?

Look for `records/[Y]/declaracoes/iva-periodica/[Y]-Qn_iva-periodica.pdf`. If absent, confirm on the portal (**Consultar Declarações Entregues**) before concluding it's unfiled.

## Step 3 — Classify e-fatura first

Supplier invoices issued against the user's NIF land in e-fatura **unclassified** and don't count as business expenses until each is marked. Skip this and the quarter's deductible input IVA looks smaller than it is — a real credit left behind.

Order: **e-fatura → Adquirente → Complementar Informação Faturas** (clear the pending list) → **Despesas da Atividade → Verificar Despesas** → then fill the declaration. Click paths: `portals/e-fatura.md`.

## Step 4 — Build the figures

- **Outputs:** count recibos by **data de emissão** (not service date). Group by IVA treatment using `profile.md` → Clients: intra-EU B2B services (reverse charge) go in **campo 7** and must equal the recapitulativa total; PT clients go in the taxed campos by rate; non-EU business clients go in **campo 8**.
- **Inputs:** deductible IVA from classified e-fatura invoices. Equipment (imobilizado) goes in campo 20, other goods and services in campo 24. Purchases from foreign suppliers are self-assessed (campos 16/17 EU, 3/4 non-EU) and deducted back in campo 24. Full field map with validation errors: `portals/portal-financas.md`; rules: `playbooks/iva-regimes.md`.
- **Credit:** if inputs exceed outputs, the result is a credit (campo 94). Carry it forward (campo 96) or request a refund (campo 95) once the art. 22.º conditions are met.

## Step 5 — File and pay

Portal → **IVA → Declaração Periódica → Entregar**. **Validar** first; the user presses **Entregar**. If tax is due, a payment reference appears — pay by the 25th.

The portal gives you no receipt on submission. **Obter Comprovativo → OBTER COMPROVATIVO** on the row, then the browser's PDF download button. A freshly filed declaration shows *"A disponibilizar brevemente"* for about a day, then *"Pendente de liquidação"* — normal.

Save `records/[Y]/declaracoes/iva-periodica/[Y]-Qn_iva-periodica.pdf`; when the nota de liquidação arrives, `[Y]-Qn_iva-nota-liquidacao.pdf` beside it. Update `records/[Y]/README.md`.

## Step 6 — Shared deadlines

September 20 is also a pagamento por conta date in most years. If `profile.md` lists PPCs, check `records/<current year>/declaracoes/pagamentos-por-conta/` for that instalment and flag it if missing. `routines/irs-ppc.md` owns it; this is a backstop.
