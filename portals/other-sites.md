# Other sites

> **Applies to:** anyone dealing with Portuguese public services
> **Last verified:** 2026-10-02

## acesso.gov.pt / autenticacao.gov.pt — login

Portal das Finanças, SSD, the Banco de Portugal citizen area and most gov.pt services accept **Chave Móvel Digital** (CMD). Activate it once and you stop juggling passwords. Sensitive actions (signing a direct-debit mandate, for example) re-authenticate here. *(verified in practice)*

## VIES — EU VAT number check

Before every recapitulativa, check each EU client's VAT number. A wrong or unregistered number invalidates the whole declaration. *(verified in practice)*

```
https://ec.europa.eu/taxation_customs/vies/rest-api/ms/<CC>/vat/<number-without-prefix>
```

`"isValid": true` is the pass. Germany (and some others) return validity but no name or address — that's normal. Web form: https://ec.europa.eu/taxation_customs/vies/

## Banco de Portugal — Mapa de Responsabilidades de Crédito (CRC)

Banks and brokers ask for it with any credit application. *(verified in practice)*

1. https://www.bportugal.pt/area-cidadao/formulario/227
2. **Accept the cookie banner first.** Otherwise the login bridge to Finanças fails with "An unexpected error has occurred" (idpsts/at/GenericError).
3. Log in with your Portal das Finanças credentials.
4. Downloads as `Mapa_CRC.pdf`, covering the previous month. If you have no credit at all, it says you're not in the CRC — that's a valid result.

## CTT — registered mail to AT

Some AT departments require a request "por escrito e enviar por correio" even when you started on e-balcão. *(verified in practice)*

- *Correio registado* (no aviso de receção) is cheaper; *com aviso de receção* returns a signed card. Tracking numbers look like `RL…PT`.
- Keep the timestamped acceptance slip, and screenshot the tracking page once it shows *Entregue*.
- Robust practice for anything with a deadline: send the signed PDF by registered mail **and** attach it on e-balcão in the case's thread, citing the tracking number.
- Notification by registered letter is presumed on the 3rd day after posting (art. 39.º n.º 1 CPPT) — see `playbooks/at-communication.md`.

## Banks and browser automation

Some Portuguese banks block browser-automation extensions at login. The human downloads statements by hand. *(verified in practice)*
