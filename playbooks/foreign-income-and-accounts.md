# Foreign income and foreign accounts

> **Applies to:** Portuguese tax resident with accounts, investments, property, a job or a pension outside Portugal
> **Last verified:** 2026-10-02

A Portuguese tax resident is taxed on worldwide income. Anything earned outside Portugal goes in **Anexo J** of the Modelo 3, and every foreign deposit or securities account is listed there too, even with zero income. Foreign tax already paid is credited, not refunded, and only up to Portuguese tax on that income. AT already receives most of this data from foreign banks, so omissions get noticed.

Foreign-client freelance income (Anexo B or Anexo J?) is covered in [`irs-modelo3.md`](irs-modelo3.md#foreign-client-income-anexo-b-or-anexo-j-conflicting-readings). NHR/IFICI change how foreign income is taxed: [`irs-special-regimes.md`](irs-special-regimes.md). Crypto: [`crypto.md`](crypto.md).

## Rules

### Anexo J — the map

| Quadro | What goes in | Tax treatment |
|---|---|---|
| **3A** | Holder's NIF (one Anexo J **per person** — joint filers with foreign items each file their own) | — |
| **4A** | Foreign employment income (Cat. A), country = where the work was done | englobado |
| **5A** | Foreign pensions (Cat. H) | englobado |
| **6A** | Foreign-source Cat. B — see the Anexo B/J conflict | englobado |
| **7A / 7B** | Foreign rental income (Cat. F), **net** of expenses; 7B = englobamento option | 28% autonomous, or englobamento |
| **8A / 8B** | Dividends, interest, other capital income (Cat. E); 8B = englobamento option | 28% autonomous, or englobamento |
| **9.1A** | Sale of foreign real estate | 50% of the gain englobado (mandatory) |
| **9.2A / 9.2C** | Sale of foreign shares, ETFs, bonds, fund units | 28% autonomous, or englobamento |
| **9.4A / 9.4B** | Crypto held < 365 days, via foreign platforms | see [`crypto.md`](crypto.md) |
| **11** | Foreign deposit and securities accounts (IBAN + BIC) | information only, no tax |

*(official source: Anexo J instructions, Portaria 104/2026/1 — read via the OCC reproduction in "IRS 2026 – Preenchimento", rendimentos de 2025)*

### Quadro 11 — foreign accounts

- **Who:** every resident who is **titular, beneficiário or authorised to move** a deposit or securities account at a financial institution not resident in Portugal, or at a foreign branch of a Portuguese bank. "Authorised to move" catches accounts you only hold a power of attorney on. *(official source: art. 63.º-A n.º 8–9 LGT; Anexo J instructions)*
- **What you enter:** IBAN (≤ 34 characters) and BIC (≤ 11). If the account has no IBAN/BIC, its account number. No balances. *(official source: Anexo J instructions; oe.gov.pt "Saiba como declarar contas no estrangeiro no IRS")*
- **Quick test:** a Portuguese IBAN starts with **PT50**. Anything else is foreign. *(official source: oe.gov.pt, same page)*
- **Payment accounts are out.** The law says *contas de depósitos ou de títulos*. AT stated in 2019 that payment accounts (it named Revolut, then not a bank) are not covered. *(official source: Ofício Circulado 20.211, 2019-04-18)* So check what the provider **is** for your account: a credit institution or broker → declare; a payment or e-money institution → not required. Fintechs change licences — a provider that later became a bank moves your account into scope. *(unverified — reading of the Ofício; when in doubt, declare: it costs nothing)*
- **Broker accounts count** (they are securities accounts), including foreign investment apps. *(official source: oe.gov.pt — "bancos ou plataformas de investimento")*
- **No tax effect.** The simulator ignores Anexo J; simulate before adding it if Q11 is all it holds. *(official source: oe.gov.pt)*
- **Omission:** a substituição before 30 June costs nothing. Later, it's an RGIT contraordenação; with no tax at stake the reported range is **€25 – €5,625** *(unverified — RFF Lawyers via Observador)*. Mechanics for late corrections: [`at-communication.md`](at-communication.md#late-filing-coimas).

### Foreign dividends and interest (Cat. E, quadro 8A)

- **Rate:** foreign capital income isn't withheld in Portugal, so it's taxed at the **28%** autonomous rate (art. 72.º n.º 1 d) CIRS), or at the general brackets if you opt for englobamento. **35%** if the payer sits in a listed tax haven (art. 72.º n.º 18). *(official source: art. 72.º CIRS)*
- **Codes:** **E21** foreign interest (28%), **E99** at 35% *(official source: AT "Tributação de produtos financeiros em sede de IRS")*; **E11** dividends via a foreign broker, **E10** foreign shares held through a Portuguese intermediary *(unverified — Rankia, Dama de Ouros)*. Country = country of the paying entity.
- **Englobamento is all-or-nothing** for Cat. E that year (art. 22.º n.º 5). It pays only if your marginal rate is under 28%. If you englobe, dividends from EU-resident companies meeting the Parent-Subsidiary Directive conditions count at **50%** (art. 40.º-A n.º 4). *(official source: Anexo J instructions)*
- **Foreign tax credit (art. 81.º CIRS):** the credit is the **lower of** the tax paid abroad and the Portuguese tax on that income (28%, or the proportional share of coleta if englobado). With a treaty, it's further capped at the **treaty rate**. Unused credit from insufficient coleta carries forward **5 years**. *(official source: art. 81.º n.º 1–3 CIRS)*
- **Over-withholding is the source country's problem.** If a country withheld more than the treaty rate, Portugal credits only the treaty rate. The excess is reclaimed from that country, or prevented upfront with its treaty form. *(official source: art. 81.º n.º 2; prevention mechanics unverified)*
- **Proof:** keep documents showing the income and the foreign tax "emitidos pela autoridade fiscal" of the source country; AT can ask. Broker tax statements are what most people actually hold. *(official source for the requirement: Anexo J instructions; broker-statement practice unverified)*

### Foreign securities sales (quadro 9.2A)

- Gains on shares, ETFs and bonds sold through a foreign broker: **28%** on the year's net balance, or englobamento. Below-365-day gains are **mandatorily englobed** if taxable income incl. the gain reaches the top bracket (€86,634 for 2026 income). *(official source: art. 72.º n.º 1 c), 14 CIRS; bracket: [`key-figures.md`](key-figures.md))*
- **Long-hold relief (art. 43.º n.º 5, Lei 31/2024):** for listed securities and open-ended funds, **10%** of the gain is excluded after > 2 years, **20%** after ≥ 5, **30%** after ≥ 8. Q9.2A has a column ("admitidos à negociação?") that triggers it. *(official source: art. 43.º n.º 5 CIRS; Anexo J instructions)*
- Gains are computed FIFO **per broker** (art. 43.º n.º 8–9). *(official source)*

### Foreign rental income (Cat. F, quadro 7A)

- Declared **net**: rent minus expenses paid in the year for the let period — conservation and maintenance, condominium, local property taxes, and works paid in the 24 months before the first letting. **Not deductible:** mortgage interest and other financial costs, depreciation, furniture, appliances, décor. *(official source: art. 41.º CIRS; Anexo J instructions)*
- **Rate conflict:** the Anexo J instructions say foreign Cat. F is taxed at **28%**. Art. 72.º n.º 2 CIRS (Lei 56/2023) taxes income from *arrendamento habitacional* at **25%**, with no territorial limit in the text. The reduced rates for long leases and moderate rents are tied to Portuguese registration and price caps — don't assume they reach a foreign property. *(official source for both texts; which rate the liquidação applies to a foreign residential lease: unverified)*
- The foreign country almost always taxes the rent too (treaties give the property's country the first right). Claim the credit in Q7A with that country's tax document. *(official source: Anexo J instructions)*

### Foreign employment and pensions (brief)

- **Employment** (Q4A, code A01, country = where you worked): treaties usually let the work country tax it; Portugal then gives a credit, or uses exemption with progression where the treaty says so (art. 81.º n.º 9). **Pensions** (Q5A, H01; public pensions H02 also need nationality in Q3A). *(official source: Anexo J instructions; art. 81.º CIRS)*

### Double-tax treaties — which document goes where

| Situation | Document | Who issues it |
|---|---|---|
| You (PT resident) earn income abroad and want the foreign payer to withhold less | **Certidão de residência fiscal** (English available, per year) — or that country's own treaty form, stamped by AT | AT, via Portal → Certidões → Residência Fiscal ([`certidoes.md`](certidoes.md)) |
| A **non-resident** earns Portuguese income and wants a Portuguese payer to withhold less | **Modelo 21-RFI** (refunds: 22/23/24-RFI), certified by *their* tax authority, valid ≤ 1 year | the foreign tax authority certifies; the PT payer keeps it |

Modelo 21-RFI is **not** your form as a resident; it runs in the opposite direction. *(official source: AT "Guia fiscal – Comunidades Portuguesas – França"; AT FAQ faqs-00653)* Treaty list: Portal das Finanças → "Convenções e Quadro Resumo das Convenções". *(official source: same guide)*

### Exchange rate (art. 23.º CIRS)

- Foreign-currency amounts are converted at the **official quotation, buying rate (câmbio de compra), on the date the income was paid or made available** to you. Expenses use the selling rate on the payment date. If you can't prove the date, use the **31 December** rate of that year; if there's no quotation that day, the last one before it. *(official source: art. 23.º CIRS)*
- In practice use the **Banco de Portugal / ECB euro reference rate** for that date and keep the table in your records. *(unverified — the reference rate is a single mid rate; AT hasn't published a preferred source)*
- Convert each payment on its own date, not the year's total at one rate. Convert the foreign tax at the same rate as the income it belongs to. *(unverified — follows from art. 23.º)*

### AT already sees your foreign accounts

- Under the **CRS** (DL 64/2016), foreign financial institutions report your accounts — holder, NIF, account number, balance, interest, dividends, sale proceeds — to their tax authority, which sends it to AT each year. AT uses it to cross-check declared income. *(official source: DL 64/2016; MNE/AT CRS clarification)*
- **From 2026,** DAC8 (Lei 26/2026) adds crypto platforms, and extends CRS reporting to certain e-money products *(unverified for the e-money part)*. See [`crypto.md`](crypto.md#dac8-what-at-will-receive).

## How to do it

1. **January:** list every account outside Portugal (bank, broker, fintech) with its IBAN, BIC and the provider's legal entity. Ask each for the annual tax report. Save them to `records/<year>/irs/foreign/`.
2. **Classify each provider:** bank/broker → Q11; payment/e-money institution → not required (declare anyway if unsure).
3. **Build an income table:** date · type (interest / dividend / sale / rent) · country · gross in currency · foreign tax · rate used · EUR.
4. **Modelo 3 → Anexo J** (one per holder): Q3A NIF → Q8A per income line → Q9.2A per sale → Q7A per property → Q11 accounts. Tick the englobamento options (7B, 8B, 9.2C) consciously — they apply to all income of that category, Portuguese included.
5. **Simular** with and without englobamento (the simulator skips Anexo J, so run the Portal's full validation and check the nota after liquidação). *(official source: oe.gov.pt)*
6. **After the liquidação**, check that the nota shows the foreign tax credit (*dedução por dupla tributação internacional*).

## Gotchas

- **"Zero income, so no Anexo J."** Wrong: the account alone triggers it.
- **A joint return needs one Anexo J per spouse** with foreign items, and only the holder's own accounts on each.
- **Englobamento drags in everything of that category,** including Portuguese interest already withheld at 28%.
- **The foreign tax credit never exceeds the treaty rate.** Withholding above it is lost unless reclaimed abroad.
- **Gross, not net.** Q8A wants income before foreign tax; Q7A wants rent after expenses but before foreign tax.
- **IRS automático doesn't handle Anexo J.** If you have foreign accounts, file the full Modelo 3. → [`irs-modelo3.md`](irs-modelo3.md#irs-automático)
- **CRS data arrives whether you declare or not.** A mismatch between reported interest and your Q8A is the most likely question you'll get.

## Sources

- Anexo J instructions — Portaria 104/2026/1 (5 Mar 2026): https://diariodarepublica.pt/dr/detalhe/portaria/104-2026-1066993467
- OCC — IRS 2026, Preenchimento da declaração (reproduces the instructions): https://www.occ.pt/sites/default/files/public/2026-03/Essencial_IRS2026_DIG_final.pdf
- oe.gov.pt — Saiba como declarar contas no estrangeiro no IRS: https://www.oe.gov.pt/financas-a-lupa/artigos/saiba-como-declarar-contas-no-estrangeiro-no-irs
- Ofício Circulado 20.211 (2019-04-18), contas de pagamento: https://www.anecra.pt/AL/PDF/ifnr.pdf (copy of the AT document)
- AT — Tributação de produtos financeiros em sede de IRS: https://info.portaldasfinancas.gov.pt/pt/apoio_contribuinte/Guias/Documents/Guia_Fiscal_produtos_financeiros.pdf
- CIRS art. 23.º, 41.º, 43.º, 72.º, 81.º: https://info.portaldasfinancas.gov.pt/pt/informacao_fiscal/codigos_tributarios/cirs_rep/Pages/irs81.aspx (change the number)
- AT — Guia fiscal Comunidades Portuguesas – França (Modelo 21-RFI): https://info.portaldasfinancas.gov.pt/pt/apoio_contribuinte/Guias/Guia_fiscal_Comunidades_Portuguesas/Guia_fiscal_Comunidades_Portuguesas_Franca.pdf
- AT FAQ faqs-00653 (certificado de residência fiscal): http://info.portaldasfinancas.gov.pt/pt/apoio_contribuinte/questoes_frequentes/Pages/faqs-00653.aspx
- DL 64/2016 (CRS): https://diariodarepublica.pt/dr/detalhe/decreto-lei/64-2016-75504609
- Secondary: RFF Lawyers / Observador (Q11 coima range); Rankia, Dama de Ouros (E10/E11 codes); Taxbordr (foreign Cat. F rates)
