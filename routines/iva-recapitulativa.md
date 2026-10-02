---
name: iva-recapitulativa
description: Quarterly declaração recapitulativa (VIES) for intra-EU B2B services — fires a week before the 20th of the month after each quarter
cron: "0 9 13 1,4,7,10 *"
timezone: Europe/Lisbon
applies_if: IVA regime normal AND at least one EU business client (profile.md → Clients)
---

> **Last verified:** 2026-10-02

You are helping a freelancer in Portugal file the **declaração recapitulativa do IVA**. Read `profile.md` first. If their IVA regime is *isento art. 53.º*, nothing is due — art. 53.º taxpayers are dispensed for operations from 1 July 2025 (`playbooks/iva-regimes.md` § Recapitulativa); say so and stop. If they had no intra-EU B2B supplies in the quarter, nothing is due — say so and stop.

## Why this is its own job

It is not the IVA declaração periódica. Same operations, same client totals, **deadline one month earlier** (two months for Q2):

```
Quarter ends        Recapitulativa      IVA periódica
Q1  31 Mar    →     20 Apr              20 May
Q2  30 Jun    →     20 Jul              20 Sep  (férias fiscais)
Q3  30 Sep    →     20 Oct              20 Nov
Q4  31 Dec    →     20 Jan              20 Feb
```

Férias fiscais only moves obligations that fall in August. The Q2 recapitulativa (20 July) never moves — it's the one people miss.

## Step 0 — Which quarter

| Fires | Quarter | Invoices **issued** in | Deadline |
|---|---|---|---|
| 13 January | Q4 of the **previous** year | Oct–Dec | 20 Jan |
| 13 April | Q1 | Jan–Mar | 20 Apr |
| 13 July | Q2 | Apr–Jun | 20 Jul |
| 13 October | Q3 | Jul–Sep | 20 Oct |

Deadlines are the legal day. On a weekend or public holiday they move to the next business day — `calendar.md` § Weekends and public holidays.

In January, everything files under the previous year's folder. State the quarter you concluded first.

**January run only:** if last year's PT-located turnover was ≤ €15,000 (e.g. all clients are foreign businesses), art. 53.º may now be open to the user. Moving in is only possible by a January declaração de alterações, effective 1 January, and not within 5 years of a renúncia (art. 55.º CIVA). Mention it once; the user decides — `playbooks/iva-regimes.md` § Gotchas.

## Step 1 — Already delivered?

Portal → **Declaração recapitulativa do IVA → Consultar declaração** → Ano, Período = Todos. If the quarter's row exists, check its total against Step 2 and stop.

## Step 2 — Build the figures

**Count by the recibo's data de emissão, not the service date.** A recibo for March work issued on 7 April is Q2. Open each PDF in `records/<year>/income/recibos-verdes/<client>/` and read *"emitida em"* — a filename carrying the service date will mislead you. Group the quarter's totals by EU business client. Nil quarter → no filing.

## Step 3 — Verify each client's VAT number

A wrong or unregistered number invalidates the whole declaration. The recibo verde prints a foreign VAT number in the *NIF Estrangeiro* field **without its country prefix**, so don't trust the recibo. Check each at VIES:

```
https://ec.europa.eu/taxation_customs/vies/rest-api/ms/<CC>/vat/<number-without-prefix>
```

`"isValid": true` is the pass. Some countries (e.g. DE) don't disclose name or address — validity alone is fine. Record the check date in `profile.md` → Clients → VIES checked.

## Step 4 — File

Portal → **Declaração recapitulativa do IVA → Entregar declaração**. Full walkthrough: `portals/portal-financas.md` § Recapitulativa. In short:

- Quadro 02 — Tipo `Primeira`; periodicity change to monthly? `Não`.
- Quadro 03 — Ano + Trimestral (`03T`/`06T`/`09T`/`12T`); leave Mensal blank.
- Quadro 04/05 — one line per client: country prefix · number **without** prefix · amount · Tipo de Operação `5 - Prestações de Serviços`.
- Quadro 06/07 — empty unless you have goods on consignment / a contabilista.

**Validar** (expect "Sem erros") → the user presses **Entregar**. The value field swallows the first keystroke after a row is added — re-check every amount before validating.

## Step 5 — Save the proof

The portal gives you nothing on submission. **Obter Comprovativo → OBTER COMPROVATIVO** on the row opens the PDF in a tab; downloading is a second click on the browser's PDF toolbar. Save as `records/<year>/declaracoes/iva-recapitulativa/<year>-Qn_recapitulativa.pdf`.

## Step 6 — Hand the figure to the IVA declaration

The recapitulativa total (campo 19) must equal **campo 7** of the quarter's declaração periódica — AT cross-checks them. Add it as a row to the status table in `records/<year>/README.md` (`| Recapitulativa | <year>-Qn | <deadline> | filed · campo 19 €… | <file> |`) so `iva-quarterly` reuses it.

## If it is already late

Say so plainly and file anyway — voluntary late filing costs far less than being caught. See `playbooks/at-communication.md` § Late-filing coimas: minimum €150, reduced to a fraction if regularised before AT opens a process, and a case for full dispensa because reverse-charge supplies cause no loss of tax revenue.
