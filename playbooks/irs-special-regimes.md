# IRS special regimes: IRS Jovem, IFICI, legacy NHR

> **Applies to:** Cat. A/B earners who are young (≤ 35), newly resident, or hold an NHR/IFICI registration
> **Last verified:** 2026-10-02

Three regimes can cut IRS on work income: **IRS Jovem** (art. 12.º-B CIRS, partial exemption for the first 10 income years up to age 35), **IFICI** (art. 58.º-A EBF, the "NHR 2.0" 20% flat rate for specific activities), and the **legacy NHR** (closed to new entrants after the 2024 transition). They don't stack. The trap: an NHR or IFICI registration sitting in your cadastro blocks IRS Jovem even if you never used it, until you formally cancel it — and if you ever *used* NHR, IRS Jovem is gone for good.

## Rules

### IRS Jovem (art. 12.º-B CIRS, redação Lei 45-A/2024, from 2025 income) *(official source)*

- **Who:** taxpayers **up to 35 years old**, not a dependant, with Cat. A or Cat. B income. Age is measured on **31 December** of the income year. No longer tied to education level or to the first job.
- **Window:** the first **10 years of obtaining income**. Counted from the first year with Cat. A/B income as a non-dependant, even if before 2025 *(official source: AT/Government brochure IRS Jovem 2025)*. Years without Cat. A/B income don't consume the window; it resumes when income returns, never past age 35.
- **Exemption per income year:** year 1 **100%** · years 2–4 **75%** · years 5–7 **50%** · years 8–10 **25%**.
- **Cap:** exemption applies to income up to **55 × IAS** — **€28,737.50 (2025)**, **€29,542.15 (2026)**. *(official source for 55 × IAS; 2026 euro figure confirmed by press — see gotcha on a conflicting oe.gov.pt figure)*
- **Exempt income is still englobado** to set your rate on the rest (art. 22.º n.º 4).
- **Claim:** opt in the annual Modelo 3 every year. IRS Automático offers it when eligible. Manual filing: Cat. B → **Anexo B quadro 3, secção E.1**, campo 18 "Sim" (19 "Não") + the income-year number 1–10; Cat. A → Anexo A quadros 4A and 4F1. *(official source: oe.gov.pt "Como funciona o IRS Jovem"; campo numbers verified in practice)*
- **Excluded (n.º 9):** anyone who **benefits or has benefited** from NHR; who benefits or has benefited from **IFICI**; who opted for the ex-residents regime (art. 12.º-A); whose tax situation isn't regularised (debts without a payment plan).

### IFICI — incentivo fiscal à investigação científica e inovação (art. 58.º-A EBF) *(official source)*

- **Who:** becomes tax-resident, wasn't resident in any of the **5 previous years**, and works in one of:
  - a) higher-education teaching / scientific research (registration via **FCT**);
  - b) qualified jobs under contractual investment benefits (**AICEP**);
  - c) **highly qualified professions** (Anexo I of Portaria 352/2024/1) carried out **in** companies that either benefit from RFAI or are industrial/service companies with a listed CAE that export ≥ 50% of turnover (registration via **AT**);
  - d) qualified jobs in entities recognised by AICEP/IAPMEI;
  - e) R&D staff eligible under SIFIDE (**ANI**);
  - f) jobs or board roles in **certified startups** (Lei 21/2023; **Startup Portugal**);
  - g) Açores/Madeira regional rules.
- **Benefit:** **20%** flat IRS on net Cat. A and Cat. B income from the qualifying activity, for **10 consecutive years** from the year of becoming resident (englobamento optional). Cat. B withholding for IFICI beneficiaries: **20%** (art. 101.º n.º 1 d) CIRS).
- **Registration deadline:** **15 January of the year after** you become resident (Portaria 352/2024/1 art. 2.º n.º 1). Late registration → applies from the registration year for the remaining years only (n.º 7). Changes (new employer, end of activity) → report by 15 January of the following year (Portaria art. 5.º).
- **Continuity:** a new qualifying activity starting within **6 months** of the previous one keeps the benefit (n.º 4). Years lost to non-residence can be resumed within the 10-year window (n.º 5).
- **Excluded:** anyone who benefits or has benefited from **NHR**, or opted for art. 12.º-A. Usable **once** per person (n.º 10, 12).
- **Status:** AT shows the registration status by 31 March each year in your Portal area. *(official source: Portaria 352/2024/1 art. 6.º n.º 3)*
- **Freelancer reality check:** alínea c) requires the profession to be exercised **in** a qualifying company, which the company confirms in its own Portal area (by 15 March, per Portaria art. 4.º). A freelancer with a spread of ordinary clients usually doesn't fit c); f) needs a certified-startup relationship. *(official source for the requirement; confirmation date unverified — Taxbordr)*
- **Minimum qualification** for alínea c) professions: Portaria 352/2024/1 art. 7.º n.º 2 (reportedly EQF level 6 + 3 years' experience, or level 8). *(unverified — read the Portaria)*

### Legacy NHR — residente não habitual *(official source: Lei 82/2023 art. 236.º; PIV 30640)*

- Revoked from 1 January 2024. Kept, for the remainder of their 10 years, by people already registered, people resident by 31 Dec 2023, and transitional cases resident by **31 Dec 2024** holding one of the listed pre-2024 elements (work contract/promise by 31 Dec 2023; lease, purchase promise or school enrolment by 10 Oct 2023; residence visa/permit valid by 31 Dec 2023, or a visa/permit procedure started by then).
- Registration was due by **31 March** of the year after becoming resident; late registration only works from the registration year for the remaining period.
- No new window exists. If you're outside it, IFICI is the only successor.

### The incompatibility trap — and the way out

- An **active NHR or IFICI registration in cadastro** makes the IRS Jovem option fail validation, even if you never claimed the benefit. Error code **BB3** *(verified in practice)* — "REGISTADO EM CADASTRO COMO RESIDENTE NÃO HABITUAL OU INSCRITO IFICI". *(unverified — error text reported by users; not found on an official page)*
- **Never used the NHR (no Anexo L ever filed with it):** you may renounce it by asking the **Direção de Serviços de Registo de Contribuintes** to cancel the registration. Once granted, IRS Jovem is available if the other conditions hold. Not filing Anexo L is **not** a renunciation. Basis: renunciation is allowed for benefits that depend on request (art. 14.º n.º 8 EBF). *(official source: PIV 30640, despacho 2026-07-01; same line in earlier 2025–2026 PIVs reported by ECO/Renascença)*
- **AT's position is that cancellation is required**, not optional: you can't keep the NHR "in reserve" and use IRS Jovem in between — the law bars cumulating the two "in the same year or in different years". *(official source: PIV 30640 pontos 11–14)*
- **Already used the NHR** (e.g. an Anexo L applying the exemption method in any year): IRS Jovem is barred permanently. *(official source: PIV 30211, despacho 2026-04-29)*
- **IFICI registration:** the law text is the same ("beneficiem ou tenham beneficiado"), so the same cancel-before-claiming logic very likely applies, but no PIV for IFICI was found. *(unverified)*

## How to do it

1. **Check your cadastro:** Portal → Os Seus Dados → Residente Não Habitual → Consultar Pedido (NHR); the IFICI status appears in your Portal area from 31 March. *(verified in practice for NHR path — see `../portals/portal-financas.md`)*
2. **Register for IFICI:** Portal → search "IFICI" → Inscrição no IFICI → Entregar Pedido — before **15 January** of the year after arrival. Other entities (FCT, AICEP, ANI, Startup Portugal) handle alíneas a), b), d), e), f). *(unverified menu labels — Startup Portugal guide)*
3. **Cancel an unused NHR to unlock IRS Jovem:** e-balcão → Registo Contribuinte → Identificação → Residente Não Habitual (routes to DSRC) → ask to cancel the NHR registration, stating you never benefited from it. Wait for the **deferimento** before filing the IRS Jovem option. *(official source for DSRC; e-balcão routing verified in practice)*
4. **Claim IRS Jovem:** Modelo 3 → Anexo B Q3 E.1 campo 18 + income-year number (and Anexo A 4A/4F1 if you also have salary).
5. **Keep proof** of the cancellation decision with the year's IRS file.

## Gotchas

- **"I never used NHR, so I'm eligible."** Not until the registration is cancelled — the validation blocks you and AT requires the formal cancellation.
- **Cancelling an NHR you did use won't help.** One Anexo L with the benefit applied = IRS Jovem closed permanently.
- **Missing 15 January for IFICI** doesn't lose IFICI entirely, but every year before the registration year is lost.
- **Cap conflict:** oe.gov.pt ("Finanças à lupa") states €29,377.15 for 2026; 55 × IAS 2026 (€537.13) = **€29,542.15**, which press reports also give. The legal formula wins.
- **IRS Jovem is an annual choice.** Forgetting to tick it in a manual declaration forfeits that year; a substituição within the deadline can fix it.
- **"Income year" ≠ calendar age.** The 10-year count is years with Cat. A/B income, so a gap year doesn't burn a year.

## Sources

- CIRS art. 12.º-B: https://info.portaldasfinancas.gov.pt/pt/informacao_fiscal/codigos_tributarios/cirs_rep/Pages/irs12b.aspx
- EBF art. 58.º-A: https://info.portaldasfinancas.gov.pt/pt/informacao_fiscal/codigos_tributarios/bf_rep/Pages/EBF58A.aspx
- Portaria 352/2024/1: https://diariodarepublica.pt/dr/detalhe/portaria/352-2024-901014291
- CIRS art. 101.º (20% IFICI withholding; Lei 82/2023 art. 236.º transitional NHR text): https://info.portaldasfinancas.gov.pt/pt/informacao_fiscal/codigos_tributarios/cirs_rep/Pages/irs101.aspx
- PIV 30640 (NHR cancellation unlocks IRS Jovem): https://info.portaldasfinancas.gov.pt/pt/informacao_fiscal/informacoes_vinculativas/rendimento/cirs/Documents/PIV_30640.pdf
- PIV 30211 (used NHR → IRS Jovem barred): https://info.portaldasfinancas.gov.pt/pt/informacao_fiscal/informacoes_vinculativas/rendimento/cirs/Documents/PIV_30211.pdf
- oe.gov.pt — Como funciona o IRS Jovem: https://www.oe.gov.pt/financas-a-lupa/artigos/como-funciona-o-irs-jovem
- Portaria 480-A/2025/1 (IAS 2026): https://diariodarepublica.pt/dr/detalhe/portaria/480-a-2025-993056222
- Secondary: ECO (10 Mar 2026) and Renascença (17 Mar 2026) on AT's NHR-cancellation PIVs; Taxbordr and Startup Portugal on IFICI procedure
