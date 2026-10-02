# Obligation calendar

Every recurring obligation for a trabalhador independente in Portugal, with the routine that reminds you. Which rows apply depends on `profile.md`: an IVA-exempt (art. 53.º) freelancer skips rows 4–6; one in regime normal skips row 12; one with no EU business clients skips row 4. Rows 2–3 don't apply during the SS first-year exemption, or in quarters under the acumulação line if you are also employed (`routines/ss-quarterly.md` Step 0.5); row 13 only if your household changed.

**The rule behind all of it:** an obligation with no reminder firing is an obligation that will be missed. That is the whole reason `routines/` exists.

> **Last verified:** 2026-10-02. For the current year's exact dates, check Portal das Finanças → Agenda Fiscal.

## The obligation set

| # | Obligation | Cadence | Deadline | Where | Routine |
|---|---|---|---|---|---|
| 1 | Issue recibo verde per client | per service | no fixed calendar date; issue promptly — see [recibos-verdes](playbooks/recibos-verdes.md) | Portal → Faturas e Recibos Verdes | `monthly-close` |
| 2 | SS contribution payment | monthly | pay **10th–20th** of the following month | Segurança Social Direta → Conta Corrente | `ss-payment` |
| 3 | SS declaração trimestral | quarterly | **last day** of Jan / Apr / Jul / Oct | SSD → Consultar e substituir declaração trimestral | `ss-quarterly` |
| 4 | Declaração recapitulativa (VIES) | quarterly, only if you had intra-EU B2B supplies | **20th of the month after** the quarter: Apr 20 · Jul 20 · Oct 20 · Jan 20 | Portal → Declaração recapitulativa do IVA | `iva-recapitulativa` |
| 5 | IVA declaração periódica (trimestral) | quarterly | **20th of the 2nd month** after the quarter: May 20 · Sep 20 · Nov 20 · Feb 20 | Portal → IVA → Declaração Periódica | `iva-quarterly` |
| 6 | IVA payment (if tax due) | quarterly | 25th of the 2nd month after the quarter | Portal / Multibanco | `iva-quarterly` |
| 7 | IRS pagamentos por conta | 3 × year, only if your nota de liquidação lists them | by the 20th of Jul · Sep · Dec (art. 102.º CIRS); next business day on weekends — 2026: Jul 20 · Sep 21 · Dec 21 | Portal → IRS → Pagamentos por Conta | `irs-ppc` |
| 8 | IRS Modelo 3 | annual | Apr 1 – Jun 30 | Portal → IRS → Entregar Declaração | `irs-annual-prep` |
| 9 | IRS settlement payment | annual | date on the nota de liquidação (typically by Aug 31) | Portal | `irs-ppc` (July run) |
| 10 | e-fatura: verify and classify the year's invoices | annual | classify by end of February; AT publishes deduction values by Mar 15; complaints by Mar 31 | e-fatura → Adquirente | `efatura-year-end` |
| 11 | IRS regime choice (simplificado ↔ organizada) | annual | by Mar 31 (art. 28.º n.º 4 CIRS), via Declaração de Alterações | Portal → Atividade | `irs-annual-prep` |
| 12 | Art. 53.º threshold watch (PT-located turnover vs €15,000 / €18,750) | monthly, only if art. 53.º | declaração de alterações within 15 business days of the invoice that takes the year above €18,750, or of 31 Dec if the year ended above €15,000 | Portal → Atividade → Submeter Declarações → Declaração de Alterações | `iva-threshold-watch` |
| 13 | Agregado familiar update (marriage, união de facto, birth, divorce) | annual, if it changed | end of February (1 Mar 2027 for 2026) | Portal → IRS → Dados agregado IRS → Comunicar agregado familiar | `efatura-year-end` |
| 14 | Residence title renewal / EU permanent certificate | per title | renewal-portal window for your expiry month (non-EU); after 5 years (EU) | AIMA Portal de Renovações | `monthly-close` |

## One-time events in the first two years

Not in the table, because their dates depend on when you started: the first SS declaração trimestral after the 12-month exemption, the IFICI registration (15 January after arrival), the first Modelo 3 (year N+1) — plus an arrival-year Modelo 3 if you became resident in an earlier year than you started, the first pagamentos por conta (year N+2), and the first residence-title renewal. `routines/first-year.md` works them out from `profile.md`.

## Recapitulativa and IVA periódica are two filings

Same operations, same client totals, **different deadlines — the recapitulativa is due a month earlier** (two months for Q2):

```
Quarter ends        Recapitulativa (#4)     IVA periódica (#5)
Q1  31 Mar    →     20 Apr                  20 May
Q2  30 Jun    →     20 Jul                  20 Sep   ← férias fiscais
Q3  30 Sep    →     20 Oct                  20 Nov
Q4  31 Dec    →     20 Jan                  20 Feb
```

The Q2 recapitulativa is the one people miss. The September IVA date feels like "the summer one", and the July recapitulativa disappears behind it. One reminder for "IVA" cannot cover both.

## Férias fiscais (August)

Declaration and payment obligations falling **in August** move to September. That is why the Q2 IVA periódica, technically 20 August, is due 20 September. Obligations in July are **not** moved — so the Q2 recapitulativa stays on 20 July.

Férias fiscais is a tax (AT) rule. Segurança Social deadlines falling in August are not moved *(unverified — no SS rule found either way; pay inside the normal window to be safe)*.

## Weekends and public holidays

A deadline on a weekend or public holiday moves to the next business day. The tables in this repo give the legal day; always state the actual date. 2026 examples: Q2 IVA periódica → **21 September** (20 Sep is a Sunday); SS declaração trimestral for Q3 → **2 November** (31 Oct is a Saturday, 1 Nov a Sunday and holiday); for Q4 → **1 February 2027** (31 Jan is a Sunday); Q4 IVA periódica → **22 February 2027** (20 Feb is a Saturday).

## The January / February year trap

Q4 obligations are filed in the following year but belong to the income year:

- SS declaração trimestral for Oct–Dec → delivered in January; SSD's year selector defaults to the current year and shows nothing until you set it back.
- Recapitulativa Q4 → January. IVA periódica Q4 → February.
- File every one of them under `records/<income year>/`.
- A recibo issued in January for December work files under the new year (its data de emissão), but its income goes in the Q4 SS declaration.

## Two different date rules

- **IVA** (periódica and recapitulativa) counts each recibo by its **data de emissão**.
- **SS declaração trimestral** groups income by the **month of service**.

A recibo for March work issued on 7 April is Q1 for SS and Q2 for IVA. Never copy a quarterly total from one filing into the other.

## Running the reminders

Each routine has a `cron:` line in its frontmatter. How to schedule them with your AI tool, plain cron, or a calendar is in [routines/README.md](routines/README.md). Run two layers — a scheduler and a calendar — because a scheduler can die silently. An app update, for example, can re-key the task registry and stop every reminder with no error shown.
