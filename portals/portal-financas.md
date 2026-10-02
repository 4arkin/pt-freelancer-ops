# Portal das Finanças

> **Applies to:** anyone with a NIF; sections on IVA assume regime normal
> **Last verified:** 2026-10-02 (paths walked on the live portal during 2025–2026 unless tagged)

https://www.portaldasfinancas.gov.pt — log in with NIF + senha, or Chave Móvel Digital at acesso.gov.pt. The portal's search box is often faster than the menus: type the service name as written below.

Rules and rates live in `playbooks/`. This file is where to click, what each field means, and what the screen does that you wouldn't expect.

## Orientation

| Need | Path |
|---|---|
| Your activity, regimes and their **start dates** | Situação Fiscal Integrada → Atividade Exercida *(verified in practice)* — the authority on when an IVA regime began; don't infer it from an alteração date |
| Everything owed right now | Situação Fiscal → Pagamentos a Decorrer / Pagamentos em Falta *(verified in practice)* |
| Letters, collection notices, coimas | Notificações e Citações (do Próprio); also A Minha Área → Mensagens *(verified in practice)* |
| AT's SMS/email alerts | Dados de Contacto → Email / Telefone — each must show **CONFIRMADO** with the receive toggle on *(verified in practice)* |
| Exact dates for this year | Agenda Fiscal |
| Change activity, codes, regime | Atividade → Submeter Declarações → Declaração de Alterações — free, immediate, due within 15 days of the change (art. 32.º n.º 2 CIVA / art. 112.º n.º 2 CIRS); effective from the declaration date, not retroactively *(official source)* |
| NHR/IFICI registration status | Os Seus Dados → Residente Não Habitual → Consultar Pedido *(verified in practice)* |
| Rent receipts (as tenant) | Arrendamento → Consultar Recibos → Locatário *(verified in practice)* |

## Recibos verdes

**Faturas e Recibos Verdes → Emitir.** Choose fatura, fatura-recibo or recibo (see `playbooks/recibos-verdes.md`).

- **Client abroad:** select the country, then type the VAT number in *NIF Estrangeiro*. The printed recibo shows it **without the country prefix** — keep the prefixed version in `profile.md` for VIES and the recapitulativa. *(verified in practice)*
- **EU business client:** IVA field "IVA – autoliquidação – Artigo 6.º n.º 6 alínea a) do CIVA"; IRS field "Sem retenção – Não residente sem estabelecimento". *(verified in practice)*
- **Two dates:** the service date and the *data de emissão*. IVA counts by emissão. *(verified in practice)*
- **The description is evidence.** AT may later read your invoice descriptions to decide what activity you actually do — for special regimes, for instance. Past descriptions can't be amended. *(official source: Circular 4/2019 ponto 7 al. e)*
- **Annulled recibos stay in the numbering**, leaving gaps (FR/4, then FR/6). Confirm each gap's status before summing a quarter or a year. *(verified in practice)*
- **Annual totals:** Faturas e Recibos Verdes → Consultar, plus the SIRE CSV export. *(verified in practice)*

## IVA — Declaração periódica

**IVA → Declaração Periódica → Entregar.** Deadline and period logic: `routines/iva-quarterly.md`.

Field map used on a validated quarterly return for a freelancer with reverse-charged EU sales and mixed EU / non-EU / PT purchases *(verified in practice)*:

| Campo | Meaning | Rule |
|---|---|---|
| 7 | Intra-EU services that also go on the recapitulativa | Must equal recapitulativa campo 19 for the same quarter |
| 8 | Services to non-EU business clients | Not on the recapitulativa *(official source: Portaria 298/2026/1, quadro 06-D)* |
| 16 / 17 | Base / IVA on services **bought** from suppliers in other EU states (you self-assess) | Self-assessed at the PT rate (23% continental) |
| 3 / 4 | Base / IVA you self-assess on purchases from non-EU suppliers | The same base also goes in Q06-A campo 98 |
| 97 / 98 | Quadro 06-A detail of acquirer-liquidated operations | 98 = third-country suppliers; leave 97 blank when EU purchases are already in 16 |
| 20 | Deductible IVA on fixed assets (imobilizado), e.g. a laptop | Not campo 24 |
| 24 | Deductible IVA on other goods and services | PT input IVA **plus** the self-assessed amounts from 17 and 4 — this nets the reverse charge to zero |
| 40 / 41 | Regularizações in your favour / the State's | Supplier credit notes on invoices you deducted go in 41 (art. 78.º n.º 3) and need *Anexo Campo 41* |
| 61 | Credit carried from the prior period | Pre-filled |
| 93 / 94 | Tax to pay / credit | |
| 95 / 96 | Refund requested / credit carried forward | Campo 94 must be fully split between 95 and 96 |

**New form from 1 July 2027:** Portaria 298/2026/1 splits campo 24 into campos 27/28/29 and adds quadro 06-D. Re-check this map against the form when it changes. *(official source)*

**Anexo Campo 41:** Anexos → Adicionar Anexo → Anexo Campo 41 → secção A (art. 78.º n.ºs 3, 4 e 6), one line per supplier NIF. *Soma de controlo* must equal campo 41 to the cent — round per line, not on the aggregate. *(verified in practice)*

**Validation errors that are expected** *(verified in practice)*:
- *"Se preencheu SIM, preencha pelo menos um dos campos do Q06-A (272)"* — answering Sim at the top of quadro 6 requires a Q06-A line.
- *"Campo 94 não é igual à soma dos campos 95 e 96 (252/290)"* — allocate the credit to 95 or 96.

**IVA you can't recover here:** PT IVA wrongly charged to you by a foreign supplier with no PT establishment, and IVA charged under another state's OSS number. Leave both out of 16/3/24. *(unverified — practitioner reading)*

**Foreign-currency invoices:** the practice used was the EUR amount the card was actually charged. Self-assessed IVA nets to zero either way; only the bases move. *(unverified — practitioner choice, not a cited rule)*

**After Entregar:** the portal shows an on-screen confirmation and **no file**. To get the receipt: Declaração Periódica do IVA → **Obter Comprovativo → OBTER COMPROVATIVO** on the row → the PDF opens in a tab → the download is a second click in the browser's PDF toolbar. Independent proof: **Consultar Declarações Entregues** (declaration number + reception timestamp). A fresh return shows *"A disponibilizar brevemente"* for about a day, then *"Pendente de liquidação"*. *(verified in practice)*

## IVA — Declaração recapitulativa

**Declaração recapitulativa do IVA → Entregar declaração.** Check first at **Consultar declaração** (Ano, Período = Todos). Six screens, three carry data *(verified in practice)*:

| Quadro | Fill |
|---|---|
| 01 | NIF — pre-filled |
| 02 | Tipo `Primeira`. "Houve alteração de periodicidade de envio de trimestral para mensal?" → `Não` |
| 03 | Ano + Trimestral (`03T` / `06T` / `09T` / `12T`). Leave Mensal and "Mês(es) incluído(s)" blank |
| 04/05 | One line per client: country prefix · VAT number **without** prefix · amount · Tipo de Operação `5 - Prestações de Serviços`. Campos 18 and 19 total themselves |
| 06 | Goods on consignment — leave empty |
| 07 | NIF of your contabilista certificado — leave empty if you self-file |

**Validar** (expect "Sem erros") → **Entregar**. The value field **swallows the first keystroke** after a row is added — re-check every amount. The form itself states that campo 19 must match campo 07 of the declaração periódica. Receipt: same two-click *Obter Comprovativo* flow. *(verified in practice)*

## IRS — Modelo 3

| Need | Path |
|---|---|
| File, or replace a filed one | IRS → Modelo 3 → [year] → Entregar declaração (de substituição) — the substituição preloads the latest declaration *(verified in practice)* |
| Status of what you filed | IRS → Consultar Declaração → year. Situação values seen: LIQUIDAÇÃO PROCESSADA, NOTIFICAÇÃO EMITIDA, SALDO NULO EMITIDO, DECLARAÇÃO COM ANOMALIAS *(verified in practice)* |
| PDF of a filed declaration | IRS → Obter Comprovativos — lists only the **operative** (latest) declaration per year *(verified in practice)* |
| Simulate before submitting | Cidadãos → IRS → Simulador |

**Quadro map for Cat. B, regime simplificado** *(verified in practice)*:

| Where | Campo | Content |
|---|---|---|
| Rosto Q9 | — | IBAN for refunds |
| Anexo B Q1 | 01 / 03 | Regime simplificado / Profissionais, comerciais e industriais |
| Anexo B Q3 | 07 | Your 4-digit art. 151.º activity code |
| Anexo B Q3 secção E.1 | 18 Sim / 19 Não | IRS Jovem claim (2025+ regime) + income-year number 1–10 |
| Anexo B Q4 | 403 | Income from art. 151.º activities (coefficient 0,75) |
| Anexo B Q5 | 01 / 02 | All income from a single entity? Flip to Não with a second client |
| Anexo B Q6 | 601 / 602 | IRS withheld at source / pagamentos por conta paid in the year |
| Anexo B Q13B | 1304–1306 | Gross income for N, N−1, N−2 — roll forward yearly |
| Anexo B Q17A | 17001 | Mandatory SS contributions — **leave blank**, AT fills it |
| Anexo B Q17C | 17051–17054 | Staff · premises rent · other expenses partially assigned (25%) · fully assigned (100%) |
| Anexo H Q6C | codes 651/652, 654 | Health / housing charges, declared manually when needed |
| Anexo H Q7 | natureza 05 | Permanent-home rent: freguesia, tipo U, artigo, fração, landlord NIF — copy them from the rent receipts every year |

Income from foreign clients for work done in Portugal was declared in Anexo B only, and liquidated without objection *(verified in practice)*. There is a competing reading that it also belongs in Anexo J — see `playbooks/irs-modelo3.md` § Foreign-client income.

**A €0 substituição is not a paid debt.** If a substituição is liquidated after the original's collection note was issued, it can show *SALDO NULO EMITIDO €0,00* while the original amount stays owed through the acerto de contas. *(verified in practice)*

## IRS — Pagamentos por conta

Serviços → IRS → **Pagamentos Por Conta**. Pay by referência Multibanco or direct debit. The receipt appears once AT registers the payment, typically the next day. *(verified in practice)*

## Payment plans (plano prestacional)

**Pagamentos → Planos Prestacionais → Simular / Registar Pedido.** Pick the debt and number of instalments; the simulation shows the guarantee waiver and total interest before you commit. Export the approval with **EXPORTAR PDF**. *(verified in practice)*

- **Timing trap:** request it **within 15 days after the voluntary payment deadline**, before an execução fiscal opens (DL 125/2021 art. 5.º; AT FAQ faqs-00547). You can't request it while the debt is still in voluntary payment. *(verified in practice)*
- **Instalment references** aren't issued upfront: Planos Prestacionais → Emitir Segunda Via Prestações → Ver Plano → Emitir, after the 11th of each month — unless you use direct debit. *(verified in practice)*
- Rules (guarantee waiver, standing during the plan): `playbooks/at-communication.md`.

## Direct debit (débito direto)

**Débito Direto → Gerir Autorizações** *(verified in practice)*:

- Needs a **general IBAN** in your AT record. The *IBAN Afeto à Atividade* does **not** work. The mandate sits at *Pendente de IBAN* until the IBAN shows *Confirmado* — a few days.
- The purpose **IRS** covers collection notes, pagamentos por conta and active instalment plans (AT FAQ faqs-00637). Not retenções na fonte.
- One active authorisation per purpose; IRS disappears from the dropdown once used.
- *Montante Máximo* and *Data Limite* left blank = no cap, no expiry. *Modificar* changes running mandates — don't edit mid-plan.
- Sign at least 15 days before a deadline (by the 10th of the month for plan instalments). AT sends the order to the bank ~6 days before the debit. Statuses: NOTIFICADO → ENVIADO POR DÉBITO DIRETO.
- **After a successful debit, the document can still show under Pagamentos a Decorrer with a PAGAR button for several days. Don't click it** — the receipt appears ~3 days later.
- Signing the mandate re-authenticates you at acesso.gov.pt.

## e-balcão

Search "e-balcão" on the portal → register a new question *(menu path unverified — search works)*. Three cascading dropdowns: Imposto ou área → Tipo de Questão → Questão. *(verified in practice)*

- **1,500-character limit.** Keep a compact version of anything you send, with the full version as an attachment.
- **Routing decides who reads it.** A misrouted request gets bounced, sometimes to postal mail. Example: NHR registration matters go via Registo Contribuinte → Identific → Residente Não Habitual (straight to the registration department, DSRC), not via IRS.
- **States:** *Questão Registada* = open. *Concluída* closes the **ticket**, not the underlying process. You can reopen by replying, and AT can reopen old threads to answer.
- **Auto-replies can be irrelevant boilerplate**, and a "resposta" can carry the wrong attachment. A message with no despacho, ofício number or notification date is **not a decision** and starts no deadline — reply asking for the decision itself.

More on disputes, notifications and deadlines: `playbooks/at-communication.md`.

## Certidões

Search "certidão" on the portal → **Situação tributária regularizada** (não dívida) or **Domicílio fiscal** *(exact menu path unverified)*. Issued instantly as PDF with a validation code. A current payment plan doesn't block the não-dívida certidão. Validity: `playbooks/certidoes.md`. *(verified in practice)*

## Downloads

Portal PDFs arrive with generated names (`notcobranotaCoba_<year>_<doc>_<timestamp>.pdf` and similar) and land wherever the browser is set to save, not necessarily `~/Downloads`. Check there before clicking again — repeated clicks create duplicates. Rename on filing (`storage/filing-structure.md`). *(verified in practice)*
