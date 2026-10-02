# Employed and freelance at the same time (Categoria A + Categoria B)

> **Applies to:** a trabalhador por conta de outrem who also issues recibos verdes (regime simplificado), or someone moving between salary and freelance work
> **Last verified:** 2026-10-02

A salary and an open activity can coexist. Segurança Social usually exempts the freelance side while the salary is high enough and the freelance income is moderate. IRS taxes both together in one Modelo 3. The salary changes a few freelance rules: the start-of-activity coefficient cut, the pagamentos por conta share, and whether the Anexo B Q5 "Cat. A rules" option is worth anything. The traps sit at the transitions: leaving a job, going back to one, or invoicing your own employer.

General SS mechanics: [`social-security.md`](social-security.md). Coefficients and the 15% rule: [`regime-simplificado.md`](regime-simplificado.md). IRS Jovem: [`irs-special-regimes.md`](irs-special-regimes.md). 2026 figures: [`key-figures.md`](key-figures.md).

## Rules

### Segurança Social: the acumulação exemption

- **Exempt from TI contributions and from the declaração trimestral** when *all* of these hold *(official source: ISS FAQ "Novo regime dos TI" v09, Jan 2026, Q11, Q35; art. 157.º Código dos Regimes Contributivos)*:
  1. the employer and your freelance clients are **different entities**, with no domínio or group relationship between them;
  2. the employment enrols you compulsorily in a scheme that covers all the TI eventualities (Segurança Social or CGA);
  3. your **average monthly salary ≥ 1 × IAS = €537.13 (2026)**;
  4. your **average monthly rendimento relevante** from freelancing, measured each quarter, is **< 4 × IAS = €2,148.52 (2026)**.
- **What condition 4 means in invoices:** rendimento relevante is 70% of service income. €2,148.52 × 3 ÷ 0.70 = **€9,207.94 gross services per quarter (2026)**. Below that, nothing is owed. *(derived from ISS FAQ v09, Q35 and the 70% rule)*
- **Above the line you pay only on the remanescente**, and you must declare. SS: "só terá que comunicar os rendimentos … se o rendimento relevante mensal médio apurado trimestralmente for de montante superior a 4 vezes o valor do IAS". Example: €2,180 relevant/month − €2,148.52 = €31.48 base × 21.4% = €6.74. Amounts producing less than €5 are ignored (Despacho 599/2019). The ±25% variação isn't available on a remanescente. *(official source: ISS FAQ v09, Q13, Q28, Q44)*
- **Recognition is usually automatic**, from the employer's monthly salary declarations. If SSD still shows you as liable, request it with **Mod. RC 3001-DGSS** plus proof of salary. *(official source: ISS FAQ v09, Q12)*
- **Invoicing your own employer** (or a company in its group) takes those recibos out of the TI regime altogether. They don't go in the declaração trimestral. The employer covers them under the acumulação regime (arts. 129.º–131.º CRC), and the annual review strips them out of your TI income. Recibos to other clients are still declared as usual. *(official source: ISS FAQ v09, Q37–40)*
- **The first-year exemption still applies.** Opening activity while employed starts the same 12-month clock (see [`social-security.md`](social-security.md#enrolment-and-the-first-year-exemption)). The acumulação test matters only after the enquadramento.
- **Anexo SS:** filed with the Modelo 3 while activity is open. Exempt under art. 157.º CRC → answer **Não** (campo 2) in quadro 6. *(official source: Anexo SS instructions, Portaria 249/2021)*
- **Salary from a foreign employer:** condition 2 asks for cover "noutro regime de proteção social". Which state insures you is set by Reg. (EC) 883/2004 art. 13 (employed and self-employed in different states → the state where you are employed). Get SS's written position or an A1. Don't assume the exemption. *(official source for the regulation; how ISS applies it to a PT-resident remote employee: unverified)*

### IRS: one return, two annexes

| Item | Rule | Source |
|---|---|---|
| Annexes | **Anexo A** (PT salary) + **Anexo B** + **Anexo SS**. Salary from a foreign employer goes in Anexo J, not A | Modelo 3 instructions *(official source)*; [`irs-modelo3.md`](irs-modelo3.md#which-annexes) |
| Rates | All income is englobado. The salary pushes freelance income into higher escalões | art. 22.º CIRS *(official source)* |
| Dedução específica | €4,587.09 (2026) per titular, against Cat. A income | art. 25.º n.º 1 a) CIRS *(official source)* |
| 15% expense test | Item a) is the same €4,587.09 (2026). The text doesn't exclude people who also earn a salary | art. 31.º n.º 13 a) CIRS *(official source for the text; AT's liquidation practice for Cat. A earners: unverified)* |
| Start-of-activity coefficient cut | 0.75 → 0.375 / 0.5625 **only if you have no Cat. A or H income** in that period | art. 31.º n.º 10 CIRS *(official source)* |
| PPC share | PPC = 65% × [C × RLB/RLT − R]. RLT includes the salary, so a salary lowers the Cat. B share of the coleta | art. 102.º n.º 2 CIRS *(official source)* |
| IRS Jovem | Covers Cat. A **and** Cat. B. One 55 × IAS cap (€29,542.15 for 2026) on the combined total. Opt in both Anexo A (Q4A/4F1) and Anexo B (Q3 E.1) | art. 12.º-B CIRS *(official source)*; combined cap — Coverflex, Cegid *(unverified)* |

- **Withholding is per category.** The employer withholds on salary. PT business clients withhold 23% on art. 151.º recibos (2026). The withholding dispensa looks at **expected Cat. B income only** (< €15,000/year). The salary doesn't count toward it. *(official source: art. 101.º-B n.º 1 a) CIRS)* A dispensa still leaves the tax due: with a salary, the freelance euros land in a higher escalão, so expect a balance to pay in August and PPCs from the second year after.
- **Anexo B Q5 — "rendimentos de uma única entidade":** campo **01** if every recibo in Q4 went to one entity, otherwise **02**. With 01 you choose campo **03** (taxed under Cat. A rules: no coefficient; dedução específica and the Q7A items apply instead) or **04** (normal Cat. B). Not available for services by a partner to a fiscally transparent company. *(official source: art. 28.º n.º 8 CIRS; campo meanings — OCC manual and Doutor Finanças, unverified against the current instructions)*
- **Q5 campo 03 rarely helps if you have a salary.** The dedução específica is per titular, and the salary already uses it. Choosing Cat. A rules swaps the 25% presumed expense for nothing extra. Simulate both before ticking 03. *(derived from art. 25.º n.º 1 and art. 31.º n.º 1 b) — unverified in practice)*

### Transitions

**Employee → freelancer**

- **Severance and the same employer.** If, within **24 months** of leaving, you create a new professional or business link "independentemente da sua natureza" with the same entity, including recibos verdes, the whole severance becomes taxable. Normally only the part above 1 × average monthly pay × years of service is taxed. *(official source: art. 2.º n.º 4 b) CIRS)*
- **Services under the client's authority and direction are Cat. A**, whatever the recibo says. *(official source: art. 2.º n.º 1 b) CIRS)*
- **SS when the salary stops:** condition 3 fails, and contributions apply from the following period. Deliver the declaração trimestral at the next Jan/Apr/Jul/Oct. *(unverified — inference from ISS FAQ v09 Q35 and Q49; confirm the date in SSD → Posição Atual)*
- **Coefficient cut:** a start year with any salary gets no 50% cut. Whether the following year still gets the 25% cut if it has no salary is unsettled. *(official source for the rule; per-year reading unverified)*

**Freelancer → employee**

- **Stopping freelance work:** file the cessação within 30 days. See [`start-activity.md`](start-activity.md#cessação) and [`leaving-portugal.md`](leaving-portugal.md) for the closing steps.
- **Keeping activity open "just in case"** keeps Anexo B every year, and quarterly IVA returns (even zero ones) if you are in regime normal. SS goes quiet only while the acumulação conditions hold.
- **Restarting later:** within 5 years of a cessação there is no start-of-activity coefficient cut (art. 31.º n.º 11 CIRS). Within 12 months, if you were in an IVA taxation regime, you restart in regime normal. *(official source: [`start-activity.md`](start-activity.md#cessação))* SS: a restart after your first enquadramento owes contributions from day one, at €20 minimum until the next declaration. *(official source: ISS FAQ v09, Q3, Q36)*

## How to do it

1. **Check the SS exemption:** SSD → Conta Corrente → Posição Atual. Nothing being charged and no declaration pending means it's recognised. Otherwise send Mod. RC 3001-DGSS with a salary slip. *(official source: ISS FAQ v09, Q12; path verified in practice for Posição Atual)*
2. **Each quarter**, add up gross service income by service month. Above **€9,207.94 (2026)**, deliver the declaração trimestral for the remanescente: [`routines/ss-quarterly.md`](../routines/ss-quarterly.md). Leave out recibos to your own employer.
3. **Set money aside** for IRS on freelance income at your marginal rate, not at the 23% withheld, especially under the dispensa.
4. **Modelo 3:** Anexo A (check against the employer's *declaração anual de rendimentos*), Anexo B, Anexo SS (quadro 6 → Não if exempt). Tick IRS Jovem in both annexes if eligible. Simulate Q5 campos 03 and 04 if you had a single client.
5. **On every job change**, re-check condition 3 (salary ≥ 1 × IAS average) and the employer ≠ client test.

## Gotchas

- **Part-time salary under €537.13/month (2026) doesn't exempt you.** You owe full TI contributions on the freelance side.
- **Your employer as a client isn't a normal client.** Those recibos stay off the declaração trimestral and are covered by the employer. Mixing them in overstates your TI income.
- **Treating the exemption as permanent.** One strong quarter above €9,207.94 gross services (2026) creates a contribution and a declaration duty for that quarter.
- **Assuming the dispensa means no tax.** It only skips withholding. With a salary, the balance in August and the PPCs that follow are larger than freelancers without a salary expect.
- **A short contract in your start year** kills the 50% coefficient cut for that year (GOTCHAS #29).
- **Rehired as a contractor by the employer that paid your severance** within 24 months: the whole severance becomes taxable.
- **Two IRS Jovem ticks, one cap.** €29,542.15 (2026) covers salary and recibos together, not each separately.

## Sources

- ISS — *Perguntas Frequentes: Novo Regime dos Trabalhadores Independentes*, v09, 14 Jan 2026 (Q3, Q11–13, Q28, Q35–45, Q49): https://www.seg-social.pt/storage1/files/Perguntas-Frequentes---Novo-regime-dos-Trabalhadores-Independentes--v09-eo5R_UXwpLhcDifan-xPgA.pdf
- Portaria 249/2021 (Anexo SS and instructions): https://files.diariodarepublica.pt/1s/2021/11/22000/0002400027.pdf
- CIRS art. 2.º (Cat. A; severance n.º 4): https://info.portaldasfinancas.gov.pt/pt/informacao_fiscal/codigos_tributarios/cirs_rep/Pages/irs2.aspx
- CIRS art. 12.º-B, 25.º, 28.º, 31.º, 101.º-B, 102.º: https://info.portaldasfinancas.gov.pt/pt/informacao_fiscal/codigos_tributarios/cirs_rep/Pages/irs31.aspx (change the number in the URL)
- Regulation (EC) 883/2004 art. 13: https://eur-lex.europa.eu/eli/reg/2004/883/oj
- Secondary: OCC — Preenchimento da declaração Modelo 3 (Anexo B Q5); Doutor Finanças "IRS com a categoria A e B"; Coverflex and Cegid on the IRS Jovem combined cap
