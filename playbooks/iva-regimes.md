# IVA regimes and what goes on each invoice

> **Applies to:** trabalhador independente selling services; art. 53.º exempt or regime normal (monthly/quarterly)
> **Last verified:** 2026-10-02

A freelancer is in one of two IVA worlds: the **art. 53.º small-business exemption** (no IVA charged, no IVA deducted, almost no returns) or **regime normal** (charge IVA where due, deduct input IVA, file a declaração periódica every period, even empty). Which world you're in was rewritten on 1 July 2025 by DL 35/2025 — the threshold now counts **only turnover located in Portugal**, which matters a lot for freelancers billing foreign clients. Then each invoice's IVA treatment depends on who the client is and where they are.

## Rules

### Art. 53.º — regime especial de isenção

- **Threshold:** national-territory turnover in the previous calendar year ≤ **€15,000** (2025 and 2026), and no exports of goods or related activities. *(official source: art. 53.º n.º 1 CIVA, DL 35/2025)*
- **What counts toward €15,000:** sales and services **located in Portugal** under art. 6.º CIVA, net of IVA. Services to EU or non-EU **businesses** (located abroad by art. 6.º n.º 6 a)) do **not** count. Capital-goods sales don't count. *(official source: art. 52.º-B CIVA; Ofício Circulado 25062/2025 pontos 4–6; OCC Guia art. 53.º Q19)* Turnover from art. 9.º-exempt activities doesn't count when you also run a taxable one. *(official source: Ofício Circulado 25062/2025 ponto 7, Exemplo 1)*
- **Since 1 July 2025** contabilidade organizada and imports no longer exclude you. Exports of goods still do. *(official source: Ofício Circulado 25062/2025 ponto 2)*
- **Start of activity:** use the estimate for the remaining part of the year, not annualised. *(official source: art. 53.º n.º 5 CIVA)*
- **No deduction, no refund** of input IVA. *(official source: art. 53.º n.º 3 CIVA)*
- **Obligations:** issue invoices with "IVA – regime de isenção" (code M10); faturas simplificadas allowed for operations taxable in PT regardless of amount; **no declaração periódica** and, since 1 July 2025, **no recapitulativa** for B2B services to other EU states. *(official source: art. 57.º, 40.º n.º 1 c) CIVA; Ofício Circulado 25062/2025 pontos 28–31; OCC Guia Q21)*
- **Leaving the exemption** (art. 58.º CIVA): *(official source)*

  | Trigger | IVA due from | Declaração de alterações |
  |---|---|---|
  | Prior-year PT turnover > €15,000 | 1 January of the next year | within 15 business days after 31 Dec (e.g. by 22/01/2026 for 2025) |
  | Current-year PT turnover > **€18,750** (15,000 + 25%) | **the invoice that crosses €18,750** | within 15 business days of that invoice |
  | Start exporting goods | from that operation | within 15 business days |

- **Renouncing** the exemption voluntarily (art. 55.º): effective from the declaration date; minimum **5 years** in regime normal. Coming back after that only via a January declaração de alterações. *(official source: Ofício Circulado 25062/2025 pontos 21–24)*
- **EU SME cross-border scheme (from 1 July 2025):** a business established in **another** EU state with EU-wide turnover ≤ **€100,000** can use the PT exemption after prior notification in its home state and an "EX"-suffixed VAT number. Portugal-established freelancers wanting another state's exemption go through the mirror procedure (art. 58.º-A CIVA) and must check that state's threshold. *(official source: art. 53.º n.º 2 CIVA; mirror procedure details unverified)*

### Regime normal — periodicity and payment

- **Quarterly** if prior-year turnover < €650,000 (default for freelancers); **monthly** if ≥ €650,000 or by option. *(official source: art. 41.º n.º 1–2 CIVA)*
- **Declaration deadline:** day **20 of the 2nd month** after the period. Quarterly 2026: 20 Feb, 20 May, **21 Sep** (Q2 goes to 20 September; 2026-09-20 is a Sunday), 20 Nov. *(official source: art. 41.º n.º 1 CIVA, wording by Lei 12/2022; dates — Agenda Fiscal 2026)*
- **Payment:** by day **25** of the same month (quarterly 2026: 25 Feb, 25 May, 25 Sep, 25 Nov). *(official source: Agenda Fiscal 2026 via Doutor Finanças)*
- **Monthly option** is made in the início declaration or, for existing taxpayers, in a January declaração de alterações; it stays until you file another January alteração. *(official source: art. 41.º n.º 3–4 CIVA, DL 49/2025)*
- **Zero activity still means filing** — tick quadro 05 (sem operações). *(official source: art. 29.º n.º 2 CIVA, OCC instructions)*

### Invoice treatment per client

Rates 2026 (unchanged from 2025): **Continent 23 / 13 / 6 %**, **Madeira 22 / 12 / 4 %** (reduced 4% since 1 Oct 2024), **Açores 16 / 9 / 4 %**. *(official source: art. 18.º CIVA; Ofício Circulado 25045/2024)*

| Client | IVA on invoice | Mention / code | Regime normal: declaração periódica | Recapitulativa |
|---|---|---|---|---|
| PT business or PT individual | Charge PT IVA at the rate where the operation is located | — | Campos 1/2 (reduced), 5/6 (intermediate), 3/4 (normal) | No |
| EU business (VAT number valid in VIES) | None — client reverse-charges | "IVA – autoliquidação" · **M40** (art. 6.º n.º 6 a) CIVA, a contrário) | **Campo 7** | **Yes** |
| EU individual (B2C) | Charge PT IVA (general B2C rule, art. 6.º n.º 6 b)) — exceptions for electronic/telecom/broadcast services, which go via OSS | — | Campos 1–6 | No |
| Non-EU business | None — not located in PT | "IVA – autoliquidação" · M40 *(see gotcha)* | **Campo 8** | No |
| Non-EU individual | PT IVA, **except** services listed in art. 6.º n.º 8 (consultancy, engineering, legal, accounting, advertising, data processing, IP licensing…) which are not taxable in PT when the client lives outside the EU | "IVA – Regras específicas – artigo 6.º" · **M44** | Campo 8 | No |
| Any client, while in art. 53.º | None | "IVA – regime de isenção" · **M10**; for EU/non-EU business clients M40 is used instead so the €15,000 tally only counts M10 invoices | none (no return) | No (since 1 Jul 2025) |

*(Official sources: art. 6.º, 36.º n.º 13 CIVA; AT "Códigos de Motivo de Isenção" table, June 2026 edition as reproduced by Moloni/InvoiceXpress; OCC Guia art. 53.º Q20. Campo 8 placement: Portaria 298/2026/1 quadro 06-D campos 157–158 detail campo 8 with exactly these operations. The art. 6.º n.º 8 list is from memory of the CIVA text — unverified; check the article before relying on it for a specific service.)*

- **Regional rate (Madeira/Açores):** the regional rate applies to operations considered located in the region under the regional location rules (DL 347/85); a taxpayer with operations in more than one circunscrição files **Anexo R** with the declaração periódica. *(unverified detail; Anexo R existence — official source: Portaria 298/2026/1)*

### Before you reverse-charge an EU client

- **Client:** validate the client's VAT number on VIES on the invoice date and keep the result. No valid number → treat as B2C and charge PT IVA. *(unverified — standard practice; VIES check is the accepted proof of business status)*
- **You:** your own `PT` + NIF must show as valid in VIES. Regime normal taxpayers doing intra-EU operations should appear; if yours doesn't, file a declaração de alterações marking intra-community operations. *(unverified — mechanism not confirmed on an official page)*
- **Invoice deadline is longer:** intra-EU B2B services under art. 6.º n.º 6 a) → invoice by the **15th day of the following month**. *(official source: art. 36.º n.º 1 b) CIVA)*

### Declaração periódica — the other campos

| Campo | Use |
|---|---|
| 16 / 17 | Base / IVA you self-assess on services **bought** from EU suppliers (art. 6.º n.º 6 a)) |
| 20 | Deductible IVA on fixed assets (ativos não correntes) |
| 21 / 23 / 22 | Deductible IVA on inventories at reduced / intermediate / normal rate *(campo-to-rate mapping unverified)* |
| 24 | Deductible IVA on other goods and services — **until 30 June 2027**; from 1 July 2027 split into campos 27 / 28 / 29 by rate |
| 40 / 41 | Regularizações a favor do sujeito passivo / do Estado (with annex) |
| 61 | Credit carried from the previous return |
| 93 / 94 | IVA to pay / credit in your favour |
| 95 / 96 | Refund requested / credit carried forward — campo 94 must be fully split between them |

*(Official sources: DP instructions via OCC/Macedo Vitorino; Portaria 298/2026/1 for the July 2027 changes. Freelancer field map walked in practice: `../portals/portal-financas.md`.)*

- **Refund (art. 22.º CIVA):** carry the credit forward by default. You may request a refund when, **12 months** after the period the credit started, it still exceeds **€250**; earlier if the credit exceeds **€3,000**, or on cessation / moving to an exempt regime (minimum €25). AT pays by the end of the 2nd month after the request; it can demand a guarantee above €30,000. *(official source: art. 22.º n.º 5–8 CIVA)*

### Recapitulativa

- **Trigger:** regime normal **and** at least one intra-EU B2B service (art. 6.º n.º 6 a)) or intra-EU supply of goods in the period. Art. 53.º taxpayers are dispensed for operations from 1 July 2025. *(official source: art. 29.º n.º 1 i) CIVA; Ofício Circulado 25062/2025 ponto 28)*
- **Due a month before the IVA return** for quarterly filers (two months for Q2). Walkthrough and the campo 19 = campo 7 check: [`../portals/portal-financas.md`](../portals/portal-financas.md) and [`../routines/iva-recapitulativa.md`](../routines/iva-recapitulativa.md).

## How to do it

1. Decide the regime with last year's **PT-located** turnover, not total turnover.
2. In art. 53.º, track the running PT-located total each month. The invoice that takes the year's total above €18,750 already carries IVA — check the headroom before issuing each PT invoice (`../routines/iva-threshold-watch.md`). *(official source: art. 58.º n.º 4 b) CIVA; Ofício Circulado 25062/2025 ponto 20 b), Exemplo 6)*
3. Per invoice, pick the row in the table above; set the IVA/motivo field on the recibo accordingly (see `recibos-verdes.md`).
4. Regime normal, each quarter: classify supplier invoices in e-fatura → fill the declaração periódica → file the recapitulativa first if campo 7 > 0.

## Gotchas

- **"I bill €40k so I can't be exempt."** Since 1 July 2025 only PT-located turnover counts. A freelancer billing mostly foreign businesses can be in art. 53.º. Check the €15,000 against M10-type invoices only.
- **Mid-year crossing is immediate.** The invoice that takes the year above €18,750 must already include IVA; the alteração follows within 15 business days.
- **M40 vs M99 for non-EU businesses.** Portal options and secondary guides disagree; AT's own gov.pt guide uses the autoliquidação/art. 6.º n.º 6 wording for non-EU clients too. Use M40 for business clients, M44 for art. 6.º n.º 8 services to non-EU individuals. *(unverified — confirm the label on the recibo form)*
- **Art. 53.º freelancers buying services from abroad** (software, ads) may still have to self-assess IVA on those purchases and file a declaração periódica for that period. *(unverified — OCC Guia Q27 addresses this; read it before assuming you're exempt)*
- **gov.pt's freelancer guide is out of date in places** — it still lists the old 10th/15th DP deadlines, a 5% Madeira reduced rate, a 3-year lock on the monthly option and a recapitulativa obligation for art. 53.º. The CIVA text after DL 35/2025 and DL 49/2025 wins.
- **Campo 24 disappears on 1 July 2027.** Any template or agent prompt that hardcodes campo 24 needs updating then.

## Sources

- CIVA art. 53.º: https://info.portaldasfinancas.gov.pt/pt/informacao_fiscal/codigos_tributarios/civa_rep/Pages/artigo-53-o-do-civa.aspx
- CIVA art. 58.º: https://info.portaldasfinancas.gov.pt/pt/informacao_fiscal/codigos_tributarios/civa_rep/Pages/iva58.aspx
- CIVA art. 41.º: https://info.portaldasfinancas.gov.pt/pt/informacao_fiscal/codigos_tributarios/civa_rep/Pages/iva41.aspx
- CIVA art. 36.º: https://info.portaldasfinancas.gov.pt/pt/informacao_fiscal/codigos_tributarios/civa_rep/Pages/iva36.aspx
- CIVA art. 22.º: https://info.portaldasfinancas.gov.pt/pt/informacao_fiscal/codigos_tributarios/civa_rep/Pages/iva22.aspx
- Decreto-Lei 35/2025: https://diariodarepublica.pt/dr/detalhe/decreto-lei/35-2025-912066244
- Ofício Circulado 25062/2025 (text reproduced): https://www.grupovidaeconomica.pt/pt-pt/pequenas-empresas-tem-novo-regime-especial-de-isencao-do-iva
- Ofício Circulado 25045/2024 (regional rates): https://at.madeira.gov.pt/ficheiros/Oficio_circulado_25045_2024.pdf
- Portaria 298/2026/1 (new DP model): https://files.diariodarepublica.pt/1s/2026/07/13600/0002300051.pdf
- Agenda Fiscal 2026: https://info.portaldasfinancas.gov.pt/pt/apoio_contribuinte/calendario_fiscal/Documents/Obrigacoes_pagamento.pdf
- OCC — Guia prático art. 53.º (Jul 2025): https://www.occ.pt/sites/default/files/public/2025-07/Guia_Pratico_IVAa.pdf
- OCC — Alterações à DP (Jul 2026): https://www.occ.pt/sites/default/files/public/2026-07/dapiva.pdf
- Secondary: Moloni / InvoiceXpress (exemption-code table), Doutor Finanças (calendário fiscal 2026), Macedo Vitorino (DP instructions)
