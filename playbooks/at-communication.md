# Talking to AT: e-balcão, notifications, disputes, debts, coimas

> **Applies to:** any taxpayer dealing with the Autoridade Tributária e Aduaneira (AT) in writing; examples assume a resident trabalhador independente
> **Last verified:** 2026-10-02

Most contact with AT is written: e-balcão tickets one way, notifications the other, and now and then a registered letter. Deadlines run from the date a notification is legally **deemed received**, not the date you read it. That depends on the channel. This file covers the channels, the deadlines that start from them, how to contest or pay in instalments, and how to keep a late-filing fine at its minimum.

Portal click paths for e-balcão, plans and direct debit: [`portals/portal-financas.md`](../portals/portal-financas.md). Registered mail mechanics: [`portals/other-sites.md`](../portals/other-sites.md#ctt--registered-mail-to-at).

## Rules

### When a notification counts as received

| Channel | Deemed received | Basis |
|---|---|---|
| Carta registada (no AR) | **3rd day after the registo**, or the next business day if that isn't one | art. 39.º n.º 1 CPPT *(official source)* |
| Carta registada **com aviso de receção** | the date the AR card is signed, even by a third party at your address | art. 39.º n.º 3 CPPT *(official source)* |
| AR returned / refused / not collected | AT re-sends by AR within 15 days. If that is also refused or left uncollected, notification is presumed on the 3rd day after the registo | art. 39.º n.ºs 5–6 CPPT *(official source)* |
| **Notificações e Citações Eletrónicas no Portal das Finanças** (área reservada, NCEPF) | **5th day after it is made available** in your área reservada | art. 38.º-A n.º 4 CPPT *(official source)* |
| **Domicílio fiscal eletrónico** — ViaCTT mailbox / serviço público de notificações eletrónicas | **15th day after it is made available**, counting from the 1st business day after | art. 39.º n.º 10 CPPT *(official source)* |
| ViaCTT, if you open the mailbox earlier | the moment you access the mailbox, whether or not you open the message | CTT help page *(official source: CTT; legal basis not located)* |

- A presumed date can only be rebutted if the delay wasn't your fault. For electronic channels, also if you had updated your address under art. 43.º. *(official source: art. 39.º n.ºs 2, 11 CPPT)*
- **NCEPF is compulsory** for anyone who must have a caixa postal eletrónica and hasn't registered one, and for residents outside the EU/EEA with no representative. *(official source: art. 38.º-A n.º 1 CPPT; Portaria 233/2019)* Opting in voluntarily: A Minha Área → Notificações e Citações → Gerir Canais → Portal das Finanças → Ativar. *(unverified — AT video tutorial)*
- **Out of the country?** With electronic notifications, the clock runs whether or not you log in. Turn on the email and SMS alerts and confirm both contacts (Dados de Contacto → CONFIRMADO). *(verified in practice — see [`portals/portal-financas.md`](../portals/portal-financas.md#orientation))*

### Deadlines that start from a notification

| Step | Deadline | Basis |
|---|---|---|
| **Direito de audição prévia** (before a liquidação, refusal, revocation of a benefit) | **15 days**, extendable by AT up to 25 for complex matters; written or oral | art. 60.º n.º 6 LGT *(official source)* |
| **Reclamação graciosa** against a liquidação | **120 days** from the end of the voluntary payment period, or from the notification of other acts | art. 70.º n.º 1 + art. 102.º n.º 1 CPPT *(official source)* |
| **Recurso hierárquico** against a decision (e.g. a rejected reclamação) | **30 days** from notification | art. 66.º n.º 2 + art. 76.º CPPT *(official source)* |
| Impugnação judicial (court) | 3 months from the facts in art. 102.º n.º 1 | art. 102.º CPPT *(unverified — get a lawyer)* |
| Revisão oficiosa (AT reviews its own error) | 4 years for errors imputable to the services | art. 78.º LGT *(unverified — not re-read for this edition)* |

- **Audição prévia** comes as a *projeto de decisão* with its reasoning. Answer by e-balcão or in writing within the stated deadline, giving facts and documents. AT must take new elements into account in the final decision. *(official source: art. 60.º n.ºs 5–7 LGT)* If you don't answer, the projeto usually becomes final. *(unverified — practice)*
- **A reclamação graciosa can go through e-balcão.** The submission date counts as the filing date. Ground it, quantify the amount contested, attach proof, sign and date it. *(unverified — Doutor Finanças)*
- **A reply without a despacho, ofício number or notification date isn't a decision** and starts no deadline. *(verified in practice — [GOTCHAS](../GOTCHAS.md) #22)*

### e-balcão

- Search "e-balcão" → new question → three cascading dropdowns: imposto/área → tipo de questão → questão. 1 500-character limit; attach the full text as a PDF. *(verified in practice)*
- **Routing decides who reads it.** A wrongly routed ticket gets bounced, sometimes with "send this by post to department X". *(verified in practice)* AT doesn't publish response times. *(unverified)*
- *Concluída* closes the ticket, not the case. You can reply on a closed thread and AT can reopen it. *(verified in practice)*
- **Redirected to postal mail:** some departments only act on a signed request *por escrito* sent by post. Do both: post it registered (com AR if a deadline hangs on it) **and** attach the same signed PDF to the e-balcão thread, quoting the tracking number. *(verified in practice — [`portals/other-sites.md`](../portals/other-sites.md#ctt--registered-mail-to-at))*

### Correspondence log

Keep one log per case. Fill it in the day something moves:

```
date | direction (in/out) | channel (e-balcão / NCEPF / ViaCTT / carta reg / AR) |
AT reference (pedido n.º, ofício, processo) | deemed-received date | deadline it starts |
file name in records/ | next action
```

The **deemed-received date** column is the one that matters. Compute it from the table above, not from when you read the message. Filing conventions: [`storage/filing-structure.md`](../storage/filing-structure.md).

### Tax debts: plano prestacional

Two regimes, depending on whether an execução fiscal has started.

**Before execução fiscal** (IRS, IRC, IVA and IMT liquidated by AT, IUC) — DL 125/2021 *(official source)*:

- Request **online within 15 days after the end of the voluntary payment period** (art. 5.º). Give your ID, the debt and the number of instalments. You **can't** request it while the debt is still in voluntary payment. *(verified in practice)*
- Each monthly instalment must be **≥ ¼ UC**, interest excluded (art. 3.º). That was €25,50 with UC = €102. *(unverified for 2026 — CGD 2024)* Maximum number of instalments: up to 36 per secondary sources *(unverified)*.
- **No guarantee needed** (art. 6.º n.º 5) if the debt is ≤ **€5 000** (individuals), you ask for ≤ **12** instalments, or the plan was created automatically.
- **Automatic plan** (art. 9.º): if you don't pay and don't ask, a debt ≤ €5 000 still in voluntary collection gets a plan automatically, with no guarantee.
- **Default:** a missed instalment makes the remainder fall due, and a certidão de dívida starts execução fiscal. *(unverified — secondary)*
- **Effect on your standing:** a plan being honoured (with a guarantee given or waived) counts as *situação tributária regularizada*, so the certidão de não dívida is still issued. *(verified in practice; legal basis art. 177.º-A CPPT, unverified)* See [`certidoes.md`](certidoes.md).
- Path: Pagamentos → Planos Prestacionais → Simular / Registar Pedido. *(verified in practice — [`portals/portal-financas.md`](../portals/portal-financas.md#payment-plans-plano-prestacional))*

**In execução fiscal:** instalments under arts. 196.º–199.º CPPT, with costs (custas) and stricter guarantee rules. The guarantee waiver applies up to €5 000 (individuals) in this phase too. *(unverified — CGD)*

### Late-filing coimas

- **Missing or late declaration:** €150–€3 750 for an individual. *(official source: art. 116.º n.º 1 RGIT)*
- **Reduction on your own initiative** (art. 30.º RGIT, since 1 Jan 2022) *(official source)*:
  - Pay before any auto de notícia, complaint or inspection → **12,5% of the minimum**.
  - Pay before the audição deadline in an inspection → **50% of the minimum**.
  - The minimum used is always the negligence one.
  - For a missing declaration, **filing it counts as the reduction request** (n.º 5). If you don't pay at the same time, AT notifies you and you have **30 days** to pay (n.ºs 3 a), 6).
- **Floor:** 12,5% × €150 = €18,75, but the minimum coima payable after a reduction is **€25** (€50 without reduction). *(official source: art. 26.º n.º 3 RGIT)*
- **Dispensa** (no coima at all) — art. 29.º RGIT *(official source)*. It requires all of:
  - no conviction for a tax infraction and no dispensa or reduced coima in the previous **5 years**;
  - no effective loss of revenue — an unpaid tax always counts as a loss;
  - the fault already regularised.

  Request it within the defence period. In practice, a late IRS with a refund due (no tax lost) by a first-time offender is the case it fits. *(unverified — application to that case)*
- **Atenuação especial** (art. 32.º): if you admit the infraction and regularise within the 30-day defence period, the coima limits are halved, never below the art. 30.º amount or €25. *(secondary: Sérvulo 2021; official text not re-read)*
- AT may first send an art. 28.º-A notice inviting you to regularise within 30 days with the reduction. *(secondary: Sérvulo 2021)*
- **SS is separate.** A late declaração trimestral is fined by Segurança Social, not AT. It shows up as *Coimas e custas* in SSD. *(verified in practice — [`portals/seg-social-direta.md`](../portals/seg-social-direta.md))*

## How to do it

1. **A notification arrives.** Log it. Compute the deemed-received date from the table and write the deadline into the log and your calendar.
2. **It's a projeto de decisão** → answer within 15 days through e-balcão, in the thread or tema the notice names, with a PDF attachment. Log the submission.
3. **It's a liquidação you disagree with** → pay or plan anyway to avoid execução fiscal. Then file a reclamação graciosa within 120 days of the payment deadline. Paying doesn't waive the right to contest. *(unverified — practice)*
4. **You can't pay** → wait for the voluntary deadline to pass, then register the plan within the next 15 days. Sign the débito direto for the plan purpose. *(verified in practice)*
5. **You filed late** → file now. Pay the reduced coima when AT notifies it (≥ €25). Ask for dispensa in the defence period if you qualify.

## Gotchas

- **Electronic notifications run without you.** NCEPF counts from day 5 and ViaCTT from day 15 after the message is made available, whether you log in or not.
- **The registered-letter presumption is the 3rd day after posting, not the day you collect it.** Collecting late doesn't extend anything.
- **Don't request a plan too early.** The window opens the day after the voluntary deadline and lasts 15 days.
- **A plan keeps you "regularizado" only while you pay it.** One missed instalment can put the whole balance into execução fiscal.
- **Paying a reduced coima uses up your dispensa for five years.** Dispensa requires no reduced coima or dispensa in the previous 5 years (art. 29.º n.º 1 b). If you qualify for dispensa, request it before paying the 12,5%. *(unverified — how this interacts with art. 30.º n.º 5, where filing the late declaration itself counts as a reduction request)*
- **Concluída on e-balcão is not a decision.** Ask for the despacho.

## Sources

- CPPT arts. 38.º–39.º (notifications), 59.º, 66.º, 70.º, 102.º — pgdlisboa consolidated text: https://www.pgdlisboa.pt/leis/lei_mostra_articulado.php?nid=256&tabela=leis
- LGT art. 60.º (audição): https://info.portaldasfinancas.gov.pt/pt/informacao_fiscal/codigos_tributarios/lgt/Pages/lgt60.aspx
- RGIT art. 26.º: https://info.portaldasfinancas.gov.pt/pt/informacao_fiscal/codigos_tributarios/rgit/Pages/rgit26.aspx
- RGIT art. 29.º: https://info.portaldasfinancas.gov.pt/pt/informacao_fiscal/codigos_tributarios/rgit/Pages/rgit29.aspx
- RGIT art. 30.º: https://info.portaldasfinancas.gov.pt/pt/informacao_fiscal/codigos_tributarios/rgit/Pages/rgit30.aspx
- RGIT art. 116.º (DR lexionário): https://diariodarepublica.pt/dr/lexionario/termo/falta-ou-atraso-declaracoes-fiscais
- DL 125/2021 (prestações before execução fiscal): https://files.dre.pt/1s/2021/12/25200/0003500042.pdf
- CTT — Receber notificações das Finanças: https://www.ctt.pt/ajuda/particulares/viactt/usar/receber-notificacoes-das-financas
- Secondary: Sérvulo, "A dispensa, redução e atenuação das coimas no RGIT: novas regras" (2021); OCC Guia "Meios de defesa graciosos"; CGD Saldo Positivo "Pagar impostos em prestações".
