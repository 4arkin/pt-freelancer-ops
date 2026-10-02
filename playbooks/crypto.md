# Crypto

> **Applies to:** Portuguese tax resident who holds, trades, stakes, mines or gets paid in crypto
> **Last verified:** 2026-10-02

Since 1 January 2023 (OE 2023, Lei 24-D/2022) the CIRS taxes crypto explicitly, in three categories: **G** (gains on disposal), **E** (passive rewards such as staking) and **B** (crypto as a business: trading as an activity, mining, validation). The headline rules: gains on crypto held **≥ 365 days** are excluded from tax but still declared; shorter holdings pay **28%**; crypto-for-crypto swaps aren't taxed at the swap. From 2026, platforms report your transactions to AT under DAC8, so your declaration will be compared with a third-party file.

Treat everything below the law text as provisional. Practice is young, there is little AT doctrine, and several points are contested. Paragraph numbers in art. 10.º CIRS moved on 20 May 2026 (DL 97/2026). Older guides and the 2026 form instructions still cite the old n.º 19–22, which are now n.º 22–25.

## Rules

### What counts

- **Criptoativo:** any digital representation of value or rights that can be transferred or stored electronically using distributed-ledger or similar technology. **Unique, non-fungible tokens (NFTs) are excluded.** *(official source: art. 10.º n.º 20–21 CIRS)*
- Crypto that qualifies as a **valor mobiliário** (security token) follows the securities rules instead (28%, no 365-day exclusion). *(official source: AT "Tributação de produtos financeiros", ch. 11)*

### Category G — selling (the common case)

| Situation | Treatment | Basis |
|---|---|---|
| Sold for fiat (or goods/services) after **< 365 days** | Gain taxed at **28%**, or englobamento by option | art. 10.º n.º 1 k), art. 72.º n.º 1 c) CIRS *(official source)* |
| Sold after **≥ 365 days** | Gain **and loss** excluded from tax — **still declared** (Anexo G1) | art. 10.º n.º 22 *(official source)* |
| Swapped for another crypto | **No tax at the swap.** The new coin inherits the old coin's acquisition value (and, by most readings, its acquisition date) | art. 10.º n.º 23 *(official source; date carry-over unverified)* |
| Counterparty or platform in a non-EU/EEA jurisdiction with no treaty or tax-info agreement | 365-day exclusion and swap neutrality **don't apply** — taxed regardless of holding period (Anexo G quadro 18B) | art. 10.º n.º 24 *(official source — the text still cross-refers to "n.os 19 e 20"; read as 22–23)* |
| You stop being PT resident | Treated as a sale at market value (exit tax) for holdings < 365 days | art. 10.º n.º 25; art. 43.º n.º 12 *(official source)* |

- **Gain** = market value at disposal − acquisition value − necessary expenses of buying and selling (fees). *(official source: AT guide ch. 11; Anexo G Q18 instructions)*
- **Cost basis = FIFO, per provider:** the units sold are the oldest acquired, computed separately for each exchange or custodian. *(official source: art. 43.º n.º 8 g) and n.º 9 CIRS)* Self-custody wallets aren't "providers"; how FIFO runs across them is unsettled. *(unverified)*
- **Holdings from before 2023 count:** the 365 days run from the real acquisition date, even if it was before 1 January 2023. *(official source: AT guide ch. 11)*
- **No mandatory englobamento for crypto.** The top-bracket rule for short-term gains (art. 72.º n.º 14) covers securities only. *(official source: art. 72.º n.º 14 text)*
- **Losses** on < 365-day holdings offset gains in the same year. They carry forward 5 years only if you opt for englobamento. *(official source: AT guide ch. 11)*

### Category E — staking and other passive rewards

- "Any form of remuneration from crypto operations" is capital income: **28%**, or englobamento; no Portuguese withholding. AT names **staking** as the example. *(official source: art. 5.º n.º 2 u) CIRS; AT guide ch. 11)*
- **Paid in crypto?** Then **nothing is taxed on receipt.** The reward is taxed as a Cat. G gain when you later dispose of it for fiat or goods. *(official source: art. 5.º n.º 11 CIRS; AT guide)* Some commercial guides still say staking is taxed at 28% on receipt — that contradicts the law text when the reward is paid in crypto.
- Rewards paid in fiat or stablecoin-redeemed-to-fiat are Cat. E in the year received. *(unverified for the stablecoin case)*
- **Acquisition value of rewards received in crypto** isn't set clearly by the law (the swap rule assumes something was given up). Zero is the conservative reading. *(unverified)*

### Category B — crypto as a business

- Business income includes **issuing crypto, mining, and validating transactions through consensus mechanisms** (art. 4.º n.º 1 o)), plus buying and selling as a commercial activity. *(official source: art. 4.º CIRS)* Running a validator node is in this list; delegating coins to someone else's validator usually isn't. *(unverified — line not drawn by AT)*
- **Regime simplificado coefficients:** **0.15** for crypto operations, **0.95** for mining. *(official source: art. 31.º n.º 1 a), d) CIRS; AT guide)* Validation rewards: 0.15 or 0.95 is unsettled. *(unverified)*
- **Needs an open activity** with the right CAE/art. 151.º code — see [`start-activity.md`](start-activity.md). Cat. B crypto goes in **Anexo B** and is englobado at the general rates.
- **Getting paid in crypto for your normal freelance work** doesn't change the category: it's your usual Cat. B service income, valued in EUR at receipt; the recibo is in EUR. A later sale of that crypto is a separate Cat. G event, with that EUR value as the acquisition value. *(unverified — inference from art. 3.º and 10.º)*

### Where it goes in the Modelo 3

| What | Annex · quadro | Note |
|---|---|---|
| < 365 days, Portuguese platform | **Anexo G Q18A** | needs the platform's NIF ("Entidade Gestora") |
| < 365 days, foreign platform | **Anexo J Q9.4A** (englobamento: Q9.4B) | country of the source; counterparty country column |
| ≥ 365 days (excluded) | **Anexo G1 Q7** | declared even though untaxed |
| Non-cooperative counterparty, any holding period | **Anexo G Q18B** | |
| Staking etc. paid in fiat | Anexo E (PT payer) / **Anexo J Q8A** (foreign) | 28% or englobamento |
| Business activity | **Anexo B** Q4 | coefficient 0.15 / 0.95 |
| Platform account | **Not** Anexo J Q11 — a crypto account isn't a deposit or securities account | *(unverified)* |

*(official source for quadro titles: Anexo G, G1, J instructions as reproduced in OCC "IRS 2026 – Preenchimento"; PT-vs-foreign platform split: unverified — Rankia, Taxclara and most guides; some put foreign ≥ 365-day sales in Anexo J Q9.4A instead of G1)*

### DAC8: what AT will receive

- **Lei 26/2026, de 3 de junho** transposed DAC8 (Directive 2023/2226). Crypto-asset service providers must identify users resident in Portugal and report them to AT. *(official source: DR, Lei 26/2026)*
- **Covers 2026 onwards. First report by 31 May 2027,** then yearly by 31 May. *(unverified — KPMG, Finbooks)*
- **What's reported:** name, NIF, residence; crypto↔fiat and crypto↔crypto exchanges; crypto payments; transfers to external wallets; gross amounts and market values. **Not reported:** your cost basis, holding period, or that the receiving wallet is yours. *(unverified — Finbooks summary of the law)*
- Penalties in the law fall on the platforms, not on you. Your exposure is the mismatch: AT will see gross volume where your Anexo G may show little or nothing. *(unverified — Finbooks)*
- **MiCA:** the transitional period ended **1 July 2026**. Platforms without an EU licence stopped serving EU clients. Export your history from any of them now. *(unverified — Finbooks, citing Leis 69/2025 and 70/2025)*

## How to do it

1. **Keep a ledger from day one:** date-time · asset · quantity · EUR value at that moment · fee · platform/wallet · type (buy, sell, swap, transfer, reward). Store exports in `records/<year>/irs/crypto/`.
2. **Every January, export** a full CSV and the annual tax report from every platform, plus on-chain history for self-custody wallets. Keep a list of your own wallet addresses, with proof of ownership.
3. **Compute per provider, FIFO:** for each disposal to fiat, pick the matching lots, the holding period and the gain. Carry swaps forward at the old cost.
4. **Split** the results into < 365 days (G Q18A / J Q9.4A), ≥ 365 days (G1 Q7), non-cooperative counterparties (G Q18B) and rewards (E / J Q8A).
5. **Decide englobamento** after simulating both ways. The choice drags in the whole category, Portuguese income included.
6. **Keep the file 4+ years** (the caducidade period). If AT compares your return with a DAC8 report, this file is your defence. *(unverified — general LGT caducidade; Finbooks)*

## Gotchas

- **"Over 365 days means I skip it."** No. The sale goes in Anexo G1 Q7. An undeclared sale that shows up in a platform report looks like evasion.
- **A swap isn't a sale — unless the counterparty is in a non-cooperative jurisdiction.** Then every swap is taxable.
- **Moving coins between exchanges restarts nothing, but it breaks FIFO bookkeeping.** FIFO runs per provider, and the receiving platform doesn't know your cost. Keep the transfer records.
- **Paying for something with crypto is a disposal** (a sale for goods/services). *(official source: AT guide — "alienação onerosa em dinheiro ou em espécie (exceto criptoativos)")*
- **Old article numbers.** Forms and guides from before 20 May 2026 cite art. 10.º n.º 19–22; the current numbers are 22–25.
- **Stablecoin exits:** converting to a stablecoin is a crypto-to-crypto swap (untaxed), not a cash-out. *(unverified — follows from the definition; no AT ruling found)*
- **Imposto do Selo** can hit crypto received for free (gifts, possibly airdrops) and some platform commissions. *(unverified — reported by secondary sources; check before relying on it)*

## Sources

- CIRS art. 4.º, 5.º, 10.º, 31.º, 43.º, 72.º: https://info.portaldasfinancas.gov.pt/pt/informacao_fiscal/codigos_tributarios/cirs_rep/Pages/irs10.aspx (change the number)
- AT — Tributação de produtos financeiros em sede de IRS, ch. 11 Criptoativos: https://info.portaldasfinancas.gov.pt/pt/apoio_contribuinte/Guias/Documents/Guia_Fiscal_produtos_financeiros.pdf
- Lei 24-D/2022 (OE 2023): https://diariodarepublica.pt
- Lei 26/2026, de 3 de junho (DAC8): https://diariodarepublica.pt/dr/detalhe/lei/26-2026-1129390702
- Portaria 104/2026/1 (Anexo J); Portaria 72-B/2025/1 (Anexos G, G1): https://diariodarepublica.pt/dr/detalhe/portaria/104-2026-1066993467
- OCC — IRS 2026, Preenchimento da declaração (Anexo G Q18, G1 Q7, J Q9.4A instructions): https://www.occ.pt/sites/default/files/public/2026-03/Essencial_IRS2026_DIG_final.pdf
- Secondary: KPMG "Transposição da DAC 8" (first report 31 May 2027); Finbooks "Reporte CASP vs IRS" (Aug 2026); Rankia, Taxclara, Tax-Wizard (annex split by platform)
