# Segurança Social Direta (SSD)

> **Applies to:** trabalhador independente
> **Last verified:** 2026-10-02

https://app.seg-social.pt — log in with NISS + password or Chave Móvel Digital. The search box at the top is the reliable way in. Menus move between redesigns, but service names stay stable.

Rules (rates, coefficients, exemptions): `playbooks/social-security.md`. Step-by-step quarterly delivery: `routines/ss-quarterly.md`.

## Paths

| Need | Path |
|---|---|
| What you owe now | **Conta Corrente → Posição Atual** *(verified in practice)* |
| Pay a contribution | Posição Atual → the outstanding document → referência Multibanco (entidade 21056) or MB WAY, or confirm the débito direto collected it *(verified in practice)* |
| Declaração trimestral — check | search "declaração trimestral" → **Consultar e substituir declaração trimestral** → Declarações entregues → Rendimentos do ano *(verified in practice)* |
| Declaração trimestral — deliver | same page → **Registar declaração** *(verified in practice)* |
| Situação contributiva certificate | search "situação contributiva" → request → PDF *(issued from SSD in practice; exact button names unverified)* |
| Messages and notifications | the envelope / Mensagens area — the *Notificação da base de incidência contributiva* arrives here 2–4 weeks after each declaration *(verified in practice)* |

## Declaração trimestral screens

1. *Tem rendimentos a declarar?* → **Sim, tive rendimentos no trimestre**
2. Expand **Prestação de serviços** → enter gross income **per month**, not a quarterly total and not rendimento relevante. Use the **Rendimentos obtidos no estrangeiro** row for foreign clients and the plain row for Portuguese clients.
3. *Subsídios / mais-valias / propriedade intelectual* → **Não**, unless you have them.
4. *Valor de contribuição mensal previsto* → **Escolher percentagem de variação** (slider −25% … +25%, default 0%, chosen **on every declaration**) → **Entregar declaração**.

After the deadline a *"Declaração trimestral fora de prazo"* modal appears. Late delivery is still accepted: Prosseguir. *(verified in practice)*

## Gotchas

- **January:** the *Rendimentos do ano* selector defaults to the current year and shows nothing. Set it to the previous year for the Q4 declaration. *(verified in practice)*
- **A missing declaration is silent.** SS sets your income to zero and charges the minimum contribution. The notice reads like routine, not like a breach. The real amount comes back later as a late payment. *(verified in practice)*
- **Deliver before you pay.** If a month affected by a pending declaration is unpaid, deliver first. SS reissued the outstanding payment document at the corrected amount within ~24h, with no extra document. *(verified in practice)*
- **Posição Atual lags** up to 72h after a declaration (SSD says so). Wait for it rather than paying the stale figure. *(verified in practice)*
- **The *data limite* shown is the end of the month**, but the payment window is the 10th–20th. Work to the 20th. *(verified in practice)*
- **Pull the SSD comprovativo, not the bank's.** A bank payment proof says it isn't valid for tax purposes. The SSD receipt is available the same day. File it by the contribution period printed on it (`YYYYMM - Contribuições - Trabalhador Independente`), not the payment date. *(verified in practice)*
- **Arrears** spanning several months can be paid in bulk documents covering several periods, plus juros de mora. *(verified in practice)*
- **Downloads** are named `YYYYMMDD_HHMMSS_<id>.pdf`. Under browser automation, *Obter comprovativo* sometimes doesn't fire — have the human click it. *(verified in practice)*
- **Fines** for late declarations show up as a *Coimas e custas* line in Posição Atual. Watch it after any late delivery. *(verified in practice)*
