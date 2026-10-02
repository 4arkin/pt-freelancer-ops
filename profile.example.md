# Profile

Copy this file to `profile.md` and fill it in. `profile.md` is gitignored — it never leaves your machine. Every routine reads it before doing anything, so a wrong regime here means wrong advice everywhere.

Leave a field as `TODO` rather than guessing. The agent is told to ask about any `TODO` it needs.

## Identity

| Field | Value |
|---|---|
| Name | TODO |
| NIF | TODO |
| NISS (Segurança Social) | TODO |
| Fiscal address (morada fiscal) | TODO |
| Electronic notifications | TODO — Via CTT / Portal Notificações (see playbooks/at-communication.md) |
| Records folder | `records/` (default) |
| PT tax resident since | TODO — YYYY-MM-DD (first day of stay), or "before início" |
| Year of birth | TODO — YYYY (IRS Jovem age test, on 31 Dec) |
| Fiscal / IVA representative | TODO — none / named, until YYYY-MM-DD |
| Chave Móvel Digital | TODO — active / not yet |

## Activity (from Portal → Situação Fiscal Integrada → Atividade Exercida)

| Field | Value |
|---|---|
| Início de atividade | TODO — YYYY-MM-DD |
| CAE principal / secundário | TODO |
| Código CIRS art. 151.º | TODO — 4 digits, from the art. 151.º table |
| IRS regime | TODO — simplificado / contabilidade organizada |
| IVA regime | TODO — isento art. 53.º / normal trimestral / normal mensal |
| IVA regime since | TODO — YYYY-MM-DD (read it from the portal, not from memory) |
| Registered for intra-EU operations (VIES) | TODO — yes / no |
| Contabilista certificado | TODO — none / name |
| Cat. A or H income in start year / next year | TODO — yes / no (a yes cancels the art. 31.º n.º 10 coefficient cut for that year; whether it reaches the other year is unsettled) |
| Activity ceased in the 5 years before início | TODO — yes / no |

## Special regimes

| Field | Value |
|---|---|
| IRS Jovem | TODO — not eligible / claiming, first Cat. A/B income year: YYYY (whether work income earned abroad before arrival counts is unverified — ask AT via e-balcão if it changes the year number) |
| NHR / IFICI | TODO — none / NHR window YYYY–YYYY / IFICI since YYYY |
| SS first-year exemption | TODO — enquadramento YYYY-MM-DD / opted in early from YYYY-MM-DD / not applicable |
| SS acumulação exemption (also employed) | TODO — not applicable / applies: salary ≥ 1 × IAS from a different employer, declare only quarters above €9,207.94 gross services (2026) — see playbooks/employed-and-freelance.md |
| SS direct debit | TODO — authorised / not yet |
| SS variação chosen (last declaração) | TODO — 0% / −25% / +25% |

## Residency

| Field | Value |
|---|---|
| Permit type and article | TODO — AR art. 89.º / D7 / D8 / CRUE (EU) / PT national |
| Residence title expiry | TODO — YYYY-MM-DD |
| First residence card issue date | TODO — YYYY-MM-DD |

## Clients

One row per client you invoice. The country decides the IVA treatment and which filings it lands in.

A non-EU business has no VAT number: record its own tax ID or company registration (a US EIN, say). That is your evidence it's a business, which keeps it out of the art. 53.º count.

| Client | Country | VAT / tax ID (EU: with country prefix; non-EU: local tax ID, e.g. EIN) | Type | VIES checked (date) | IVA mention on recibo | Retenção na fonte | Active |
|---|---|---|---|---|---|---|---|
| TODO | TODO — ISO code | TODO | PT company / PT freelancer (organizada) / PT freelancer (simplificado) / PT individual / EU business / EU individual / non-EU business / non-EU individual | EU business only: YYYY-MM-DD | TODO — see playbooks/iva-regimes.md | TODO — see playbooks/recibos-verdes.md | yes / no |

## Employment and household

| Field | Value |
|---|---|
| Employment (Cat. A) | TODO — none / employer name, NIF, average gross per month, is the employer (or its group) also a client? yes / no |
| Marital status | TODO — single / married / unido de facto since YYYY |
| Spouse or partner | TODO — NIF, PT tax resident yes / no (joint filing: see playbooks/family-and-joint-filing.md) |
| Dependents | TODO — none / NIF and year of birth each |

## Accounts and assets

| Field | Value |
|---|---|
| Foreign bank and broker accounts (Anexo J Q11) | TODO — none / provider · country · type (bank / broker / payment or e-money institution) — no balances, see playbooks/foreign-income-and-accounts.md |
| Crypto platforms and wallets | TODO — none / platform · country — see playbooks/crypto.md |
| Property (PT or abroad) | TODO — none / own home / rented out — see playbooks/property-in-portugal.md |

## Recurring business expenses

Vendors whose invoices should show up every month. The monthly routine uses this list to name specific missing receipts instead of saying "check your receipts".

| Vendor | Cadence | Has your NIF on invoice | Folder |
|---|---|---|---|
| TODO | monthly | yes / no | `deductions/despesas-atividade/` |

## Standing amounts (update when the source document changes)

| What | Amount | Source document | Valid for |
|---|---|---|---|
| SS monthly contribution | TODO | SSD → Conta Corrente / last notificação de base de incidência | current quarter |
| PPC per instalment | TODO | last nota de liquidação, line "Montante de cada pagamento por conta" | current year |
| Payment plans running | TODO | plan number + debit dates | — |
