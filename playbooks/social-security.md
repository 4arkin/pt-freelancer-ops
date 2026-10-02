# Segurança Social — trabalhador independente

> **Applies to:** trabalhador independente (Categoria B) on regime simplificado, declaring quarterly; notes for those also employed and for EU cross-border work
> **Last verified:** 2026-10-02

Opening activity at AT also enrols you at Segurança Social (SS). Nothing is owed for roughly the first 12 months. After that, you declare income every quarter and pay every month. The amount follows what you declared the quarter before. Your clients' location doesn't change any of this: foreign-client income counts the same as Portuguese income.

Click paths and screen quirks: [`portals/seg-social-direta.md`](../portals/seg-social-direta.md). Quarterly walkthrough: [`routines/ss-quarterly.md`](../routines/ss-quarterly.md). Monthly payment: [`routines/ss-payment.md`](../routines/ss-payment.md). All 2026 figures in one place: [`key-figures.md`](key-figures.md).

## Rules

### Enrolment and the first-year exemption

- **Automatic.** SS receives início, reinício and cessação de atividade from AT electronically. You don't fill in an enrolment form, but you do need a Segurança Social Direta (SSD) login: seg-social.pt → Segurança Social Direta → Efetuar Registo → NISS. *(official source: ISS FAQ "Novo regime dos TI" v09, Jan 2026, Q4)*
- **First enquadramento takes effect on the 1st day of the 12th month after the month you started.** Example from SS: activity started 1 March 2025 → enquadramento from 1 March 2026. Started 10 January 2025 → 1 January 2026. Until then there are no contributions and no declarations. *(official source: ISS FAQ v09, Q1)*
- **You can end it early.** In any declarative month (Jan/Apr/Jul/Oct), the declaração trimestral lets you request *antecipação*. It takes effect on the 1st of the following month, and is not available on a late declaration. *(official source: ISS FAQ v09, Q2)*
- **When the exemption doesn't apply:**
  - You restart activity after your first enquadramento already took effect. Contributions start on the 1st day of the month you restart. *(official source: ISS FAQ v09, Q3)*
  - You stopped during the first 12 months. The count pauses, and resumes if you restart within 12 months. Example: 6 months used means 6 months left. *(official source: ISS FAQ v09, Q3)*
- **The first declaration** is due in the first declarative month after the enquadramento. Enquadramento on 1 March 2026 → declare in April 2026, covering March only. *(official source: ISS FAQ v09, Q17)*
- **Between enquadramento and your first declaration taking effect,** SS fixes a base giving the minimum contribution (€20/month in 2026); the first payment is for the enquadramento month, due 10th–20th of the next month. *(unverified — secondary sources)*

### How the contribution is calculated (regime simplificado, quarterly)

```
gross income of the 3 months before the declarative month
  × 70 %  services            (art. 162.º Código Contributivo)
  × 20 %  sale of goods; also hotelaria/restauração services declared as such
= rendimento relevante
  ± variação: −25 % … +25 % in 5 % steps, chosen on each declaration
  ÷ 3
= base de incidência contributiva (BIC) mensal — applies to the declarative month + the next 2
  × 21,4 %                    (art. 168.º n.º 1 Código Contributivo)
= contribuição mensal
```

- **Rate:** 21,4% for trabalhadores independentes. 25,2% for ENI (empresário em nome individual) with commercial/industrial activity and EIRL holders. *(official source: ISS FAQ v09, Q34)*
- **Minimum:** €20/month, charged when there is no income or the calculation gives less than €20. *(official source: ISS FAQ v09, Q30)*
- **Ceiling:** the monthly BIC is capped at 12 × IAS = **€6 445,56 (2026)**, which caps the contribution at about €1 379/month. *(official source: ISS FAQ v09, Q32; IAS 2026 = €537,13, Portaria 480-A/2025/1)*
- **Worked example (SS's own):** €6 000 of services in a quarter → 70% = €4 200 → ÷ 3 = €1 400 BIC → × 21,4% = **€299,60/month**. *(official source: ISS FAQ v09, Q32)*
- **Which month an invoice belongs to:** declare by the date the service was provided, as you do for IRS — not by when you were paid. IVA is never included. *(official source: ISS FAQ v09, Q18–19)* IVA counts by issue date, so the quarters can differ (see [GOTCHAS](../GOTCHAS.md) #8).
- **Not counted** unless you opt in: investment subsidies, mais-valias, intellectual/industrial property income. Never counted: AL apartment rentals and micro-generation of electricity. *(official source: ISS FAQ v09, Q24)*
- **The variação is not a standing setting.** It resets on every declaration. It isn't available to someone who pays only on the "remanescente" (employed + self-employed, below). *(official source: ISS FAQ v09, Q28; reset: verified in practice)*

### Declaração trimestral

- **Deadline:** last day of **January, April, July, October**, covering the 3 previous months. A weekend or holiday moves it to the next working day. *(official source: ISS FAQ v09, Q14)*
- **Late:** still accepted until the last day of the month before the next declarative month, flagged *fora de prazo*. In January you can also confirm, correct or add missing values for the whole previous year (*declaração anual*). *(official source: ISS FAQ v09, Q15)*
- **Not delivered:** SS fixes the minimum BIC, so you pay €20 (art. 163.º n.º 2 Código Contributivo). *(official source: ISS FAQ v09, Q33)* The missing declaration is a contraordenação (art. 164.º). The annual review against AT data later bills the real amount as arrears. *(verified in practice — see [`routines/ss-quarterly.md`](../routines/ss-quarterly.md))*
- **Annual review:** each year SS reconciles the previous year's declarations against the income AT reports to it, and notifies you of differences. *(official source: ISS FAQ v09, Q51)*
- **Foreign clients:** their income counts for SS contributions like any Cat. B income. *(official source: gov.pt guide "Trabalhar por conta própria", 2026)* On the form, it goes in the *Rendimentos obtidos no estrangeiro* row under Prestação de serviços. *(verified in practice)*
- **Suspension or cessação:** deliver a declaration at the next declarative moment. The obligation ends on the 1st of the month after you cease, apart from whatever the annual review bills. *(official source: ISS FAQ v09, Q51–52)*

### Payment

- **Window:** the **10th–20th** of the month after the one the contribution is for. *(official source: ISS FAQ v09, Q34)* SSD shows a later *data limite*; work to the 20th. *(verified in practice)*
- **Means:** referência Multibanco from the payment document, or débito direto. *(official source: ISS Guia Prático "Pagamento de contribuições")*

### Exemption when you are also employed (acumulação)

You are exempt from TI contributions, and from the quarterly declaration, if **all** of these hold *(official source: ISS FAQ v09, Q11, Q35)*:

1. The employment and the self-employed work are for **different** entities, with no domínio or group relationship between them.
2. The employment already enrols you compulsorily in a social-protection scheme covering all TI eventualities.
3. Your average monthly employment pay is **≥ 1 × IAS = €537,13 (2026)**.
4. Your average monthly rendimento relevante from self-employment, measured each quarter, is **< 4 × IAS = €2 148,52 (2026)**.

If condition 4 fails in a quarter, you pay only on the **remanescente** and must deliver that quarter's declaração trimestral (above €9,207.94 gross services per quarter, 2026). *(official source: ISS FAQ v09, Q13, Q44; art. 157.º Código dos Regimes Contributivos)* SS's example: rendimento relevante €5 600/month − €2 148,52 = €3 451,48 BIC → €738,62/month. A remanescente producing under €5 of contribution is ignored (Despacho 599/2019). *(official source: ISS FAQ v09, Q32 ex. 4, Q43–44)*

If you work as a TI **for your own employer** (or a company in its group), you are outside the TI regime altogether. Those recibos don't go in the declaração trimestral. *(official source: ISS FAQ v09, Q37–39)*

**Low-income exemption:** if, over a whole year, you owed only the €20 minimum (no income, or less than €20 due), you become exempt from the following January. You can't waive it, and SS grants it automatically. *(official source: ISS FAQ v09, Q46–48; exact trigger wording unverified in practice)*

### Entidade contratante (the client's 7% / 10%)

- A client that is a **pessoa coletiva or pessoa singular com atividade empresarial** and receives **more than 50%** of your annual TI income becomes an *entidade contratante*. It pays **7%** of what it paid you, or **10%** if your dependence on it exceeds 80%. *(official source: arts. 140.º and 168.º n.º 7 Código Contributivo, as amended by DL 2/2018)*
- This is the client's cost, not yours. It applies only if you were subject to contributions that year. During the first-year exemption or an acumulação exemption, the client is not an entidade contratante. *(unverified — OCC technical opinion)*
- **Foreign clients:** art. 140.º doesn't exclude them in its wording. You still list them in Anexo SS quadro 6 with their country code and foreign tax number. In practice SS collects only from entities registered in the Portuguese system. *(unverified — no official statement found that foreign entities are exempt or charged)*

### Anexo SS (with the IRS Modelo 3)

- **Who files:** every TI with activity open who was enrolled in the TI regime, filed with Modelo 3 in the IRS window. *(official source: Portaria 249/2021, Mod. RC 3048-DGSS instructions)* Since contributions are already declared quarterly, its job is now mainly to identify entidades contratantes. *(official source: same instructions)*
- **Exemption year too:** filed in the first-year exemption year as well, answering quadro 6 campo 02 = Não. *(unverified — secondary sources)*
- **Quadro 6 (entidades contratantes)** is filled only if, in the income year, **all** of these hold *(official source: Anexo SS instructions; OCC)*:
  - you were subject to contributions;
  - your service income was ≥ **6 × IAS** — €3 135 for 2025 income, €3 222,78 for 2026 income;
  - one client paid more than 50% of it.
- In quadro 6, list each business client with its NIF, or for a foreign client its **country code + foreign NIF**, and the gross amount. *(official source: Anexo SS instructions)*
- If you hold an **A1** proving cover in another country, the Anexo SS instructions tell you to answer **Não** at campo 6. *(official source: Anexo SS instructions, as summarised by OCC)*

### EU cross-border: the A1 certificate

- You are insured in **one** EU/EEA/Swiss state at a time (Reg. (EC) 883/2004). *(official source: Regulation 883/2004 art. 11)*
- **Temporary work abroad (posting):** a self-employed person who normally works in Portugal and goes to do similar work in another member state stays under Portuguese SS for up to **24 months**. Proof is the **A1**, issued by SS before you go. *(official source: Reg. 883/2004 art. 12 n.º 2)* Online application: SSD → Trabalho → Entrada, saída e destacamento de trabalhadores; guide: "Destacamento de Trabalhadores de Portugal para Outros Países e Exercício de Atividade em dois ou mais Estados Membros". *(official source: seg-social.pt; the exact form for TIs is unverified)*
- **Working regularly in 2+ states:** you're insured where you live, if a substantial part (≥ 25%) of your activity is there. *(official source: Reg. 883/2004 art. 13 n.º 2; Reg. 987/2009 art. 14 — the 25% benchmark)*
- **Remote work from Portugal for foreign clients is not a posting.** You are simply a Portuguese TI. No A1 is needed for the clients' countries. *(unverified — general reading of art. 11)*
- **Coming in:** if you work in Portugal temporarily and prove compulsory cover elsewhere (an A1 from your home state), you are excluded from the Portuguese TI regime. *(official source: ISS FAQ v09, Q11)*

## How to do it

SSD menus were redesigned in 2025. Searching by service name is more reliable than following menus. Live paths: [`portals/seg-social-direta.md`](../portals/seg-social-direta.md).

| Task | Path |
|---|---|
| Declare the quarter | search "declaração trimestral" → **Consultar e substituir declaração trimestral** → **Registar declaração** *(verified in practice)*. ISS FAQ (Jan 2026) path: Emprego → Trabalhadores independentes → Regime declaração trimestral → Consultar declaração trimestral → Registar Declaração *(official source; label may now read "Trabalho")* |
| See what you owe | **Conta Corrente → Posição Atual** → issue the Documento de Pagamento *(verified in practice; official source: ISS FAQ v09, Q53)* |
| Set up direct debit | **Pagamentos e dívidas → Valores a pagar à Segurança Social → Autorizar débito direto para pagamento de contribuições** *(official source: ISS Guia Prático; older guides say Conta-Corrente → Autorizar débito direto)* |
| Prove you owe nothing | **Pagamentos e dívidas → Situação contributiva → Declaração da situação contributiva**. Valid 4 months *(official source: ISS Guia Prático "Declaração de Situação Contributiva")* — see [`certidoes.md`](certidoes.md) |
| Request exemption as employed (if not recognised automatically) | form **Mod. RC 3001-DGSS** with proof of salary *(official source: ISS FAQ v09, Q12)* |

1. **Before the first declaration**, check SSD → Posição Atual and your messages for the *enquadramento* date SS applied.
2. **Each quarter:** follow [`routines/ss-quarterly.md`](../routines/ss-quarterly.md). Use monthly gross figures by service month, put foreign clients in the estrangeiro row, and choose the variação.
3. **2–4 weeks later:** the *Notificação da base de incidência contributiva* arrives in SSD messages. Reconcile it before paying. *(verified in practice)*
4. **Monthly, 10th–20th:** pay what Posição Atual shows, or let the débito direto collect it. Keep the SSD comprovativo. *(verified in practice)*

## Gotchas

- **The first-year exemption ends quietly.** The first declaration is due in the first Jan/Apr/Jul/Oct after the enquadramento, with no reminder. Put the date in the calendar the day you open activity.
- **A missed declaration looks like a cheap month.** €20 gets charged and the real amount returns later as arrears plus a fine. Never treat a sudden €20 as good news.
- **Paying before declaring settles the month at the wrong amount.** Deliver first, then pay the refreshed figure. *(verified in practice)*
- **The variação resets to 0% every declaration.** Choose it every time.
- **The employed-person exemption needs ≥ 1 IAS of salary and a different employer.** Part-time work below €537,13/month (2026) doesn't exempt you.
- **Contributions are deducted in IRS automatically** — AT fills Anexo B Q17A. Leave it blank. *(verified in practice — see [`portals/portal-financas.md`](../portals/portal-financas.md))*
- **An A1 is per posting, not per client.** Working from Portugal for a German client needs no A1. Working on-site in Germany for that client for three months does.

## Sources

- ISS — *Perguntas Frequentes: Novo Regime dos Trabalhadores Independentes*, v09, 14 Jan 2026: https://www.seg-social.pt/storage1/files/Perguntas-Frequentes---Novo-regime-dos-Trabalhadores-Independentes--v09-eo5R_UXwpLhcDifan-xPgA.pdf
- ISS — Guia Prático Declaração de Situação Contributiva: https://www.seg-social.pt/storage1/files/2004--DeclaracaoSituacaoContributivaPessoaColetivaPessoaSingular-Rztjyk6V7DnwZSxNInOmKQ.pdf
- ISS — Trabalhadores independentes: https://www.seg-social.pt/ptss/pssd/menu/trabalho/remuneracoes-contribuicoes/trabalhadores-independentes
- ISS — Destacamento de trabalhadores: https://www.seg-social.pt/ptss/pssd/menu/trabalho/entrada-saida-destacamento-trabalhadores/destacamento-trabalhadores
- Portaria 480-A/2025/1 (IAS 2026 = €537,13): https://diariodarepublica.pt/dr/detalhe/portaria/480-a-2025-993056222
- Portaria 249/2021 (Anexo SS model and instructions): https://files.diariodarepublica.pt/1s/2021/11/22000/0002400027.pdf
- gov.pt — Trabalhar por conta própria, obrigações fiscais e contributivas: https://www.gov.pt/guias/trabalhar-por-conta-propria-guia-para-trabalhadores-independentes/obrigacoes-fiscais-e-pagamentos-impostos-e-contribuicoes
- Regulation (EC) 883/2004 and 987/2009: https://eur-lex.europa.eu/eli/reg/2004/883/oj
- Secondary: OCC — Entidades contratantes (Anexo SS quadro 6): https://www.occ.pt/index.php/pt-pt/noticias/entidades-contratantes
