# e-fatura

> **Applies to:** anyone with a NIF; the business-expense parts apply to trabalhadores independentes
> **Last verified:** 2026-10-02

https://faturas.portaldasfinancas.gov.pt — same login as Portal das Finanças.

Every invoice a Portuguese supplier issues with your NIF lands here. It feeds the IRS personal deductions (saúde, educação, habitação, despesas gerais familiares) and, for freelancers, business expenses and the input IVA on your quarterly return. Invoices without your NIF, and all foreign invoices, never appear.

## Paths

| Need | Path |
|---|---|
| Classify pending invoices | Adquirente → **Complementar Informação Faturas** *(verified in practice)* |
| Review business expenses | **Despesas da Atividade → Verificar Despesas** — mark *Sim* (afeta à atividade) *(verified in practice)* |
| Annual personal deduction totals (Anexo H) | Consultar Despesas p/ Deduções à Coleta *(verified in practice)* |
| Annual business expense totals (Anexo B Q17C) | Consultar Despesas Afetas à Atividade — split fully vs partially assigned *(verified in practice)* |

## Gotchas

- **Unclassified means invisible.** An invoice from a supplier with several possible sectors arrives *pendente* and does **not** count as a business expense until you set its âmbito. Left pending, they silently shrink the quarter's deductible input IVA — a credit lost, though no tax is owed. **Classify before every IVA return**, not once a year. *(verified in practice)*
- **Order each quarter:** Complementar Informação Faturas → Verificar Despesas → then fill the declaração periódica. *(verified in practice)*
- **Rent isn't here.** Rent comes from Portal → Arrendamento → Recibos de Renda (if the landlord issues electronic receipts) or is declared manually in Anexo H. *(verified in practice)*
- **Health is split by AT** between códigos 651 and 652 (reduced vs normal IVA rate with prescription). You don't choose it. *(verified in practice)*
- **Annual windows:** verify and classify the year's invoices in the Jan–Feb window, then AT publishes the deduction values and opens a complaint period. Exact dates move each year: check `playbooks/key-figures.md` or the Agenda Fiscal. *(official source — dates per year)*
- **Export monthly** if you want a running record. The routines don't need it; it helps when something goes missing. *(habit, not rule)*
