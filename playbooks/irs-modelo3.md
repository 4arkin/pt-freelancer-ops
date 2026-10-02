# IRS — annual Modelo 3 for Categoria B

> **Applies to:** resident trabalhador independente, regime simplificado, filing the IRS for income year N in N+1; clients in Portugal and/or abroad
> **Last verified:** 2026-10-02

Every April–June you file one Modelo 3 for the previous year's income. AT then issues a nota de liquidação: you pay the balance by 31 August or receive a refund. The same nota sets next year's pagamentos por conta. For a freelancer it is a cover page (rosto), Anexo B and Anexo SS, plus Anexo H for deductions you want to correct, and Anexo J for foreign bank accounts and, depending on the reading below, foreign-source income.

Quadro-by-quadro field map, portal paths and screen quirks: [`portals/portal-financas.md`](../portals/portal-financas.md#irs--modelo-3). How the taxable base is built (coefficients, the 15% expense justification): [`regime-simplificado.md`](regime-simplificado.md). IRS Jovem, NHR, IFICI and Anexo L: [`irs-special-regimes.md`](irs-special-regimes.md). Prep checklist: [`routines/irs-annual-prep.md`](../routines/irs-annual-prep.md).

## Rules

### Calendar (2026 filing = 2025 income)

| When | What | Source |
|---|---|---|
| by 2 Mar 2026 (legal: end Feb; moved — weekend) | Confirm and classify e-fatura invoices; assign business expenses to the activity; update the agregado familiar ([`family-and-joint-filing.md`](family-and-joint-filing.md)) | *(official source: AT folheto "IRS 2025 – Principais prazos 2026")* |
| 16–31 Mar 2026 | Check the deductible expenses AT computed; reclamar omissions | *(official source: same)* |
| **1 Apr – 30 Jun 2026** | File Modelo 3 (or confirm IRS automático) | *(official source: AT Modelo 3 page; art. 60.º CIRS)* |
| by 31 Jul | AT liquidates declarations filed on time | *(official source: AT Modelo 3 page)* |
| **by 31 Aug 2026** | Pay the tax, or receive the refund | *(official source: AT Modelo 3 page; AT FAQ faqs-01006)* |
| 20 Jul / 20 Sep / 20 Dec (2026: 20 Jul · 21 Sep · 21 Dec — key-figures.md) | Pagamentos por conta for the current year, if the nota sets them | *(official source: art. 102.º n.º 1 CIRS)* |

File early if you expect a refund: refunds go out as liquidations are processed. If you owe, the payment date is printed on the nota and doesn't move with an early filing. *(unverified — common practice)*

- **Arrival year:** you are resident from the first day of stay (art. 16.º CIRS); Rosto quadro 8 states residence for part of the year. Income from the non-resident period goes in a separate declaration. *(official source for the rule; two-declaration mechanics unverified)*

### Which annexes

| Annex | When | Note |
|---|---|---|
| **B** | Every year while your activity is open, even with zero income | *(official source: Anexo B instructions; DECO 2026)* |
| **SS** | Every TI enrolled in the TI regime | Quadro 6 only if the entidade contratante test is met — see [`social-security.md`](social-security.md#anexo-ss-with-the-irs-modelo-3) |
| **H** | To declare or correct deductions (Q6C), declare rent (Q7), claim benefits | Without it, AT uses the e-fatura figures |
| **J** | Any foreign bank or securities account (quadro 11, IBAN + BIC), even with no income from it; foreign-source income of any category | *(official source: Anexo J instructions — "Quem deve apresentar", art. 63.º-A LGT)* |
| **L** | NHR / IFICI only | [`irs-special-regimes.md`](irs-special-regimes.md). Don't file it "just in case" — using NHR once bars IRS Jovem for good |
| **F** | Portuguese rental income | [property-in-portugal.md](property-in-portugal.md) |
| **G / G1** | Capital gains incl. crypto and selling your home; G1 for excluded gains (crypto ≥ 365 days) | [crypto.md](crypto.md), [property-in-portugal.md](property-in-portugal.md) |
| **E** | Portuguese capital income you opt to englobe | [foreign-income-and-accounts.md](foreign-income-and-accounts.md) |
| **A** | Salaries / pensions | If you are also employed — see [`employed-and-freelance.md`](employed-and-freelance.md) |

### Anexo B — the quadros that matter

- **Q1** regime simplificado (campo 01). **Q3** your art. 151.º activity code; IRS Jovem in secção E. **Q4** gross income by field — campo **403** for art. 151.º professional services (coefficient 0,75), campo **404** for other services. **Q6** withholding (601) and PPCs paid (602). **Q13B** gross turnover N, N-1, N-2. **Q17A** SS contributions — AT fills it. Full map: [`portals/portal-financas.md`](../portals/portal-financas.md#irs--modelo-3). *(verified in practice; field meanings: official source, OCC "IRS 2026 – Preenchimento" quoting the instructions)*
- **Pre-filling:** recibos issued on the Portal (SIRE) pre-fill Q4 and Q6. Invoices from certified software reach AT through e-fatura. Always reconcile against your own recibo list before accepting. *(unverified — practitioner reading)*

### Foreign-client income: Anexo B or Anexo J? (conflicting readings)

This decides where the income goes. It matters most for NHR/IFICI, where "foreign source" changes the tax.

- **Reading 1 — Anexo B.** Services physically performed in Portugal for foreign clients are reported in Anexo B Q4 like any other recibo. *(verified in practice — filed this way and liquidated without objection, see [`portals/portal-financas.md`](../portals/portal-financas.md))*
- **Reading 2 — Anexo J Q6.** Art. 18.º n.º 1 al. f) CIRS treats professional-service income as Portuguese-source only if it is **paid by an entity resident in Portugal**, or with a PT establishment there. On that reading, a foreign client's fee is foreign-source. The Anexo B instructions then say: Cat. B income obtained outside Portugal goes in **Anexo J quadro 6** (6A income, 6B days of presence and fixed base), and Anexo B is still filed with only Q1, Q3, Q13B and Q14. The OCC (the order of certified accountants) adopts this in parecer PT27295 (Dec 2022): service income from a non-resident client "terá sempre de ser incluída no anexo J". *(official source: art. 18.º CIRS text; Anexo B instructions; secondary: OCC parecer)*
- **What to do:** no AT doctrine settling the point was found. If you have no NHR/IFICI and no foreign tax withheld, both readings give the same tax, and Reading 1 is the tested one. With NHR/IFICI, or foreign withholding you need credited (art. 81.º CIRS needs Anexo J), get a contabilista's sign-off. *(unverified — recommendation)*
- **Foreign withholding:** if a client's country withheld tax, the credit is claimed in Anexo J with a certificate from that country's tax authority. Prevent the withholding in the first place by giving the client your **certidão de residência fiscal**. *(official source: Anexo J instructions; OCC parecer)*

### IRS automático

It also covers some Cat. B filers: regime simplificado; only art. 151.º activities (not 1519 *Outros prestadores de serviços*); every fatura and recibo issued on the Portal; no income or deduction the automatic form can't handle. *(unverified — DECO PROteste 2026, ABANCA; AT's own page lists conditions without the Cat. B detail)* Since 2026 it includes IRS Jovem. *(unverified — Doutor Finanças 2026)* If the portal says you're not covered, file the Modelo 3 normally. Anyone with Anexo J or Anexo L, or a contested deduction, should file manually anyway. An unconfirmed automatic declaration becomes final on 30 June, and you then have 30 days after the liquidação to replace it without penalty. *(official source: AT "IRS automático" page)*

### Deductions à coleta (Anexo H / e-fatura)

| Category | Rate | Cap for 2025 income (filed 2026) | Cap for 2026 income (filed 2027) | Basis |
|---|---|---|---|---|
| Despesas gerais familiares | 35% | €250 per sujeito passivo (€335 and 45% single-parent) | same | art. 78.º-B CIRS *(unverified — secondary)* |
| Saúde | 15% | €1 000 per household | same | art. 78.º-C *(unverified — secondary)* |
| Educação e formação | 30% | €800 (more for students living away from home / interior) | same | art. 78.º-D *(unverified — secondary)* |
| Rendas — habitação própria e permanente | 15% | **€700** | **€900** (€1 000 from 2027 income) | art. 78.º-E n.º 10, DL 97/2026 *(official source)* |
| Juros de crédito habitação | 15% | €296 — **only contracts up to 31 Dec 2011** | same | *(unverified — secondary)* |
| Exigência de fatura (restaurants, hairdressers, gyms, vets, passes; from 2026 also books, shows, museums) | 15% of the IVA | €250 per household | same, wider list | art. 78.º-F *(unverified — Santander 2026)* |

- A global cap on the total of these deductions shrinks as income rises (art. 78.º n.º 7 CIRS). Despesas gerais familiares sit outside it. *(unverified — simula.pt)*
- **Rent needs paperwork.** The deduction needs a lease registered at AT and **electronic rent receipts** from the landlord. Q7 of Anexo H asks for the property's matriz details — copy them from the receipts. *(verified in practice; secondary: Santander)*
- **Invoices assigned to your activity in e-fatura are business expenses, not personal deductions.** Pick one use per invoice. *(official source: AT prazos folheto, art. 78.º-B n.º 5)*

### Liquidação, payment, refund

- **Payment:** by **31 August** if AT liquidated by 31 July. A late filing carries its own date on the nota. *(official source: AT Modelo 3 page)*
- **Refund:** by 31 August for on-time filings, to the IBAN on the rosto (Q9). *(official source: AT FAQ faqs-01006)*
- **Can't pay in one go:** request a plano prestacional **within 15 days after** the voluntary deadline. No guarantee is needed for ≤ €5 000 or ≤ 12 instalments. Debts ≤ €5 000 get an automatic plan if you don't ask. Each instalment must be at least ¼ UC. *(official source: DL 125/2021 arts. 3.º, 5.º, 6.º n.º 5, 9.º)* Mechanics and the effect on your certidão: [`at-communication.md`](at-communication.md#tax-debts-plano-prestacional).

### Reading the nota de liquidação

The nota (*demonstração de liquidação*) walks from income to tax: gross income → rendimento líquido per category → rendimento coletável → coleta → minus deductions à coleta → minus withholding and PPCs → **valor a pagar / a reembolsar**. Three things to check:

1. **The Cat. B line matches** your Q4 total × coefficient. A cut coefficient (start of activity) or a missing 15% justification shows up here. See [`regime-simplificado.md`](regime-simplificado.md).
2. **Retenções and PPCs credited** equal what you actually paid in the year.
3. **The PPC line for next year.** By law, the nota for year N also states each pagamento por conta due in N+2 (art. 102.º n.º 3 CIRS). In practice it reads *"Montante de cada pagamento por conta a efetuar durante o ano de YYYY"* — copy it into `profile.md`. *(official source: art. 102.º n.º 3; label verified in practice — see [`routines/irs-ppc.md`](../routines/irs-ppc.md))*

### Pagamentos por conta

- **Who pays:** Cat. B holders. Three instalments, due 20 July, 20 September and 20 December (2026: 20 Jul · 21 Sep · 21 Dec). *(official source: art. 102.º n.º 1 CIRS)*
- **Total = 65%** of `C × (RLB / RLT) − R`. C = net coleta of the penultimate year; RLB / RLT = its Cat. B / total net income; R = its Cat. B withholding. Each instalment is ⅓ of that, rounded up to the euro. *(official source: art. 102.º n.º 2, as amended by Lei 45-A/2024 — the old 76,5% still appears in some guides)*
- **Not due** if an instalment is under €50 (n.º 3). They stop when withholding plus PPCs already paid cover the year's expected tax, or when Cat. B income ends (n.º 4). You **may reduce** them on your own estimate (n.º 5). If the reduction leaves more than 20% unpaid, juros compensatórios apply (only if the penultimate year was liquidated by 31 May and the household is unchanged — art. 102.º n.º 6). *(official source: art. 102.º CIRS)*
- AT sends the payment document in the month before each deadline. *(official source: art. 102.º n.º 3)*

### Declaração de substituição

- **Inside 1 Apr – 30 Jun:** replace freely, no penalty. *(official source: art. 59.º n.º 3 al. a) CPPT)*
- **After 30 June** *(secondary: Doutor Finanças, Montepio, quoting art. 59.º n.º 3 CPPT)*:
  - Within 30 days of the deadline, for any reason. A substituição that raises the tax still carries the coima.
  - Up to the reclamação graciosa deadline (120 days) or the impugnação deadline, to correct your own error where the result is **less** tax.
- **A substituição that gives more tax or a smaller refund** after the deadline carries a coima under art. 116.º RGIT, reducible as in [`at-communication.md`](at-communication.md#late-filing-coimas). One that gives less tax carries none. *(unverified — Montepio, Conselhos do Consultor)*
- After the liquidação, AT preloads the latest declaration when you substitute. *(verified in practice)*

## How to do it

1. **Feb–Mar:** run [`routines/efatura-year-end.md`](../routines/efatura-year-end.md). Classify every invoice, assign the business ones, check the agregado.
2. **From 1 April:** Portal → IRS → **Entregar declaração** → year → *pré-preenchimento* on. Add Anexo B (check Q4 against your recibo list), Anexo SS, Anexo H only if correcting, and Anexo J for foreign accounts (Q11). *(verified in practice)*
3. **Simulate** before submitting: the form's **Simular** button, or Cidadãos → IRS → Simulador on the portal. *(verified in practice — portal path in [`portals/portal-financas.md`](../portals/portal-financas.md))*
4. **Validar → Submeter.** Save the comprovativo: IRS → **Obter Comprovativos** (last 5 years). *(official source: AT folheto "Certidões e comprovativos", Feb 2026)*
5. **Track it:** IRS → Consultar Declaração. *Liquidação processada* → *Notificação emitida*. Download the nota via Certidões → **Liquidação de IRS**. *(official source: same folheto; statuses verified in practice)*
6. **Pay by the date on the nota**, or request a plan within 15 days after it.

## Gotchas

- **Anexo B is due every year your activity is open,** even with zero income.
- **Foreign bank accounts go in Anexo J Q11.** That covers deposit and securities accounts at a financial institution not resident in Portugal, or at a branch outside Portugal: home-country banks and foreign brokers. Payment and e-money accounts are not covered (Ofício Circulado 20.211, 2019-04-18). For a fintech, check whether your account sits with a bank or broker (declare) or with a payment / e-money institution (not required). See [`foreign-income-and-accounts.md`](foreign-income-and-accounts.md). *(official source)*
- **Old guides say 76,5% for PPCs.** The current figure is 65% (Lei 45-A/2024). Always pay the amount on the nota or portal, not a calculation.
- **The rent cap depends on the income year,** not the filing year: €700 for 2025 income, €900 for 2026 income.
- **An unconfirmed IRS automático becomes final on 30 June.** If you have foreign accounts or income it doesn't show, file a full Modelo 3 instead.
- **A €0 substituição doesn't cancel the original's collection note** — see [`portals/portal-financas.md`](../portals/portal-financas.md#irs--modelo-3).

## Sources

- AT — Modelo 3 (deadlines, payment, refunds): https://info.portaldasfinancas.gov.pt/pt/apoio_ao_contribuinte/Cidadaos/Rendimentos/Declaracao/Modelo_3/Paginas/default.aspx
- AT — IRS 2025: Principais prazos em 2026 (Jan 2026): https://info.portaldasfinancas.gov.pt/pt/apoio_contribuinte/Folhetos_informativos/Documents/IRS_2025_Principais_prazos_2026.pdf
- AT — IRS automático: https://info.portaldasfinancas.gov.pt/pt/apoio_ao_contribuinte/Cidadaos/Rendimentos/Declaracao/IRS_automatico/Paginas/default.aspx
- AT — CIRS art. 102.º (pagamentos por conta, 65%): https://info.portaldasfinancas.gov.pt/pt/informacao_fiscal/codigos_tributarios/cirs_rep/Pages/irs102.aspx
- AT — FAQ reembolsos: http://info.portaldasfinancas.gov.pt/pt/apoio_contribuinte/questoes_frequentes/pages/faqs-01006.aspx
- AT — Rendimentos obtidos no estrangeiro / Anexo J: http://info.portaldasfinancas.gov.pt/pt/apoio_contribuinte/IRS/Pages/Rendimentos_estrangeiro.aspx
- Modelo 3 annexes and instructions (Portaria, DR 2 Feb 2024): https://files.diariodarepublica.pt/1s/2024/02/02401/0000200199.pdf
- DL 125/2021 (prestações): https://files.dre.pt/1s/2021/12/25200/0003500042.pdf
- CIRS art. 18.º (source rules): https://informador.pt/legislacao/lexit/codigos/direito-fiscal/codigo-do-irs/capitulo-i-incidencia/seccao-ii-incidencia-pessoal/artigo-18-o-rendimentos-obtidos-em-territorio-portugues
- OCC — IRS 2026, preenchimento da declaração (rendimentos de 2025): https://www.occ.pt/sites/default/files/public/2026-03/Essencial_IRS2026_DIG_final.pdf
- OCC — parecer PT27295, localização das prestações de serviços: https://cihc.occ.pt/pt/noticias/localizacao-das-prestacoes-de-servicos-rendimentos-obtidos-estrangeiros
- Secondary: DECO PROteste IRS 2026; Doutor Finanças "Guia para otimizar o IRS em 2027"; simula.pt deduções 2026; Montepio "Enganei-me no IRS".
