# Regime simplificado (IRS Categoria B)

> **Applies to:** trabalhador independente with gross Cat. B income ≤ €200,000 who hasn't opted for contabilidade organizada
> **Last verified:** 2026-10-02

In regime simplificado you don't deduct real expenses. AT multiplies your gross income by a coefficient (0.75 for art. 151.º professional services) and taxes that. The catch is the **15% rule**: for services, a quarter of the presumed 25% expense allowance must be backed by actual, documented items — otherwise the shortfall is added back. For most solo freelancers below ~€30k gross the dedução específica alone covers it; above that, classifying expenses in e-fatura starts to matter.

## Rules

### Who's in it

- Regime simplificado applies if prior-year gross Cat. B income ≤ **€200,000**; in the start year, if the estimate in the início declaration is ≤ €200,000. *(official source: art. 28.º n.º 2 e 10 CIRS)*
- It **ends** only when €200,000 is exceeded in **two consecutive years**, or by more than 25% (> €250,000) in one year; organizada applies from the following year. *(official source: art. 28.º n.º 6 CIRS)*
- **Opting into organizada:** in the início declaration, or by **end of March** via declaração de alterações, effective that same year; valid until you file another alteração by end of March. *(official source: art. 28.º n.º 3–5 CIRS)*
- **Single-client option:** if all income comes from one entity, you can opt each year to be taxed under Cat. A rules (Anexo B quadro 5) — except services by a partner to a fiscally transparent company. Q5 campo 01/02 = single entity yes/no; 03/04 = opt for Cat. A rules or not. *(official source: art. 28.º n.º 8 CIRS; campo numbers secondary — OCC manual)*

### Coefficients (art. 31.º n.º 1 CIRS) *(official source)*

| Income | Coefficient |
|---|---|
| Professional activities **in the art. 151.º table** | **0.75** |
| Other services (incl. code 1519) | 0.35 |
| Sales of goods; restaurants; hotels and AL hostels (hospedagem); crypto operations except mining | 0.15 |
| Alojamento local (moradia/apartamento) outside containment areas | 0.35 |
| IP licensing / know-how, crypto mining, capital income tied to the activity, net capital gains | 0.95 |
| Subsidies not for operations | 0.30 |
| Operating subsidies and other Cat. B income | 0.10 |
| Services to a company you own ≥ 5% of (or family ≥ 25%), or to a transparent company you're a partner in | **1.00** |
| Alojamento local (moradia/apartamento) in a containment area | 0.50 |

### Start-of-activity reduction

- Coefficients for **0.75, 0.35 and 0.10** income are cut by **50% in the start year** and **25% in the following year** — so 0.75 → **0.375** then **0.5625**; 0.35 → 0.175 then 0.2625. *(official source: art. 31.º n.º 10 CIRS)*
- Only if you have **no Cat. A (employment) or Cat. H (pension) income** in those years. *(official source: art. 31.º n.º 10 CIRS)* *(whether salary in one year also affects the other year is unsettled — see `employed-and-freelance.md`)*
- Not available if you ceased an activity less than **5 years** before. *(official source: art. 31.º n.º 11 CIRS)*

### The 15% rule (art. 31.º n.º 13 CIRS)

Applies to income under the **0.75 and 0.35** coefficients. Added to taxable income: **15% × gross service income − documented items** (only if positive). Documented items: *(official source)*

| Item | How AT knows |
|---|---|
| a) **Dedução específica** = 8.54 × IAS = **€4,462.15 (2025)** / **€4,587.09 (2026)** — or, if higher, your mandatory SS contributions for the activity not already deducted under n.º 2 | Automatic |
| b) Staff costs | Your Segurança Social/AT salary reporting |
| c) **Rent of premises** used for the activity | Invoices/receipts communicated to AT |
| d) 1.5% of the VPT of property you own and use for the activity (4% for hotel/AL) | Property identified in the Portal by end of February |
| e) **Other activity expenses on e-fatura** — consumables, electricity, water, transport, communications, rents, legal, insurance, leasing, professional-body fees, travel and accommodation | Invoices with your NIF, **classified as activity expenses** in e-fatura |
| f) Imports and intra-EU acquisitions of goods and services for the activity | Your declarations |

- Items c), d), e) that are only **partly** used for the activity count at **25%**. *(official source: art. 31.º n.º 14 CIRS)*
- Classification deadline: invoices and properties must be identified in the Portal **by the end of February of the following year** (changed from 25 February by DL 49/2025). *(official source: art. 31.º n.º 15 CIRS)*
- **Rule of thumb:** with the dedução específica alone, the 15% is fully covered up to gross service income of about **€29,747 (2025)** / **€30,580 (2026)** (dedução ÷ 0.15). Above that, each euro of classified activity expense saves the add-back. *(derived from the figures above)*

### Social security contributions

- Mandatory SS contributions paid for the activity that **exceed 10% of gross income** can be deducted from the coefficient-reduced income, unless deducted elsewhere. *(official source: art. 31.º n.º 2 CIRS)*

### How Anexo B carries it

| Quadro | Campo | Content |
|---|---|---|
| Q1 | 01 | Regime simplificado |
| Q3 | 07 | Your art. 151.º activity code |
| Q3 E.1 | 18 / 19 | IRS Jovem option (see `irs-special-regimes.md`) |
| Q4 | **403** | Gross income from art. 151.º activities (0.75); other service codes have their own campos |
| Q5 | — | All income from one entity? / Cat. A option |
| Q6 | 601 / 602 | IRS withheld / pagamentos por conta |
| Q13B | — | Gross income of the last years |
| Q17A | 17001 | Mandatory SS contributions — AT pre-fills |
| Q17C | 17051–17054 | Staff · premises rent · other expenses partly assigned (25%) · fully assigned (100%) — AT pre-fills from e-fatura; tick campo 01 only if you want AT to ignore the e-fatura values and use yours |

*(verified in practice — see `../portals/portal-financas.md`; Q17C campo 01 behaviour: unverified — Deco Proteste)*

## How to do it

1. **During the year:** ask for invoices with your NIF on everything activity-related.
2. **January–February:** e-fatura → Adquirente → classify each pending invoice as activity (total or partial) or personal. Deadline: last day of February (2 March 2026 for 2025 invoices, because 28 Feb fell on a weekend). *(official source for the rule; 2026 date — CGD/Observador citing AT)* Details: `../routines/efatura-year-end.md`.
3. **March:** decide whether contabilidade organizada beats the coefficient (real expenses > 25% of gross, for 0.75 activities). If yes, declaração de alterações by **31 March**.
4. **April–June:** Anexo B. Check that Q17C matches what you classified; the 15% add-back is computed by AT in the liquidação.

## Gotchas

- **Classifying nothing in e-fatura.** Above ~€30k gross, unclassified expenses become taxable income via the 15% add-back.
- **Mixed-use expenses count at 25%, not 100%.** Home internet split "50/50" is still 25% for this test.
- **The first-year 50% cut disappears with a salary.** Any Cat. A income in the start year (even a short contract) kills the reduction for that year.
- **Billing your own company.** Services to a company you hold ≥ 5% of are taxed at coefficient **1.00** — no presumed expenses at all.
- **Picking 1519** when your service is in the art. 151.º table — or the reverse — changes 0.35 ↔ 0.75 and can be challenged; check the table (Portaria 1011/2001).
- **Assuming €200,000 in one year pushes you out.** It takes two consecutive years, or one year above €250,000.

## Sources

- CIRS art. 28.º: https://info.portaldasfinancas.gov.pt/pt/informacao_fiscal/codigos_tributarios/cirs_rep/Pages/irs28.aspx
- CIRS art. 31.º: https://info.portaldasfinancas.gov.pt/pt/informacao_fiscal/codigos_tributarios/cirs_rep/Pages/irs31.aspx
- CIRS art. 25.º (dedução específica = 8.54 × IAS): https://info.portaldasfinancas.gov.pt/pt/informacao_fiscal/codigos_tributarios/cirs_rep/Pages/irs25.aspx
- Portaria 480-A/2025/1 (IAS 2026): https://diariodarepublica.pt/dr/detalhe/portaria/480-a-2025-993056222
- Portaria 1011/2001 (art. 151.º table): https://diariodarepublica.pt/dr/legislacao-consolidada/portaria/2001-177307831
- Secondary: Deco Proteste "IRS 2026: como preencher" (Anexo B quadros); Observador / CGD (2 March 2026 e-fatura date)
