# Key figures

> **Applies to:** trabalhador independente, regime simplificado; IVA art. 53.º or regime normal
> **Last verified:** 2026-10-02

Every number the other playbooks use, in one place, with the year and a source per row. Rates and thresholds move with each Orçamento do Estado (OE 2026 = Lei 73-A/2025). When a new OE or IAS portaria is published, update this file first, then grep the playbooks for the old value.

## Rules

### Indicators

| Indicator | 2025 | 2026 | Source |
|---|---|---|---|
| IAS (indexante dos apoios sociais) | €522.50 | **€537.13** | Portaria 6-B/2025/1 *(unverified — via Montepio table)*; Portaria 480-A/2025/1 *(official source)* |
| Dedução específica (8.54 × IAS) — also the first item of the 15% test | €4,462.15 | **€4,587.09** | art. 25.º n.º 1 a) CIRS × IAS *(official source; euro values computed)* |
| Mínimo de existência | — | €12,880 | press, OE 2026 *(unverified)* |

### Segurança Social (trabalhador independente)

| Item | Value | Source |
|---|---|---|
| Contribution rate | **21.4%** (ENI 25.2%) | seg-social.pt FAQ, Código Contributivo art. 168.º *(official source)* |
| Relevant income | **70%** of services income · **20%** of goods sales and hotel/restaurant services | seg-social.pt FAQ *(official source)* |
| Minimum contribution | **€20/month** (2025, 2026) | seg-social.pt FAQ *(official source)* |
| Ceiling on monthly relevant income (12 × IAS) | €6,270.00 (2025) · **€6,445.56 (2026)** → max contribution ≈ €1,379.35/month (2026) | seg-social.pt FAQ *(official source)*; max contribution — Montepio *(unverified)* |
| Adjustment of relevant income | −25% … +25% in 5% steps, per declaration | Sage *(unverified)*; see `../portals/seg-social-direta.md` |
| First enquadramento | 1st day of the 12th month after the start month (start 10 Jan 2025 → 1 Jan 2026); early opt-in (antecipação) via a declaração trimestral in a declarative month | ISS FAQ v09 Q1–Q2 *(official source)* |
| Quarterly declaration | last day of Jan · Apr · Jul · Oct | gov.pt freelancer guide *(official source)* |

### IVA

| Item | 2025 | 2026 | Source |
|---|---|---|---|
| Art. 53.º exemption — prior-year **PT-located** turnover | €15,000 | **€15,000** | art. 53.º n.º 1 CIVA (DL 35/2025) *(official source)* |
| Art. 53.º in-year exit (threshold + 25%) | €18,750 | **€18,750** | art. 58.º n.º 2 b) CIVA *(official source)* |
| EU cross-border SME scheme — EU-wide turnover | €100,000 (from 1 Jul 2025) | €100,000 | art. 53.º n.º 2 a) CIVA *(official source)* |
| Monthly declaração periódica if turnover ≥ | €650,000 | €650,000 | art. 41.º CIVA *(official source)* |
| Rates — Continent | 23 / 13 / 6 % | 23 / 13 / 6 % | art. 18.º CIVA *(official source)* |
| Rates — Madeira | 22 / 12 / 4 % | 22 / 12 / 4 % | Ofício Circulado 25045/2024 *(official source)* |
| Rates — Açores | 16 / 9 / 4 % | 16 / 9 / 4 % | Ofício Circulado 25045/2024 *(official source)* |
| Refund: credit after 12 months > / any time > | €250 / €3,000 | €250 / €3,000 | art. 22.º n.º 5–6 CIVA *(official source)* |
| Quarterly DP deadline / payment (2026) | — | 20 Feb · 20 May · 21 Sep · 20 Nov / 25th of same month | art. 41.º CIVA; Agenda Fiscal 2026 *(official source)* |

### IRS — Categoria B

| Item | Value | Source |
|---|---|---|
| Regime simplificado ceiling | **€200,000** gross (exit after 2 consecutive years, or > €250,000 once) | art. 28.º n.º 2, 6 CIRS *(official source)* |
| Coefficient — art. 151.º professional services | **0.75** (0.375 start year, 0.5625 next year, if no Cat. A/H income) | art. 31.º n.º 1 b), 10 CIRS *(official source)* |
| 15% expense-justification test | applies to 0.75 and 0.35 income | art. 31.º n.º 13 CIRS *(official source)* |
| Withholding — art. 151.º activities | **23%** (2025, 2026; 25% until 2024) | art. 101.º n.º 1 b) CIRS, Lei 45-A/2024 *(official source)* |
| Withholding — other Cat. B services / IP income / IFICI | 11.5% / 16.5% / 20% | art. 101.º n.º 1 CIRS *(official source)* |
| Withholding dispensa | expected annual Cat. B < **€15,000**; or each withholding < **€25** (from 1 Jul 2025) | art. 101.º-B CIRS *(official source)* |
| IRS Jovem cap (55 × IAS) | €28,737.50 (2025) · **€29,542.15 (2026)** | art. 12.º-B n.º 5 CIRS × IAS *(official source; see conflict below)* |
| IFICI rate / registration deadline | 20% / **15 Jan** of the year after becoming resident (15 Jan 2027 for 2026 arrivals) | art. 58.º-A EBF; Portaria 352/2024/1 *(official source)* |

### IRS general rates (art. 68.º CIRS)

| Escalão | 2026 income (OE 2026) | Rate | Parcela a abater | 2025 income (Lei 55-A/2025) | Rate |
|---|---|---|---|---|---|
| 1 | up to €8,342 | 12.5% | — | up to €8,059 | 12.5% |
| 2 | €8,342 – €12,587 | 15.7% | €266.94 | €8,059 – €12,160 | 16.0% |
| 3 | €12,587 – €17,838 | 21.2% | €959.26 | €12,160 – €17,233 | 21.5% |
| 4 | €17,838 – €23,089 | 24.1% | €1,476.45 | €17,233 – €22,306 | 24.4% |
| 5 | €23,089 – €29,397 | 31.1% | €3,092.77 | €22,306 – €28,400 | 31.4% |
| 6 | €29,397 – €43,090 | 34.9% | €4,209.94 | €28,400 – €41,629 | 34.9% |
| 7 | €43,090 – €46,566 | 43.1% | €7,743.27 | €41,629 – €44,987 | 43.1% |
| 8 | €46,566 – €86,634 | 44.6% | €8,441.48 | €44,987 – €83,696 | 44.6% |
| 9 | over €86,634 | 48.0% | €11,387.17 | over €83,696 | 48.0% |

Taxable income (rendimento coletável), not gross. Taxa adicional de solidariedade: 2.5% on €80,000–€250,000, 5% above. *(PwC Guia Fiscal 2026, Montepio, Santander — all consistent; DRE text of Lei 73-A/2025 not opened → unverified against the law itself)*

### IRS — capital income, rents, crypto

| Item | Value | Source |
|---|---|---|
| Cat. E and Cat. G autonomous rate | **28%**; 35% for listed tax havens | art. 72.º n.º 1, 12 CIRS *(official source)* |
| Cat. F (rents) | 25% residential, 28% other; long leases 15 / 10 / 5%; moderate rent 10% (≤ €2,300/month, 2026–2029) | art. 72.º CIRS; EBF art. 45.º-C (DL 97/2026) *(official source)* |
| Crypto held ≥ 365 days | gain excluded (still declared) | art. 10.º n.º 22 CIRS *(official source)* |

### Pagamentos por conta (art. 102.º CIRS)

| Item | Value | Source |
|---|---|---|
| Total PPC | **65%** of [C × RLB/RLT − R] from the year-before-last liquidação (76.5% until 2024) | art. 102.º n.º 2 CIRS, Lei 45-A/2024 *(official source)* |
| Not due | if each instalment < **€50**; you may stop/reduce if withholdings + PPC already cover the year's tax (interest if short by > 20%) | art. 102.º n.º 3–6 CIRS *(official source)* |
| Dates (law) | by the 20th of **July, September, December** | art. 102.º n.º 1 CIRS *(official source)* |
| Dates 2026 | **20 Jul · 21 Sep · 21 Dec** (20 Sep and 20 Dec are Sundays) | Agenda Fiscal 2026 *(official source)* |
| Dates 2027 | 20 Jul · 20 Sep · 20 Dec (all weekdays) | art. 102.º n.º 1 *(derived; check Agenda Fiscal 2027)* |

### Penalties

| Item | Value | Source |
|---|---|---|
| Late or missing declaration (IRS, IVA DP, recapitulativa) | coima **€150 – €3,750** | art. 116.º RGIT *(official source: DRE Lexionário)* |
| Late declaration filed on your own initiative, before any auto de notícia, complaint or inspection | coima reduced to **12.5% of the legal minimum**; minimum payable **€25** | art. 30.º n.º 1 a) RGIT (Lei 7/2021, from 1 Jan 2022); art. 26.º n.º 3 RGIT *(official source)* |
| Late or missing início / alteração / cessação declaration | coima **€300 – €7,500** | art. 117.º n.º 2 RGIT *(official source)* |
| Late update of NIF data (e.g. address) | €75 – €375 | art. 117.º n.º 4 RGIT *(official source)* |
| Missing fiscal representative when required | €75 – €7,500 | art. 124.º RGIT via Ofício Circulado 90057/2022 *(official source)* |

### e-fatura and IRS calendar

| Step | For 2025 income (in 2026) | For 2026 income (in 2027) | Source |
|---|---|---|---|
| Classify invoices / activity expenses, agregado changes | by **2 Mar 2026** (end of Feb on a weekend) | end of Feb → 28 Feb 2027 is a Sunday → **1 Mar 2027** *(derived)* | art. 31.º n.º 15, 78.º-B n.º 5 CIRS (DL 49/2025) *(official source)*; 2026 date — Observador/CGD citing AT |
| AT publishes deduction amounts | by 15 Mar | by 15 Mar | art. 78.º-B n.º 6 CIRS *(official source)* |
| Complaint on deduction amounts | by 31 Mar | by 31 Mar | art. 78.º-B n.º 7 CIRS *(official source)* |
| Opt into contabilidade organizada | by 31 Mar | by 31 Mar | art. 28.º n.º 4 CIRS *(official source)* |
| Modelo 3 filing | 1 Apr – 30 Jun | 1 Apr – 30 Jun | art. 60.º CIRS *(official source via OCC)* |

## How to do it

1. Each January, check the new IAS portaria (Diário da República) and the OE; recompute every row marked "× IAS".
2. Download that year's **Agenda Fiscal** from the Portal and replace the dated rows.
3. Search the repo for the old figures (`grep -rn "537,13\|537.13"` etc.) and update the playbooks that quote them.

## Gotchas

- **PPC 76.5% vs 65%.** Many guides (including recent ones) still say 76.5%. The CIRS text since Lei 45-A/2024 says 65%. Use the amount on your nota de liquidação, not either formula.
- **PPC month changes.** No legal change to the months was found; what moves is the day (20th → next business day). If a source claims the third PPC moved out of December, check the current Agenda Fiscal — the 2026 edition still lists 21 December.
- **IRS Jovem 2026 cap:** oe.gov.pt says €29,377.15; 55 × €537.13 = €29,542.15 (also in press). Treat the law's formula as authoritative.
- **gov.pt freelancer guide** states a 29.6% SS rate and a 5% Madeira reduced IVA rate — both contradict seg-social.pt (21.4%) and Ofício Circulado 25045/2024 (4%).
- **gov.pt says employed freelancers must declare when "rendimentos ≥ €2,148.52 por mês"** — read that as *rendimento relevante* (70% of gross), i.e. above €9,207.94 gross services per quarter in 2026, per the ISS FAQ, which governs. gov.pt's "€2,090/trimestre" figure is wrong.
- **Brackets are for taxable income**, after the coefficient and deductions — not for what you invoiced.

## Sources

- Portaria 480-A/2025/1 (IAS 2026): https://diariodarepublica.pt/dr/detalhe/portaria/480-a-2025-993056222
- seg-social.pt — FAQ Novo Regime dos Trabalhadores Independentes: https://www.seg-social.pt/storage1/files/Perguntas-Frequentes---Novo-regime-dos-Trabalhadores-Independentes--v09-eo5R_UXwpLhcDifan-xPgA.pdf
- gov.pt — Obrigações fiscais e pagamentos: https://www.gov.pt/guias/trabalhar-por-conta-propria-guia-para-trabalhadores-independentes/obrigacoes-fiscais-e-pagamentos-impostos-e-contribuicoes
- CIRS art. 25.º, 28.º, 31.º, 78.º-B, 101.º, 101.º-B, 102.º, 12.º-B: https://info.portaldasfinancas.gov.pt/pt/informacao_fiscal/codigos_tributarios/cirs_rep/Pages/irs102.aspx (and sibling pages)
- CIVA art. 22.º, 41.º, 53.º, 58.º: https://info.portaldasfinancas.gov.pt/pt/informacao_fiscal/codigos_tributarios/civa_rep/Pages/iva41.aspx (and sibling pages)
- Ofício Circulado 25045/2024 (regional IVA rates): https://at.madeira.gov.pt/ficheiros/Oficio_circulado_25045_2024.pdf
- Agenda Fiscal 2026 — Obrigações de pagamento: https://info.portaldasfinancas.gov.pt/pt/apoio_contribuinte/calendario_fiscal/Documents/Obrigacoes_pagamento.pdf
- EBF art. 58.º-A: https://info.portaldasfinancas.gov.pt/pt/informacao_fiscal/codigos_tributarios/bf_rep/Pages/EBF58A.aspx
- DRE Lexionário — art. 116.º RGIT: https://diariodarepublica.pt/dr/lexionario/termo/falta-ou-atraso-declaracoes-fiscais
- PwC Guia Fiscal 2026 — IRS: https://www.pwc.pt/pt/pwcinforfisco/guia-fiscal/2026/irs.html
- Secondary: Montepio (IAS history, SS max contribution, 2025 brackets), Santander Salto (brackets, coima reduction), Observador / CGD (2 Mar 2026), CRN Contabilidade (mínimo de existência, solidarity surcharge)
