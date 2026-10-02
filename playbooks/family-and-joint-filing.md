# Family: joint or separate filing, união de facto, dependents

> **Applies to:** a married or unido de facto freelancer resident in Portugal, with or without dependents; households where one partner is a freelancer and the other an employee
> **Last verified:** 2026-10-02

Married couples and unidos de facto are taxed **separately by default**. Each year they may choose **tributação conjunta** instead: one return, both incomes added, the rate taken on half (the quociente conjugal), and the tax doubled. Which costs less depends on the gap between the two incomes, so simulate both every year. The household data AT uses comes from what you communicated on the Portal by the end of February. A stale agregado breaks the IRS automático and the dependents' deductions.

Annex mechanics: [`irs-modelo3.md`](irs-modelo3.md). Deductions table: [`irs-modelo3.md`](irs-modelo3.md#deductions-à-coleta-anexo-h--e-fatura). IRS Jovem / IFICI / NHR rules: [`irs-special-regimes.md`](irs-special-regimes.md).

## Rules

### Who is a household (agregado familiar)

- **Members:** spouses not judicially separated, or unidos de facto, plus their dependents. Single parents and their dependents form their own agregado. *(official source: art. 13.º n.º 4 CIRS)*
- **The situation on 31 December decides the whole year.** A marriage, birth or divorce in December counts for that year. *(official source: art. 13.º n.º 8 CIRS)*
- **Dependents** need their NIF on the return. They are: minor children, adopted children, stepchildren and wards; adult children up to **25** who earned no more in the year than one month's retribuição mínima mensal garantida; and children unable to work. *(official source: art. 13.º n.º 5 CIRS, art. 78.º n.º 6 a))*
- **Residence is assessed per person.** One spouse can be resident and the other not. *(official source: art. 16.º n.º 5 CIRS)* Joint filing is then unavailable. *(unverified — Doutor Finanças, simula.pt)*

### União de facto

- **Definition:** two people living together in conditions analogous to spouses for **more than 2 years**. *(official source: Lei 7/2001; AT FAQ faqs-00508)*
- **Proof for IRS:** the same domicílio fiscal for 2 years and during the tax year creates a presumption, and no other proof is needed. Without it, any legal means of proof works. *(official source: art. 14.º n.º 2 CIRS; AT FAQ faqs-00508)*
- **Couples who just moved to Portugal:** the 2 years can include time abroad. Prove the shared domicile in the other state(s) with documents. *(official source: art. 14.º n.º 3 CIRS)*
- **You have to invoke it.** Tick *unido de facto* (rosto Q4, campo 02) and communicate the agregado. A shared address alone files nothing. *(official source: AT FAQ faqs-00508)*

### Separate vs joint

| | Separate (default) | Joint (opção) |
|---|---|---|
| Returns | One each. Each declares own income + **50%** of dependents' income | One return with all household income |
| Who opts | — | **Both** must opt (rosto Q5A campo 01) and both authenticate. Valid for that year only |
| Rates | Each person's own rendimento coletável | Rate on RC ÷ 2, result × 2 (quociente conjugal) |
| Agregado-based deduction caps | **Halved** per spouse, with 50% of dependents' expenses each | Full cap for the household |
| Dependent deductions | Halved when the same dependent is in two returns | Full |
| Liability | Each for own tax | Both for the household tax *(unverified — simula.pt)* |

*(official source: art. 13.º n.º 2–3, 59.º, 69.º, 78.º n.º 9 and n.º 14 CIRS; AT FAQ faqs-00508)*

- **When joint usually pays:** one partner earns much more than the other, or one earns little or nothing. The split pulls the high earner's income into lower escalões. Similar incomes gain little. *(unverified — DECO PROteste 2026; follows from art. 69.º)*
- **The global cap on deductions** (art. 78.º n.º 7) is per agregado, applied after the ÷ 2 in joint filing. *(official source)*
- **Exempt income is still counted for the rate.** IRS Jovem income is added in before the quociente, then the ÷ 2 share is spread across the escalões (art. 22.º n.º 7). Joint filing can therefore dilute one spouse's IRS Jovem benefit. Simulate. *(official source for the mechanism; the dilution effect — FiscalPT, unverified)*

### Dependent deductions (art. 78.º-A CIRS) *(official source)*

| Item | Amount |
|---|---|
| Per dependent | €600 |
| Dependent aged ≤ 3 on 31 Dec | +€126 |
| 2nd and later dependents aged ≤ 6 on 31 Dec | +€300 (not cumulative with the +€126) |
| Shared custody with residência alternada | €300 to each parent (+€63 / +€150 on the above) |
| Ascendant living with you, income ≤ minimum pension | €525 (+€110 if only one) |

- The same dependent in two returns (separate filing, or shared custody) → each gets **half** (art. 78.º n.º 9). A non-equal split fixed in the custody agreement applies only if both parents communicate the percentages by the end of February. Otherwise it's 50/50 (n.º 10–12).

### Special regimes are per person

- **IRS Jovem** is decided per sujeito passivo. A spouse's NHR/IFICI history doesn't block your own claim. *(official source: art. 12.º-B n.º 1, 9 "sujeito passivo"; spouse reading unverified)*
- **IFICI / NHR** registration is individual. In a joint return each beneficiary files their own **Anexo L**. *(unverified — Doutor Finanças)* The 20% flat rate can make separate filing cheaper. Simulate both. *(unverified — FiscalPT)*

### Updating the agregado

- **Deadline:** end of February after the tax year: **2 March 2026** (for 2025) and **1 March 2027** (for 2026, derived). That covers composition, residência alternada and non-equal expense splits. *(official source: art. 22.º n.º 9, 78.º n.º 11 CIRS as amended by DL 49/2025; some AT FAQ text still says 15 February — the law moved it)*
- **All members authenticate** with their own Portal credentials. *(official source: AT FAQ faqs-00508)*
- **Missed it?** AT assumes nothing changed from last year's return. Reject the IRS automático and file a manual Modelo 3 with the correct agregado. *(unverified — DECO PROteste 2026)*

### One freelancer + one employee

- **Joint:** one return with Anexo A (employee spouse), Anexo B and Anexo SS (freelancer, as titular). The employee's withholding and the freelancer's balance net out in one liquidação.
- **PPC** comes from the household coleta × Cat. B share (RLB/RLT). In a joint return RLT includes the spouse's salary. *(official source: art. 102.º n.º 2 CIRS)*
- **Start-of-activity coefficient cut:** the law requires that "o sujeito passivo" earns no Cat. A or H income, and in a joint return both spouses are sujeitos passivos (art. 13.º n.º 3). Whether a spouse's salary kills the freelancer's 50%/25% cut in a joint return is **not settled** in anything found. Simulate joint and separate, and compare the Cat. B line. *(unverified)*
- **IRS automático:** if only one spouse is covered, joint filing is only possible by rejecting the automático and filing manually. *(unverified — DECO PROteste 2026)*

## How to do it

1. **By the end of February:** Portal → Serviços → IRS → Dados pessoais relevantes para declaração de IRS → Dados agregado IRS → **Comunicar agregado familiar**. Each member confirms with their own login. *(official source: AT FAQ faqs-00063)*
2. **From 1 April, simulate three ways:** (a) joint return; (b) spouse A alone; (c) spouse B alone. In the Modelo 3 form, toggle rosto **Q5A** campo 01 (joint) / 02 (separate, with the other spouse's NIF) and press **Simular** each time. Add (b) + (c) and compare with (a). *(unverified in practice; the quadro is official — Modelo 3 instructions)*
3. **Joint:** one spouse submits. The form asks for the other spouse's authentication before submission. *(unverified — practitioner video; AT FAQ confirms both must authenticate)*
4. **Separate:** both returns must list the **same agregado** in Q6, each with 50% of dependents' income. *(official source: AT FAQ faqs-00508)*
5. Keep both simulations as PDFs in `records/[Y]/irs/`.

## Gotchas

- **The choice resets every year.** Last year's joint return doesn't carry over.
- **Separate returns that disagree on the agregado** fail validation or lose dependent deductions. Fill Q6 identically.
- **A couple who just arrived assumes they can't file as unidos de facto.** Time living together abroad counts with documentary proof (art. 14.º n.º 3).
- **A December wedding or birth changes the whole year.** Communicate it by the end of February.
- **Joint filing ties you to your partner's tax debt.** A partner with unpaid IRS or a contested liquidação is a reason to simulate separate even when joint is slightly cheaper. *(unverified — liability rule per simula.pt)*
- **Comparing joint against only one partner's separate result.** Add both separate returns before comparing.

## Sources

- CIRS art. 13.º, 14.º, 16.º, 22.º, 59.º, 69.º, 78.º, 78.º-A, 102.º: https://info.portaldasfinancas.gov.pt/pt/informacao_fiscal/codigos_tributarios/cirs_rep/Pages/irs59.aspx (change the number in the URL)
- AT FAQ — União de facto (faqs-00508): https://info.portaldasfinancas.gov.pt/pt/apoio_contribuinte/questoes_frequentes/pages/faqs-00508.aspx
- AT FAQ — Agregado familiar (faqs-00063): http://info.portaldasfinancas.gov.pt/pt/apoio_contribuinte/questoes_frequentes/pages/faqs-00063.aspx
- Modelo 3 instructions (rosto Q4, Q5A, Q6): https://files.diariodarepublica.pt/1s/2024/02/02401/0000200199.pdf
- Lei 7/2001 (união de facto): search "Lei 7/2001" on https://diariodarepublica.pt
- Secondary: DECO PROteste "IRS em conjunto ou em separado em 2026"; simula.pt simulador conjunto/separado (Jun 2026); FiscalPT; Doutor Finanças (Anexo L, non-resident spouse)
