# Filing structure

Where every document goes, and what it's called. The routines check these exact paths, so a receipt filed somewhere else looks the same as a missing one.

Run `scripts/init-records.sh <year>` to create a year's tree.

## Tree

```
records/                                  gitignored — your data stays local
├── _reference/
│   ├── correspondence-log.md             every letter / e-balcão message to and from AT and SS
│   ├── first-year-status.md              latest first-year routine checklist (overwritten each run)
│   ├── <routine>-last.md                 latest headless run of each routine (scripts/run-routine.sh)
│   └── activity/                         início/alteração de atividade PDFs, SS enquadramento
├── <year>/                               the INCOME year, not the year you file in
│   ├── README.md                         status table: obligation · period · status · proof
│   ├── income/
│   │   ├── recibos-verdes/<client>/      every recibo you issued
│   │   ├── comprovativos-recebimento/    bank proof the client paid
│   │   └── contratos/                    signed service contracts
│   ├── deductions/
│   │   ├── e-fatura/                     annual e-fatura summary, exports
│   │   ├── despesas-atividade/           business receipts with your NIF
│   │   ├── saude/  habitacao/  educacao/
│   ├── declaracoes/
│   │   ├── iva-periodica/                quarterly IVA declaration + nota de liquidação
│   │   ├── iva-recapitulativa/           quarterly VIES recapitulativa
│   │   ├── ss-trimestral/                SS declaração trimestral comprovativos
│   │   ├── ss-comprovativos/             monthly SS payment receipts
│   │   └── pagamentos-por-conta/         IRS PPC receipts
│   ├── irs/
│   │   ├── working/                      drafts, calculations, state-of-play
│   │   └── filed/                        submitted Modelo 3, comprovativo, nota de liquidação
│   └── correspondence/                   letters, e-balcão screenshots, CTT proofs for this year
├── certidoes/                            dated certificates; superseded/ for expired ones
├── residency/                            permits, AIMA appointments, payments
└── mortgage/                             application package (see playbooks/mortgage-self-employed.md)
```

## The year rule

File by the year the income or obligation **belongs to**, not the year you file it. The Q4 IVA declaration filed in February 2027 goes in `records/2026/`. The December SS contribution paid in January goes in `records/2026/`. This is the most common misfiling, and it makes a filed obligation look missing.

Recibos file under the year of their **data de emissão**, the year IRS and IVA count them in. A recibo issued in January for December work lives in the new year's folder, but its income still goes in the previous year's Q4 SS declaration (`routines/ss-quarterly.md` Step 2).

## Naming

Year-first dates so the folder sorts chronologically.

| Document | Name |
|---|---|
| Recibo verde | `YYYY-MM-DD_<type>-<n>_<client>.pdf` (date = data de emissão; type = `FT` fatura, `FR` fatura-recibo, `RG` recibo — so a recibo settling an earlier fatura is visibly not a second sale) |
| Client payment proof | `YYYY-MM-DD_recebimento_<client>.pdf` |
| IVA declaração periódica | `YYYY-Qn_iva-periodica.pdf` · nota: `YYYY-Qn_iva-nota-liquidacao.pdf` |
| Recapitulativa | `YYYY-Qn_recapitulativa.pdf` |
| SS declaração trimestral | `YYYY-Qn_ss-trimestral.pdf` |
| SS monthly payment | `YYYY-MM_ss-pagamento.pdf` (MM = contribution month, not payment month) |
| IRS pagamento por conta | `YYYY_ppc-<n>of3.pdf` |
| e-fatura annual summary | `YYYY_efatura-resumo.pdf` |
| Certidão | `YYYY-MM-DD_certidao-<type>.pdf` (date = issue date, so validity is readable) |

Portals name downloads things like `20260814_101532_8842...pdf`. Rename on filing.

## Rules

1. **The folder is the record, not the authority.** A missing file means "check the portal", not "unfiled". A filing done without saving the proof looks identical to no filing.
2. **Read the date inside the PDF.** Filenames carry one date; IVA counts by issue date and SS by service month. Open the file when it matters.
3. **No secrets here.** IDs and account numbers are fine. Passwords, 2FA seeds, certificate keys never.
4. **No dual storage.** One canonical copy per document. Other notes link to it.
