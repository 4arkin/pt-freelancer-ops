---
name: ss-quarterly
description: Segurança Social declaração trimestral — works out the quarter, builds monthly figures from your recibos, walks you through delivery
cron: "0 9 20 1,4,7,10 *"
timezone: Europe/Lisbon
applies_if: you are a trabalhador independente past the first-year exemption; if also employed, only quarters above the acumulação line (Step 0.5)
---

> **Last verified:** 2026-10-02

You are helping a trabalhador independente in Portugal deliver the Segurança Social **declaração trimestral**. Read `profile.md` first. Background and click paths: `portals/seg-social-direta.md`, `playbooks/social-security.md`.

This is a hard obligation, separate from IVA and from the monthly payment. If it is not delivered, SS sets rendimento relevante to €0 and the contribution to the legal minimum (art. 163.º n.º 2 Código Contributivo); the real amount then returns as a late payment plus a contraordenação (art. 164.º).

## Step 0 — Which quarter

Read today's date. A late or catch-up run can fire outside the intended window, so don't assume.

| Fires | Quarter | Income months | Income year | Deadline | Contribution applies to |
|---|---|---|---|---|---|
| 20 January | 4.º trimestre | Oct, Nov, Dec | **previous year** | January 31 | Jan / Feb / Mar |
| 20 April | 1.º trimestre | Jan, Feb, Mar | current | April 30 | Apr / May / Jun |
| 20 July | 2.º trimestre | Apr, May, Jun | current | July 31 | Jul / Aug / Sep |
| 20 October | 3.º trimestre | Jul, Aug, Sep | current | October 31 | Oct / Nov / Dec |

Deadlines are the legal day. On a weekend or public holiday they move to the next business day — `calendar.md` § Weekends and public holidays.

`[Y]` below = the income year. In January it is the previous year: the SSD year selector must be set to `[Y]` (it defaults to the current year and looks empty), and the proof files under `records/[Y]/`.

State which quarter you concluded, and why, before anything else.

## Step 0.5 — Exempt this quarter?

- **First-year exemption:** if `profile.md` → SS first-year exemption shows an enquadramento date after the quarter, nothing is due. Say "not applicable" and stop. If it falls inside the quarter, declare only the months from the enquadramento on (`routines/first-year.md` § B).
- **Also employed** (`profile.md` → Employment, SS acumulação exemption): with a salary from a **different** employer averaging ≥ 1 × IAS, sum the quarter's gross services by month of service, **leaving out recibos to your employer or its group**. If the total is ≤ **€9,207.94** (2026: 3 × 4 × IAS ÷ 0.70), there is nothing to declare. Say so and stop. Above it, declare the full monthly figures. SS charges only the **remanescente**: (gross × 0.70 ÷ 3 − 4 × IAS) × 21.4%, and no variação is offered. → `playbooks/employed-and-freelance.md`

## Step 1 — Already delivered?

SSD → search "declaração trimestral" → **Consultar e substituir declaração trimestral** → Declarações entregues, Rendimentos do ano = `[Y]`. If the quarter's row exists, check its value against Step 2 and stop.

## Step 2 — Build the monthly figures from the recibos

The form takes **gross income per month**, not a quarterly total and not rendimento relevante. Open every recibo in `records/[Y]/income/recibos-verdes/*/` and group by **month of service** (not issue date — that's the IVA rule). For the 4.º trimestre, also open `records/[Y+1]/income/recibos-verdes/*/`: a recibo issued in January for October–December work is filed under next year but belongs to this declaration. Sum each month separately; two clients in one month add together. Never state a figure from memory or a prior quarter.

Sanity-check what the form will preview (on a remanescente, use the Step 0.5 formula instead):

```
gross m1 + m2 + m3
  × 0,70        services coefficient (0,20 for sale of goods), art. 162.º CC
= rendimento relevante
  × (1 + variação)   −25% … +25%, chosen in Step 3
  ÷ 3
= base de incidência mensal   (floor: minimum contribution; ceiling: 12 × IAS)
  × 21,4%
= contribuição mensal
```

## Step 3 — Deliver

SSD → **Consultar e substituir declaração trimestral** → **Registar declaração**. After the deadline a *"Declaração trimestral fora de prazo"* modal appears — late delivery is still accepted, press Prosseguir.

1. *Tem rendimentos a declarar?* → **Sim, tive rendimentos no trimestre**
2. *Preencha os rendimentos* → expand **Prestação de serviços** → enter the three monthly figures. Use the **Rendimentos obtidos no estrangeiro** row for foreign clients and the plain row for Portuguese clients (check `profile.md` → Clients). Confirm the trimester total matches Step 2.
3. *Subsídios, mais-valias, propriedade intelectual?* → **Não**, unless you have them.
4. *Valor de contribuição mensal previsto* → **Escolher percentagem de variação**. It defaults to 0% on every declaration — it is not a standing setting. Ask the user which they want; confirm the preview changes. Not offered on a remanescente (Step 0.5).

The user presses **Entregar declaração**. Do not submit on their behalf.

## Step 4 — Pay only after delivering

If a contribution for an affected month is still unpaid, paying before the declaration registers settles it at the wrong (often minimum) amount, and the difference comes back as a separate payment document. Deliver first; wait for Conta Corrente → Posição Atual to refresh (SSD says up to 72h) and pay what it shows.

## Step 5 — File the proof

Save to `records/[Y]/declaracoes/ss-trimestral/[Y]-Qn_ss-trimestral.pdf`. SSD names the download `YYYYMMDD_HHMMSS_<id>.pdf` — rename it. Under browser automation the *Obter comprovativo* button may not trigger a download; if it does nothing, ask the user to click it.

Update `records/[Y]/README.md`.

## Step 6 — Watch for the notification

Two to four weeks later a *Notificação da base de incidência contributiva* appears in SSD messages, stating the monthly contribution for the next three months. Reconcile it against Step 2. If it says "não existem rendimentos", the declaration did not register — act immediately. Update `profile.md` → SS monthly contribution.
