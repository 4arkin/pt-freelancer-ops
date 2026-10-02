---
name: first-year
description: One-time events of the first ~24 months after início de atividade or arrival — SS exemption ending, IFICI deadline, IRS Jovem count, first Modelo 3, first PPCs, permit renewal — shows only what is due in the next 60 days or overdue
cron: "0 9 1 * *"
timezone: Europe/Lisbon
applies_if: início de atividade (or becoming PT tax resident) was less than ~24 months ago — the routine tells you when to remove it
---

> **Last verified:** 2026-10-02

You are walking a new freelancer in Portugal through the events that happen **once**, on dates set by when they started. The recurring routines can't catch these: each one fires a single time, months after the start, with no reminder from AT, SS or AIMA. Read `profile.md` first. Background: `playbooks/start-activity.md`, `playbooks/social-security.md`, `playbooks/irs-special-regimes.md`, `playbooks/regime-simplificado.md`, `playbooks/irs-modelo3.md`, `playbooks/residency-aima.md`.

Surface only what is **overdue** or due in the **next 60 days** (120 for the residence permit). The full timeline exists so you can filter it, not so you can print it.

## Step 0 — Anchor dates

Read from `profile.md`. If a field is `TODO` or missing, ask for it; don't guess. Check `records/_reference/activity/` for the início comprovativo before asking.

| Symbol | Meaning | Where it comes from |
|---|---|---|
| `S` | Início de atividade | profile → Activity → Início de atividade (AT: Situação Fiscal Integrada → Atividade Exercida) |
| `N` | Year of `S` | — |
| `R` | Date you became PT tax resident (fiscal address moved to PT, or first day of stay under art. 16.º CIRS) | profile → Identity. If absent, ask. Portuguese nationals resident before `S`: `R` = not applicable |
| `E` | SS enquadramento: **1st day of the 12th month after the month of `S`** (start 10 Mar 2026 → `E` = 1 Mar 2027) | ISS FAQ v09 Q1. Overridden if profile → SS says you opted in early, restarted after a cessação, or are exempt as employed |
| `M` | Months since the anchor — the later of `S` and `R` (`S` alone when `R` is not applicable) | today − anchor |
| `End` | The later of **31 July of `N+2`** and **anchor + 24 months** | — |

Today's date decides everything. A catch-up run may fire late, so compute; don't assume.

State `S`, `R`, `E`, `M` and `End` in one line before anything else.

## Step 1 — Does this still apply?

If today is after `End`: report **"first-year routine no longer applies — remove this schedule"** and stop. Before stopping, check that the recurring routines it handed off to are scheduled (Step 4). One exception: if profile → Residency shows a residence-title expiry within 120 days or already past, report that one item, then the stop line. Later expiries are watched by `routines/monthly-close.md` § 6.

## Step 2 — Build the timeline, then filter

Work out each date below from the anchors. Keep an item only if (a) its date has passed and `records/` or `profile.md` shows no evidence it was done, or (b) its date falls within the next 60 days. A missing file means "check the portal", not "not done" (AGENTS.md hard rule 5) — mark it *unconfirmed* and say where to look.

Setup items (A) have no fixed date. Show each one while it is not done.

### A. Setup — until done

| Item | Done when | How |
|---|---|---|
| **Chave Móvel Digital** | profile says active | Without a Portuguese Cartão de Cidadão, activation is **in person** (Espaço Cidadão / Loja do Cidadão) with passport or residence title + NIF. It is the login for SSD, the Portal and AIMA's renewal portal. → `start-activity.md` § Portal access |
| **Segurança Social Direta login** | user confirms they can log in | seg-social.pt → Segurança Social Direta → Efetuar Registo → NISS. Needed before `E`. |
| **Electronic notifications** | profile → Electronic notifications filled | **Mandatory within 30 days** of `S` (or of entering regime normal) if you are in **IVA regime normal**: ViaCTT, or Portal das Finanças notifications (art. 19.º n.º 12 e 14 LGT). Optional under art. 53.º, but AT enrols you ex officio if you don't comply. A Minha Área → Notificações e Citações → Gerir canais → Portal das Finanças → Ativar. Turn on the email/SMS alerts: notices count as received on day 5 whether opened or not. → `start-activity.md` § Electronic notifications |
| **Fiscal representative ends** | profile shows none, or fiscal address is PT | Once resident: change the fiscal address to PT **first** (no CC → e-balcão or in person with appointment), then end the representation in Portal → Serviços → Dados Cadastrais → Representante *(menu for ending it unverified — use e-balcão if not offered)*. The representative stops being required once the address is in PT or the EU/EEA (art. 19.º LGT). → `start-activity.md` § NIF and fiscal representative |
| **What AT recorded** | checked once | Situação Fiscal Integrada → Atividade Exercida: IRS regime, IVA regime and their dates. Compare with profile → Activity. A wrong regime is fixed by Declaração de Alterações within 15 days. |

### B. Segurança Social — the end of the 12-month exemption

| Date | Item | What to do |
|---|---|---|
| `E` − 60 days | Exemption ends on `E − 1 day` | Check SSD → Conta Corrente → Posição Atual and SSD messages for the enquadramento date SS actually applied. Authorise the **débito direto**: Pagamentos e dívidas → Valores a pagar à Segurança Social → Autorizar débito direto para pagamento de contribuições. → `social-security.md` |
| `E` | Contributions start | Until your first declaration takes effect, SS fixes the **€20 minimum** for each month *(unverified — APCMC summary of DL 2/2018; secondary guides agree)*. |
| 10th–20th of month `E+1` | **First payment** | The contribution for month `E`, paid 10th–20th of the next month. Amount from Posição Atual, never from memory. |
| Last day of the first Jan/Apr/Jul/Oct **after** `E`'s month | **First declaração trimestral** | It covers only the months from `E` onwards. Enquadramento 1 Mar 2027 → declare by 30 Apr 2027 for March only (ISS FAQ v09 Q17). If `E` is the 1st of Jan/Apr/Jul/Oct, the first declaration is three months later *(derived from Q17; confirm in SSD)*. Run `routines/ss-quarterly.md` for the delivery. |
| — | **If you opted in early** (profile → SS first-year exemption = antecipação) | Requested on a declaração trimestral in a declarative month; contributions start on the 1st of the following month (ISS FAQ v09 Q2). Replace `E` with that date and drop this exemption section. |

Restarted activity after a previous cessação: no new 12-month exemption once a first enquadramento has already taken effect (ISS FAQ v09 Q3). Employed with ≥ 1 IAS salary from a different employer: the acumulação exemption may apply instead — `social-security.md`.

### C. IVA — regime and EU clients

| Date | Item | What to do |
|---|---|---|
| within 15 days of the first EU business client | **Intra-EU operations / VIES** | Regime normal with an EU B2B client: Declaração de Alterações marking intra-community operations, then check your own `PT` + NIF shows valid on VIES. Without it, the client can't reverse-charge cleanly. `routines/iva-recapitulativa.md` applies from the first quarter with such a client. → `iva-regimes.md` § Before you reverse-charge *(the art. 53.º case is unverified — see that file)* |
| quarter after `S` | **First IVA returns** (regime normal only) | First declaração periódica: 20th of the 2nd month after the first quarter with activity — file it even with no operations. Recapitulativa a month earlier (two months for Q2) if EU B2B. Schedule `iva-quarterly` and `iva-recapitulativa`. |
| monthly in `N` | **Art. 53.º running total** | Only PT-located turnover counts. The invoice that takes the year above **€18,750** must already carry IVA; Declaração de Alterações within 15 business days. → `iva-regimes.md` |
| 15 business days after 31 Dec `N` | **First year-end test** (art. 53.º) | PT-located turnover in `N` (from `S` to 31 Dec) > €15,000 → regime normal from 1 Jan `N+1`; Declaração de Alterações by that date (art. 58.º CIVA). |

Art. 53.º requires **sede ou domicílio em território nacional** (art. 53.º n.º 1 CIVA, DL 35/2025). With a fiscal address outside the EU you can't be in art. 53.º at all (OCC Guia art. 53.º Q57, Q60), so check which regime AT recorded if you opened activity before moving your address to PT. Moving into art. 53.º later is only possible by a January Declaração de Alterações, effective 1 January, and not at all within 5 years of a renunciation (art. 55.º CIVA). Flag this if profile shows `R` after `S`.

### D. IRS — special regimes, first Modelo 3, first PPCs

| Date | Item | What to do |
|---|---|---|
| from 1 Nov of year(`R`) → **15 Jan of year(`R`)+1** | **IFICI registration deadline**, and the IRS Jovem decision behind it | The two don't stack, and the choice is effectively made here (art. 12.º-B n.º 9 CIRS; art. 58.º-A EBF). Registering for IFICI blocks IRS Jovem in validation (GOTCHAS #25). Once used, IFICI is used for good. IFICI fits a freelancer only through a qualifying company (al. c) or a certified startup (al. f) — most freelancers with ordinary clients don't qualify. Rough rule: aged ≤ 35 on 31 Dec with no qualifying IFICI activity → IRS Jovem, and **don't register IFICI "just in case"**. Qualifying and earning well above the IRS Jovem cap → compare with a contabilista. The user decides. Late IFICI registration counts only from the registration year. Legacy NHR is closed to anyone arriving now. **Deadline passed with no registration:** status *lapsed* — the IRS Jovem path stands; register late only with a qualifying IFICI activity. Check Os Seus Dados → Residente Não Habitual that nothing was registered for you (GOTCHAS #25). → `irs-special-regimes.md` |
| 1 Apr – 30 Jun of year(`R`)+1, only if year(`R`) < `N` | **Arrival-year Modelo 3** (income year year(`R`)) | Due if you had any income while resident from `R` to 31 Dec (foreign salary or freelance income, interest, dividends): rosto quadro 8 for the partial-year residence, Anexo J for that income and quadro 11 for foreign accounts. Window passed and nothing filed → status *overdue*; file now — `at-communication.md` § Late-filing coimas. That year may also be IRS Jovem year 1. → `irs-modelo3.md`, `irs-special-regimes.md` |
| by end of Feb `N+1` | **First e-fatura classification** | Classify the year's invoices and assign activity expenses (1 Mar 2027 for 2026 invoices: 28 Feb is a Sunday). `routines/efatura-year-end.md`. |
| 1 Apr – 30 Jun `N+1` | **First Modelo 3** (income year `N`) | Annexes: **B** (always while activity is open); **SS**, filed even in the exemption year with quadro 6 campo 02 = **Não** *(unverified — Doutor Finanças, SCO)*; **J** for any foreign bank account (quadro 11) — newcomers almost always have one; **H** only to correct deductions; **L** only with IFICI. If `R` falls in `N`, rosto quadro 8 states residence for the **period** of the year (art. 16.º CIRS: resident from the first day of stay). Income from the non-resident part of the year goes in a separate declaration *(two-declaration mechanics unverified — Doutor Finanças; OCC Essencial IRS 2026 confirms partial-year residence)*. `routines/irs-annual-prep.md` runs on 15 March. |
| same window, `N+1` and `N+2` | **Coefficient reduction** | For 0.75 / 0.35 / 0.10 income: cut 50% in `N` and 25% in `N+1` → 0.375, then 0.5625 (art. 31.º n.º 10 CIRS). Lost in any year with Cat. A or H income, and if you ceased an activity less than 5 years before `S` (n.º 11). AT applies it itself. Check the Cat. B line on each nota de liquidação. → `regime-simplificado.md` *(whether salary in one year also affects the other year is unsettled — see `playbooks/employed-and-freelance.md`)* |
| each Modelo 3 window while age ≤ 35 on 31 Dec | **IRS Jovem year number** | The first year with Cat. A/B income as a non-dependant is year 1, and years without such income don't count (art. 12.º-B n.º 3). Year 1 **100%** · 2–4 **75%** · 5–7 **50%** · 8–10 **25%**, capped at 55 × IAS (€29,542.15 for 2026 income). Age is measured on **31 December** of the income year (AT/Government brochure "IRS Jovem 2025"). Claim it every year: Anexo B Q3 E.1 campo 18 + the year number. Whether work income earned abroad before arrival counts toward the 10 years is *(unverified)* — ask AT via e-balcão if it changes the number. → `irs-special-regimes.md` |
| by 31 Jul `N+1` → payment by 31 Aug | **First nota de liquidação** | Pay by the date printed on the nota, or diarise the refund. Read the line *"Montante de cada pagamento por conta a efetuar durante o ano de `N+2`"* and copy it into profile → Standing amounts. |
| 20 Jul · 20 Sep · 20 Dec `N+2` (next business day on weekends) | **First pagamentos por conta** | They first appear in `N+2` because they come from the nota for year `N` (art. 102.º CIRS). None are due if each instalment would be under €50, which the start-year coefficient cut often causes. If the nota lists them, schedule `routines/irs-ppc.md`. |
| 1 Apr – 30 Jun `N+2` | **Second Modelo 3** (income year `N+1`) | Last year of the coefficient cut (25%). IRS Jovem year number +1 if you had Cat. A/B income in `N+1`. After this window and the first PPC, the routine ends. |

### E. Residency and proof documents

| Date | Item | What to do |
|---|---|---|
| `R` + 3 months | **EU/EEA/Swiss citizens: Certificado de Registo** | At the Câmara Municipal where you live *(the "within 30 days after 3 months" deadline is unverified — Lei 37/2006)*. → `residency-aima.md` |
| expiry − 120 days | **First residence-title renewal** (non-EU) | The art. 89.º AR is valid 2 years from issue, so the first renewal lands near the end of this routine. Watch AIMA's news for your expiry month's window on portal-renovacoes.aima.gov.pt — you can't apply before it opens. Clean up AT and SS debts first. → `residency-aima.md` § Renewal |
| expiry − 30 days, or when a bank/AIMA asks | **First certidões** | AT não-dívida + SS declaração de situação contributiva, pulled on the same day (both valid 4 months). → `certidoes.md` |
| once AT shows a PT fiscal address, then each January | **Certidão de residência fiscal** | For foreign clients, so they don't withhold tax at source. Send it before the first invoice of each year. US payers ask for their own form W-8BEN instead *(unverified — standard US payer practice)*. → `certidoes.md` |
| each Modelo 3 window, D7 / D8 holders | **Means of subsistence for the renewal** | AIMA reads the means test against your declared IRS income (D8 visa test: 4 × RMMG = €3,680/month in 2026). A D8 is defined as remote work for outside Portugal; how AIMA treats mostly-Portuguese income at renewal is *(unverified)*. Flag income well below the test, or mostly PT clients, early. → `residency-aima.md` |

## Step 3 — Report

One dated checklist, overdue first, then by date. Nothing outside the window.

```
First-year check — <today> · S <date> · R <date> · E <date> · month <M> of ~24 · ends <End>

| Date | Item | Status | Next action | Ref |
|---|---|---|---|---|
| 2027-01-15 | IFICI registration / IRS Jovem choice | decision pending | decide; if IFICI, Portal → search "IFICI" | irs-special-regimes.md |
| 2026-12-31 | Débito direto for SS | not done | SSD → Pagamentos e dívidas → Autorizar débito direto | social-security.md |
```

Status is one of: overdue · due · decision pending · lapsed (no action) · unconfirmed (check <portal>) · done. Each "Next action" is one click path or one question for the user. Write the same table to `records/_reference/first-year-status.md` (overwrite) so a headless run leaves something to open.

Never submit, pay, register or cancel anything on the user's behalf.

## Step 4 — Hand off to the recurring routines

When an item in Step 2 switches on a recurring obligation, tell the user to schedule that routine (see `routines/README.md`). Don't assume it's already running:

| From | Schedule |
|---|---|
| `E` − 30 days | `ss-payment`, `ss-quarterly` |
| first quarter in regime normal | `iva-quarterly`; plus `iva-recapitulativa` with EU B2B clients |
| always | `monthly-close`, `efatura-year-end`, `irs-annual-prep`, `irs-ppc` (its July run checks the nota and the IRS payment; the PPC steps apply once a nota lists them) |

Update `profile.md` whenever an item here changes a field: SS first-year exemption, Electronic notifications, Standing amounts, special regimes.
