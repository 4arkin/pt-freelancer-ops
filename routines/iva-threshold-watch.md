---
name: iva-threshold-watch
description: Monthly art. 53.º watch — PT-located turnover vs €15,000 / €18,750, what to do on crossing, and the IVA mention + retenção line on every PT client recibo
cron: "0 9 5 * *"
timezone: Europe/Lisbon
applies_if: IVA regime isento art. 53.º (profile.md)
---

> **Last verified:** 2026-10-02

You are watching the IVA exemption of a freelancer in Portugal. Read `profile.md` first. If their IVA regime is **normal** (trimestral or mensal), this routine is **not applicable** — say so and stop; `iva-quarterly` covers them. If the regime is `TODO`, check Portal → Situação Fiscal Integrada → Atividade Exercida with the user before going on. Rules: `playbooks/iva-regimes.md` (IVA), `playbooks/recibos-verdes.md` (retenção), `playbooks/key-figures.md` (every number below, with its year).

The exemption has two lines, and only one of them gives notice:

| PT-located turnover in the year | What happens | Source |
|---|---|---|
| ≤ €15,000 | Stay exempt | art. 53.º n.º 1 CIVA *(official source)* |
| > €15,000 and ≤ €18,750 | Exempt **for the rest of this year**; regime normal from **1 January** next year; declaração de alterações within **15 business days after 31 Dec** | art. 58.º n.º 2 a), 4 a), 5 a) CIVA *(official source)* |
| > €18,750 | Regime normal **from the invoice that crosses the line** — that invoice already carries IVA; declaração de alterações within **15 business days of its issue date** | art. 58.º n.º 2 b), 4 b), 5 b) CIVA; Ofício Circulado 25062/2025 ponto 20 b), Exemplo 6 *(official source)* |

Figures are 2025 and 2026 values. Check `key-figures.md` for the current year before using them.

## Step 0 — Which year

| Run | Years to check |
|---|---|
| 5 January | **Closing check on the previous year** (did it end above €15,000?), then the new year, which is near zero |
| Any other month | The current year, recibos issued 1 Jan → today |

State the year you concluded before anything else. `[Y]` below = that year.

## Step 1 — Build the year's list

Open every PDF in `records/[Y]/income/recibos-verdes/<client>/` and read the *data de emissão* inside it. Filenames can carry the service date. Cross-check the count and total against **Faturas e Recibos Verdes → Consultar** (or the SIRE export). The portal list wins if they differ. A recibo missing from `records/` is a filing gap, not a missing sale.

- **Count faturas and faturas-recibo only.** A *Recibo* that settles an earlier fatura is the same sale again. Summing it double-counts. *(official source: art. 115.º CIRS document types — see `recibos-verdes.md`)*
- **Skip annulled documents** and confirm every gap in the numbering (GOTCHAS 12).
- **Count by data de emissão,** net of IVA. An invoice issued late still belongs to the date it was legally due. The legal deadline is the 5th business day after the service (art. 36.º CIVA), and Ofício 25062/2025 Exemplo 6 assumes the crossing invoice was issued "dentro do prazo legal". Holding invoices back doesn't move the crossing date. *(unverified — inference from art. 7.º/36.º CIVA)*

## Step 2 — Split PT-located from non-PT-located

Only operations located in Portugal under art. 6.º CIVA count toward the €15,000 / €18,750. *(official source: art. 53.º n.º 1 CIVA; Ofício Circulado 25062/2025 pontos 4–6)* Classify each line by the client's Type in `profile.md` → Clients, using the table in `iva-regimes.md`:

| Client | Counts toward €15,000? | Mention on the recibo while exempt |
|---|---|---|
| PT company, PT freelancer, PT individual | **Yes** | "IVA – regime de isenção" · **M10** |
| EU individual (B2C, general rule) | **Yes** — located in PT under art. 6.º n.º 6 b) | M10 |
| EU business (valid VIES number) | No — art. 6.º n.º 6 a) | "IVA – autoliquidação" · **M40** |
| Non-EU business | No | M40 *(see the M40/M99 gotcha in `iva-regimes.md`)* |
| Non-EU individual, art. 6.º n.º 8 services (consultancy, IT, advertising…) | No | M44 per `iva-regimes.md` *(unverified for art. 53.º issuers)* |

*(official source for the M10/M40 split: OCC Guia art. 53.º Q19–Q20, cited in `iva-regimes.md`)*

Also outside the count: sales of capital goods, and turnover from art. 9.º-exempt activities (health, education…) when you also run a taxable one. *(official source: Ofício Circulado 25062/2025 pontos 6–7)* A foreign client counts as a business (not PT-located) when you hold evidence of business status: for EU clients a VIES-valid VAT number; for non-EU clients a tax ID or company registration (e.g. a US EIN) recorded in `profile.md`. Non-EU businesses have no VAT number and aren't in VIES. Only an EU client that fails VIES, or a client with no evidence of business status at all, is B2C — treat it as PT-located and ask the user.

## Step 3 — Position, headroom, projection

Compute and show:

1. **PT-located YTD** (exact EUR) and the non-PT-located total beside it, so the user sees why their total billing doesn't matter here.
2. **Headroom to €18,750** = 18,750 − PT-located YTD. **This is the largest next PT invoice that can still go out without IVA.** An invoice bigger than the headroom is the crossing invoice and must carry IVA.
3. **Run-rate projection** = PT-located YTD ÷ months elapsed × 12. Skip it for the new year on the January run. In an interactive run, ask for PT invoices already agreed before 31 Dec and add them. In a headless run, use the run-rate and say so.

Then flag the band:

| PT-located YTD (or projection) | Status | Tell the user |
|---|---|---|
| < €10,500 (70%) | OK | Headroom only |
| ≥ €10,500 | **Watch** | Projection. Which PT clients drive it |
| ≥ €13,500 (90%) | **Plan** | Will the year end above €15,000? If so, January means an alteração, IVA on PT invoices, and quarterly returns. Price the next contracts with IVA on top. Big pending PT invoice vs the headroom. From here on, re-check the headroom before **every** PT invoice — this monthly run can't catch a crossing in time |
| Projection > €15,000, PT-located YTD ≤ €15,000 | **Plan — year-end exit likely** | As Plan; Step 4A will apply on the 5 January run |
| PT-located YTD > €15,000 | **Crossed (year-end exit)** | Step 4A. Keep invoicing with M10 until 31 Dec |
| Next PT invoice > headroom | **Crossing now** | Step 4B **before** that invoice is issued |
| > €18,750 already | **Exited** | Step 4B, and check whether IVA was charged on the crossing invoice |

## Step 4 — On crossing: what to do, by when

### 4A — Year ended above €15,000 (found on the 5 January run)

1. **Declaração de alterações** by the 15th business day after 31 Dec: **22 January** for 2025 → 2026 *(official source: Ofício 25062/2025 Exemplo 5)* and **22 January 2027** for 2026 → 2027 *(derived: 1 Jan is a holiday, weekends excluded)*. Path: Portal → **Atividade → Submeter Declarações → Declaração de Alterações** *(verified in practice)*. Change the IVA framework from isenção art. 53.º to **regime normal, periodicidade trimestral** (the default under €650,000, art. 41.º CIVA). Enter the previous year's actual PT-located turnover in the volume de negócios field. *(OCC Guia Q29; field and quadro labels unverified)*
2. **From 1 January, every invoice charges IVA** where IVA is due, including any issued between 1 January and the date you file the alteração. *(official source: Ofício 25062/2025 Exemplo 5)*
3. Go to the shared exit checklist (4C).

### 4B — Current year goes above €18,750

1. **Before issuing the crossing invoice:** issue it with IVA. For a PT client that means the rate where the operation is located (Continent 23%), not M10. IVA is due on that whole invoice, and regime normal applies from its date, inclusive. *(official source: Ofício 25062/2025 Exemplo 6; AT, Sept 2025)*
2. **Declaração de alterações** within **15 business days of that invoice's issue date.** Count weekdays and leave out PT public holidays. AT's examples: issued 02/10/2025 → by 23/10/2025; issued 19/09/2025 → by 10/10/2025. Same path as 4A. Declare the PT-located turnover up to and including the crossing invoice. *(official source: art. 58.º n.º 5 b) CIVA; Ofício 25062/2025 Exemplo 6)* If the IVA option in the alteração form won't let you make the change, open an e-balcão ticket before the deadline and keep its number. *(unverified — users reported the option was missing in 2025)*
3. **If the crossing invoice already went out without IVA:** stop issuing, tell the user plainly, and plan to annul and re-issue it with IVA (`recibos-verdes.md` § Annulling — client agreement unverified). File the alteração anyway. Late is far cheaper than not at all (`playbooks/at-communication.md` § Late-filing coimas).
4. Go to the shared exit checklist (4C).

### 4C — Exit checklist (both cases)

| What | By when | Source |
|---|---|---|
| Comprovativo of the alteração → `records/_reference/activity/YYYY-MM-DD_declaracao-alteracoes.pdf`. Then confirm the new regime and start date in Situação Fiscal Integrada → Atividade Exercida | same day | *(verified in practice — portal path)* |
| Update `profile.md`: IVA regime = normal trimestral, IVA regime since = the date AT shows. Update every client's "IVA mention" column from the `iva-regimes.md` table: PT clients get IVA charged; EU businesses keep **M40** and now go in campo 7 **and** the recapitulativa; non-EU businesses keep M40, campo 8 | same day | `iva-regimes.md` *(official source)* |
| **Caixa postal eletrónica:** join Portal das Finanças notifications or ViaCTT | **30 days** after entering regime normal | art. 19.º n.º 12, 14 LGT *(official source — `start-activity.md`)* |
| Your own `PT`+NIF valid in VIES, if you have EU business clients | before the next EU invoice | *(unverified mechanism — `iva-regimes.md`)* |
| **First declaração periódica:** the quarter containing the change date, due the 20th of the 2nd month after it, payment by the 25th. Turn on `iva-quarterly`, and `iva-recapitulativa` if you have EU business clients | per `calendar.md` rows 4–6 | art. 41.º CIVA *(official source)*; whether the first return holds only operations from the change date — *(unverified; confirm with the portal or a contabilista)* |
| Input IVA on business purchases is deductible from the change date. Classify e-fatura from then on (`portals/e-fatura.md`) | before the first return | art. 19.º–20.º CIVA *(official source)*; transition detail *(unverified)* |
| Retenção base excludes IVA from now on | next PT company recibo | art. 101.º n.º 4 CIRS *(official source)* |

Coming back to art. 53.º later is possible only through a **January** declaração de alterações, effective 1 January, once a calendar year ends at ≤ €15,000. *(official source: Ofício 25062/2025 pontos 15–17)*

## Step 5 — Check every PT client recibo this year

For each fatura / fatura-recibo / recibo to a PT client, read the PDF and check two lines.

**IVA line.** Before crossing: 0% with **M10** "IVA – regime de isenção". From the crossing invoice onward: IVA charged at the right rate. A PT recibo marked M40, or a foreign B2B recibo marked M10, is wrong both ways: it puts the sale in the wrong bucket of the €15,000 count. Flag it.

**IRS line (retenção na fonte).** Withholding is applied on the **payment** document, so check the fatura-recibo or the recibo, not a fatura. *(official source: art. 101.º n.º 8 CIRS)*

| Client | Correct IRS line | Source |
|---|---|---|
| PT company, or PT freelancer with contabilidade organizada | **23%** on 100% of the base for art. 151.º table activities (2025, 2026). Use 11.5% for other Cat. B services and 20% under IFICI. Check `profile.md` → Código CIRS art. 151.º. **Or** the dispensa, only if you qualify (below) | art. 101.º n.º 1, 4 CIRS *(official source)* |
| PT individual, or PT freelancer in regime simplificado | No withholding obligation for the client. Portal option "Sem retenção – Art. 101.º, n.º 1 do CIRS". Don't use the dispensa here | art. 101.º n.º 1 CIRS *(official source)*; option label *(unverified — Royaltax, Reddit)* |
| Foreign client (any) | "Sem retenção – Não residente sem estabelecimento" | *(verified in practice — `recibos-verdes.md`)* |

**Dispensa (art. 101.º-B n.º 1 a)) — test it on its own terms:** *(official source: art. 101.º-B CIRS, text read 2026-10-02)*

- It counts **all Categoria B income, foreign clients included.** It is not the PT-located IVA figure. An art. 53.º freelancer billing €30,000 abroad and €8,000 in Portugal is IVA-exempt but **cannot** claim the dispensa. Their PT company clients must withhold 23%.
- Available only if you **expect** Cat. B income for the year **< €15,000** and **last year's** was also < €15,000.
- It **ends from the month after** the month the year's Cat. B income reaches €15,000. Every PT company recibo from then on must carry withholding. Whether "reached" means invoiced or received isn't settled in the text. Use the earlier of the two. *(unverified)*
- It must be claimed on the recibo: portal option "Dispensa de retenção – art. 101.º-B, n.º 1, al. a) e b), do CIRS" (the law's wording: "Sem retenção, nos termos do n.º 1 do artigo 101.º-B do Código do IRS"). *(option label unverified — Santander, Vendus, Doutor Finanças agree)*
- **Under €25:** no withholding when the withholding itself would be < €25, i.e. a base ≤ €108.69 at 23% (≤ €217.39 at 11.5%). This one is automatic, not optional. *(official source: art. 101.º-B n.º 1 d), n.º 2 CIRS; euro values computed)*

**Who does what:**

```
You (freelancer)                         PT client with contabilidade organizada
────────────────                         ───────────────────────────────────────
issue the recibo with the right          withholds at payment, pays you the net
IRS line (rate or dispensa)              ↓
check the net amount received            pays the withheld IRS to AT by the 20th
  = base − withholding                     of the next month
claim the withholding in Modelo 3        gives you a yearly statement by 20 Jan
  (Anexo B); match it to the client's    reports it to AT (Modelo 10)
  20 Jan statement
```

*(Sources: art. 101.º n.º 1, 8 CIRS — official; 20 Jan statement — Agenda Fiscal 2026, official; pay-by-the-20th and Modelo 10 — Cegid, Multigestão (unverified))* If a recibo's IRS line is wrong, it can't be edited. Annul and re-issue before the client pays if you can (`recibos-verdes.md` § Annulling).

## Step 6 — Entidade contratante share

For each PT **business** client, compute its share of the year's total TI income (all clients). If one client is above **50%**, it may become your *entidade contratante* and pay SS **7%** of what it paid you, or **10%** above 80%. That is the client's cost, not yours. You list it in Anexo SS quadro 6 at IRS time, and only if you were subject to SS contributions and earned ≥ 6 × IAS. Conditions and sources: `playbooks/social-security.md` § Entidade contratante. Report the share. Suggest telling a client that's heading past 50% before the year closes, so the charge doesn't surprise them.

## Step 7 — Record and report

Add a row to the status table in `records/[Y]/README.md`: `| iva-threshold-watch YYYY-MM-DD | [Y] YTD | — | PT-located €… · headroom €… · projection €… · band | — |`. `monthly-close` reads the headroom from it. Never describe an alteração as filed until its comprovativo is saved.

Report as one compact table: item · figure · status · next action, with deadline and estimated time:

- PT-located YTD / non-PT-located YTD
- Headroom to €18,750 and the projection's band
- Any action from Step 4, with its date
- Recibos with a wrong IVA mention or IRS line, by number
- Dispensa still available? (yes / no / ends from <month>)
- Entidade contratante shares above 50%
- Services bought from suppliers outside Portugal this month without VAT charged (software, hosting, ads)? They may need a declaração periódica even under art. 53.º — `routines/iva-quarterly.md` intro
