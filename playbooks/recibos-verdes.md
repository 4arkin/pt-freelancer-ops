# Recibos verdes (Faturas e Recibos)

> **Applies to:** trabalhador independente issuing on the Portal das Finanças (not certified invoicing software)
> **Last verified:** 2026-10-02

"Recibo verde" is shorthand for the documents a Categoria B worker issues in the Portal's free Faturas e Recibos app. Every amount received from a client must be documented there (or in certified software), including advances and expense reimbursements. The form decides three things at once: IVA treatment, IRS withholding, and which date the income belongs to. Mistakes are fixable only by annulling and re-issuing, so get the fields right the first time.

## Rules

### Which document

| Document | Use when | IRS withholding field |
|---|---|---|
| **Fatura-recibo** | Payment received at (or before) issue | Yes, on the document |
| **Fatura** | Service done / billed, not yet paid — set a *data de vencimento* | No — withholding is set on the recibo |
| **Recibo** | Payment of a fatura already issued | Yes — only the IRS field is filled |

*(official source: art. 115.º n.º 1 a) CIRS; gov.pt freelancer guide)*

- **Obligation:** issue for **every** amount received, "ainda que a título de provisão, adiantamento ou reembolso de despesas", in AT's apps or under the CIVA invoicing rules with separate quittance. *(official source: art. 115.º n.º 1 CIRS, DL 49/2025)*
- **Motivo de emissão:** "Pagamento dos bens ou dos serviços", "Adiantamento", or "Adiantamento para pagamento de despesas por conta e em nome do cliente" — the last two don't allow IRS withholding. *(unverified — Vendus guide, 2025)*

### When to issue

- **Fatura:** by the **5th business day** after the service is completed (when IVA becomes due, art. 7.º). *(official source: art. 36.º n.º 1 a) CIVA)*
- **Intra-EU B2B services** (art. 6.º n.º 6 a)): by the **15th day of the following month**. *(official source: art. 36.º n.º 1 b) CIVA)*
- **Advance payments** or payment on completion: on the **date of receipt**. *(official source: art. 36.º n.º 1 c) CIVA)*
- The 5-business-day rule comes from CIVA; art. 53.º-exempt freelancers are still bound to invoice (art. 57.º CIVA) and the same deadlines are generally applied. *(unverified as applied to art. 53.º — CIVA art. 36.º refers to art. 29.º invoicing)*

### Fields that matter

- **Data de transação** — the service (or payment) date. If it differs from the issue date, the invoice must show the service date. *(official source: art. 36.º n.º 5 f) CIVA)* IVA periods count by **issue date**; SS counts by **service month** — see `../calendar.md`. *(verified in practice)*
- **Atividade exercida** — pick the code this service belongs to if you have several (drives the coefficient). *(official source: gov.pt guide)*
- **Adquirente:**
  - PT client: NIF fills the rest.
  - EU client: "cliente estrangeiro" / country / VAT number with prefix, checked on VIES; operation nature "Intra-UE". *(official source: gov.pt freelancer guide)* The printed document drops the country prefix — keep it yourself for the recapitulativa. *(verified in practice)*
  - Non-EU client: country + foreign tax ID; nature "Fora do território nacional". gov.pt suggests the generic NIF 999999990 when the client has no PT NIF. *(official source: gov.pt guide — the generic-NIF advice looks odd for a business client; prefer the client's own tax ID in NIF Estrangeiro)*
  - Final consumer, no NIF: adquirente box may be left empty. *(unverified — Vendus)*
- **IVA / Motivo de isenção** per line (several lines with different rates are allowed). Choose by client type — table in `iva-regimes.md`:
  - **M10** "IVA – regime de isenção" (art. 53.º); also the transmitente box's IVA regime selector.
  - **M07** "Isento artigo 9.º do CIVA" (exempt-by-nature services: health, education…).
  - **M40** "IVA – autoliquidação" (art. 6.º n.º 6 a) CIVA, a contrário) — business clients abroad.
  - **M44** "IVA – Regras específicas – artigo 6.º" — art. 6.º exception rules (e.g. listed services to non-EU individuals).
  *(official source: AT "Códigos de Motivo de Isenção" table, 2026 edition, as reproduced by Moloni/InvoiceXpress)*
- **Description** — say what you actually did. AT reads descriptions to judge your real activity; you can't edit them later. *(official source — see `../portals/portal-financas.md`)*

### Retenção na fonte (IRS withholding)

- **Who withholds:** only clients that have or must have **contabilidade organizada** (PT companies, PT freelancers in organizada). Individuals and foreign entities without a PT establishment don't. *(official source: art. 101.º n.º 1 CIRS)*
- **PT client without contabilidade organizada** (private individual, freelancer in regime simplificado): no withholding obligation — use the Portal's "Sem retenção – Art. 101.º, n.º 1 do CIRS" option, not the 101.º-B dispensa. *(official source for the rule: art. 101.º n.º 1 CIRS; option label unverified)*
- **Rate for art. 151.º table activities: 23%** (2025 and 2026; was 25% until 2024). Other Cat. B services: **11.5%**; IP/know-how income: **16.5%**; IFICI beneficiaries: **20%**. *(official source: art. 101.º n.º 1 CIRS, Lei 45-A/2024; unchanged in the May 2026 consolidated text)*
- **Applied to the amount before IVA.** *(official source: art. 101.º n.º 4 CIRS)*
- **Dispensa (art. 101.º-B n.º 1 a)):** optional if you expect Cat. B income for the year **below €15,000** (2025 and 2026) — **all Categoria B income, foreign clients included**, not the PT-located IVA turnover; an art. 53.º freelancer with large foreign billing may still suffer withholding. Not available if last year's income reached €15,000; ends the month after you reach it. Must be claimed on the document: "Sem retenção, nos termos do n.º 1 do artigo 101.º-B do Código do IRS". *(official source: art. 101.º-B n.º 2–3 CIRS)*
- **Small amounts:** no withholding when the withholding itself would be **under €25** (since 1 July 2025). *(official source: art. 101.º-B n.º 1 d) CIRS, DL 49/2025)*
- **Documented expense reimbursements** attributable to one client: dispensa available. *(official source: art. 101.º-B n.º 1 b) CIRS)*
- **EU/non-EU business client:** IRS field "Sem retenção – Não residente sem estabelecimento". *(verified in practice)*

### Annulling

- Path: Faturas e Recibos → Consultar → select the document → **Anular** → reason "Anulação da operação" or "Resolução, rescisão ou redução do contrato". *(unverified — Vendus guide)*
- Annulled numbers stay as gaps in your series (FR/4, FR/6). *(verified in practice)*
- After annulling, re-issue a correct document; don't try to "net" an error with a new recibo. *(unverified — practitioner practice)* Whether the client must accept an annulment, and whether the Portal now offers credit notes for its own documents, wasn't confirmed. *(unverified)*

### Exports

- Annual and quarterly totals: Faturas e Recibos → Consultar, plus the **SIRE** CSV export. *(verified in practice — see `../portals/portal-financas.md`)*

## How to do it

1. Portal → search "Faturas e Recibos" (or Todos os Serviços → Faturas e Recibos) → **Emitir**. *(official source: gov.pt guide)*
2. **Fatura ou Fatura-Recibo** → Data de transação → Tipo.
3. Transmitente: check pre-filled data; pick **Atividade exercida**; set IVA regime if exempt.
4. Adquirente: NIF / country / foreign VAT; Data de vencimento (fatura only).
5. Motivo de emissão.
6. Produtos, serviços ou outros → **Adicionar** → Tipo "Serviço" → Descrição → quantity → preço unitário (before IVA) → IVA rate or 0% + Motivo de isenção → Guardar.
7. Fatura-recibo only: **IRS** box → base and rate, or the dispensa / não-residente reason; **meio de pagamento** → Adicionar.
8. **Emitir** → confirm → save the PDF. It also appears in the client's area if you entered their NIF.
9. When a fatura is paid: Emitir → **Recibo** → select the fatura → IRS field → Emitir.

Client and service catalogues (Emitir → Clientes / Produtos, serviços ou outros) save retyping. *(unverified — Vendus guide)*

## Gotchas

- **Fatura-recibo issued on the day the client *promises* to pay** — you've now declared money you don't have, and the withholding is locked. Use fatura → recibo when payment is later.
- **Withholding on a foreign client.** Foreign entities don't withhold PT IRS; selecting 23% leaves you with a phantom credit that won't match anything.
- **Claiming the €15,000 dispensa after crossing it.** The dispensa ends the month after you hit €15,000; the next PT corporate client must withhold.
- **Missing the country prefix** on the EU VAT number — the recapitulativa and VIES checks need it. *(verified in practice)*
- **Issue date vs service month** — a March job invoiced on 7 April is Q2 for IVA and Q1 for SS. *(verified in practice)*
- **Weekend-blind 5-day rule** — the deadline is business days; a Friday service gives you until the following Friday.

## Sources

- CIRS art. 101.º: https://info.portaldasfinancas.gov.pt/pt/informacao_fiscal/codigos_tributarios/cirs_rep/Pages/irs101.aspx
- CIRS art. 101.º-B: https://info.portaldasfinancas.gov.pt/pt/informacao_fiscal/codigos_tributarios/cirs_rep/Pages/irs101b.aspx
- CIRS art. 115.º: https://info.portaldasfinancas.gov.pt/pt/informacao_fiscal/codigos_tributarios/cirs_rep/Pages/irs115.aspx
- CIVA art. 36.º: https://info.portaldasfinancas.gov.pt/pt/informacao_fiscal/codigos_tributarios/civa_rep/Pages/iva36.aspx
- gov.pt — Obrigações fiscais (recibos verdes, EU/non-EU clients): https://www.gov.pt/guias/trabalhar-por-conta-propria-guia-para-trabalhadores-independentes/obrigacoes-fiscais-e-pagamentos-impostos-e-contribuicoes
- OCC — Guia art. 53.º (M10/M40 usage): https://www.occ.pt/sites/default/files/public/2025-07/Guia_Pratico_IVAa.pdf
- Secondary: Vendus "Como preencher os novos recibos verdes" (2025), Moloni / InvoiceXpress exemption-code tables (2026)
