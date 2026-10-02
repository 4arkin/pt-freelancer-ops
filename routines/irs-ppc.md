---
name: irs-ppc
description: IRS pagamentos por conta — reminds a week before each instalment, takes the amount from the nota de liquidação, never from memory; the July run also checks last year's IRS settlement
cron: "0 9 13 7,9,12 *"
timezone: Europe/Lisbon
applies_if: the July run — anyone who files a Modelo 3 (settlement check); the PPC steps — only if your last nota de liquidação lists pagamentos por conta for this year (profile.md → Standing amounts)
---

> **Last verified:** 2026-10-02

You are reminding a freelancer in Portugal about an IRS **pagamento por conta** (advance payment). Read `profile.md` first. Background: `playbooks/irs-modelo3.md` § Pagamentos por conta.

## Step 0 — Which instalment

| Fires | Instalment | Usual due date |
|---|---|---|
| 13 July | 1 of 3 | July 20 |
| 13 September | 2 of 3 | September 20 |
| 13 December | 3 of 3 | December 20 |

By law the 20th of July, September and December (art. 102.º n.º 1 CIRS), moved to the next business day on weekends. The portal shows the exact date (`calendar.md` § Weekends and public holidays). State which instalment you concluded first.

## July run — last year's IRS settlement

Every July, whether or not PPCs are due: IRS → **Consultar Declaração** → last year's Modelo 3. Once the nota de liquidação is issued, save it to `records/<last year>/irs/filed/`. If it shows *valor a pagar*, payment is due on the date printed on it (normally **31 August**); can't pay in one go → the plan window opens the day after that date (`playbooks/at-communication.md` § Tax debts: plano prestacional). If it shows a refund, diarise it. Copy the line *"Montante de cada pagamento por conta a efetuar durante o ano de YYYY"* into `profile.md` → Standing amounts. No PPCs listed for this year → stop after this section.

## Step 1 — Is there anything to pay?

PPCs exist only if the nota de liquidação from the IRS filed **last** year (covering the year before that) lists them. They are not due when there was no Cat. B income that year, or when each instalment would be under €50. An empty portal before the notification month is normal — AT notifies in the month before each due date — so don't read it as an exemption until that month has passed.

## Step 2 — Get the amount from the source

The amount changes every year. Read it from the latest nota de liquidação in `records/<year>/irs/filed/`: the line *"Montante de cada pagamento por conta a efetuar durante o ano de YYYY"*. Then confirm it at **Portal → IRS → Pagamentos por Conta** — the portal is the live authority. If they disagree, the portal wins; flag the discrepancy.

Don't pay a figure you calculated. The formula in the playbook is for sanity checks only.

## Step 3 — Already paid?

Check `records/<current year>/declaracoes/pagamentos-por-conta/` for this instalment, and the earlier ones of the year (by September #1 should be there; by December #1 and #2). An unpaid instalment doesn't announce itself.

## Step 4 — Pay and file

Portal → **IRS → Pagamentos por Conta** → confirm the amount → referência Multibanco or direct payment. The user pays.

Save `records/<current year>/declaracoes/pagamentos-por-conta/<year>_ppc-<n>of3.pdf`. Update `records/<year>/README.md`.

## Reducing or skipping PPCs

The taxpayer may pay less than the notified amount if they expect this year's tax to be lower (art. 102.º n.º 3–6 CIRS). If the final settlement shows a shortfall of more than 20%, compensatory interest applies (only if the penultimate year was liquidated by 31 May and the household is unchanged — art. 102.º n.º 6). Only suggest this when the income drop is certain, and let the user decide.

## After instalment 3

All of this year's PPCs are credited against this year's IRS settlement, filed next April–June. Next year's amount comes from the nota de liquidação that follows that filing — update `profile.md` then.
