# Gotchas

The traps, in one list. Each one cost someone money, a deadline or a deduction. Details are in the linked file.

> **Last verified:** 2026-10-02

## Deadlines

1. **The recapitulativa is due a month before the IVA return — two months for Q2.** Q2 recapitulativa: 20 July. Q2 IVA: 20 September (21 September in 2026 — a Sunday shift). One "IVA reminder" can't cover both. → [calendar.md](calendar.md)
2. **Férias fiscais only moves August deadlines.** The July recapitulativa never moves. → [calendar.md](calendar.md)
3. **The SS declaração trimestral has no visible consequence when missed** — until SS charges you the minimum, then bills the difference as a late payment plus a fine. → [routines/ss-quarterly.md](routines/ss-quarterly.md)
4. **SS shows a *data limite* at month-end, but the payment window is the 10th–20th.** → [portals/seg-social-direta.md](portals/seg-social-direta.md)
5. **Deadlines on a weekend move to the next business day.**
6. **Q4 obligations are filed in January/February but belong to the previous year** — including the SSD year selector, which defaults to the current year and looks empty.
7. **The payment-plan request window opens *after* the voluntary payment deadline** and lasts 15 days. You can't request a plan early. → [portals/portal-financas.md](portals/portal-financas.md#payment-plans-plano-prestacional)

## Numbers

8. **IVA counts recibos by issue date. SS counts them by service month.** The same recibo can sit in different quarters. Never copy a total from one filing to the other.
9. **The recibo verde prints a foreign VAT number without its country prefix.** Re-add it and check VIES before the recapitulativa.
10. **Use AT's printed figure, never your own formula,** for anything you pay: PPCs, settlements, SS. Estimates drift from the official number.
11. **The SS variação (−25% … +25%) resets to 0% on every declaration.** It isn't a standing setting.
12. **Annulled recibos leave gaps in the numbering.** Check every gap before summing a quarter.
13. **Recapitulativa campo 19 must equal IVA return campo 7.** AT cross-checks them.

## Portals

14. **Supplier invoices land in e-fatura unclassified and don't count until you classify them.** Do it before every IVA return. → [portals/e-fatura.md](portals/e-fatura.md)
15. **Pressing Entregar gives you no receipt.** Fetch it separately via *Obter Comprovativo*, and confirm in *Consultar Declarações Entregues*. → [portals/portal-financas.md](portals/portal-financas.md)
16. **After a direct debit succeeds, the PAGAR button can stay visible for days. Don't press it** — you'll pay twice.
17. **The recapitulativa value field swallows the first keystroke** after adding a row.
18. **Direct debit needs your general IBAN** on the AT record; the "IBAN afeto à atividade" doesn't work.
19. **Banco de Portugal's CRC login fails unless you accept cookies first.** → [portals/other-sites.md](portals/other-sites.md)
20. **Downloads land wherever the browser saves,** with generated names. Look before clicking again.

## AT communication

21. **"Concluída" on an e-balcão ticket closes the ticket, not your case.**
22. **A reply without a despacho, ofício number or notification date isn't a decision** and starts no deadline — even if it says "segue em anexo a resposta". AT can attach the wrong file.
23. **e-balcão routing decides who reads your message.** Misrouted requests get bounced to postal mail.
24. **Keep a correspondence log on the day things move** — tracking number, pedido number, file. → [storage/filing-structure.md](storage/filing-structure.md)

## Regimes

25. **IRS Jovem is blocked by an NHR or IFICI registration in your cadastro** (AT error BB3), even if you never used the benefit. Check *Os Seus Dados → Residente Não Habitual* before claiming. → [playbooks/irs-special-regimes.md](playbooks/irs-special-regimes.md)
26. **Three code systems, never interchangeable:** the CIRS art. 151.º table (4 digits, on your recibos and Anexo B), CAE (5 digits, economic activity), CPP/2010 (4 digits, only for NHR high-value activities in Anexo L). Calling one by another's name leads to wrong advice.
27. **Foreign-client income: Anexo B alone, or Anexo J too? There are two readings.** Declaring it only in Anexo B was filed and liquidated without objection. The accountants' order (OCC) and art. 18.º CIRS point to Anexo J. Without NHR/IFICI or foreign withholding the tax is the same; with either, ask a contabilista. → [playbooks/irs-modelo3.md](playbooks/irs-modelo3.md)
28. **Foreign deposit and securities accounts go in Anexo J quadro 11** — home-country banks and foreign brokers included — even with zero income. Payment and e-money accounts are not covered (Ofício Circulado 20.211/2019); if unsure what the provider is, declare. → [playbooks/foreign-income-and-accounts.md](playbooks/foreign-income-and-accounts.md)
29. **The 0,75 coefficient is cut in your first two years of activity** — by 50% in the start year and 25% in the next (art. 31.º n.º 10 CIRS). → [playbooks/regime-simplificado.md](playbooks/regime-simplificado.md)
30. **Invoice descriptions are evidence of what activity you do.** AT can read them years later; past descriptions can't be changed.

## Foreign income, crypto, property

31. **The foreign tax credit stops at the treaty rate.** Withholding above it is reclaimed from the source country, not from AT. Give foreign payers your certidão de residência fiscal or their treaty form first. → [playbooks/foreign-income-and-accounts.md](playbooks/foreign-income-and-accounts.md)
32. **Modelo 21-RFI is for non-residents earning Portuguese income.** As a PT resident you use the certidão de residência fiscal (or the other country's form) instead. → [playbooks/foreign-income-and-accounts.md](playbooks/foreign-income-and-accounts.md)
33. **Englobamento is all-or-nothing per category.** Opting in for foreign interest drags in your Portuguese interest too. → [playbooks/foreign-income-and-accounts.md](playbooks/foreign-income-and-accounts.md)
34. **Crypto held ≥ 365 days is untaxed but still declared** (Anexo G1 Q7). An undeclared sale that shows up in a DAC8 platform report looks like evasion. → [playbooks/crypto.md](playbooks/crypto.md)
35. **Crypto FIFO runs per platform,** and art. 10.º CIRS was renumbered on 20 May 2026 — the old n.º 19–22 are now 22–25. → [playbooks/crypto.md](playbooks/crypto.md)
36. **Declare the reinvestment intention in the sale year's Anexo G,** or the own-home gain exclusion fails even if you buy in time. → [playbooks/property-in-portugal.md](playbooks/property-in-portugal.md)
37. **AIMI is not a deductible rental expense; IMI is.** → [playbooks/property-in-portugal.md](playbooks/property-in-portugal.md)

## IVA exemption (art. 53.º)

38. **Two different €15,000 tests.** The IVA exemption counts PT-located turnover; the IRS withholding dispensa (art. 101.º-B) counts all Categoria B income, foreign clients included. Being IVA-exempt doesn't let PT company clients skip the 23%. → [routines/iva-threshold-watch.md](routines/iva-threshold-watch.md)
39. **The invoice that takes the year above €18,750 already carries IVA,** and the declaração de alterações is due 15 business days from that invoice's date. → [routines/iva-threshold-watch.md](routines/iva-threshold-watch.md)
40. **Ending the year between €15,000 and €18,750 changes nothing until January** — then the alteração is due within 15 business days of 31 December, and every invoice from 1 January carries IVA, including ones issued before you file it.
41. **Summing every recibo PDF double-counts.** A *Recibo* that settles an earlier fatura is the same sale. Sum faturas and faturas-recibo only.
42. **Art. 53.º needs a Portuguese (or EU) fiscal address.** With a third-country address you're outside it. → [playbooks/start-activity.md](playbooks/start-activity.md)

## First two years

43. **Nothing reminds you when the SS exemption ends.** Enquadramento is the 1st of the 12th month after you started; the first declaração trimestral follows in the next Jan/Apr/Jul/Oct. → [routines/first-year.md](routines/first-year.md)
44. **Registering for IFICI "just in case" costs you IRS Jovem.** The registration blocks it, and the 15 January deadline after arrival forces the choice early. → [playbooks/irs-special-regimes.md](playbooks/irs-special-regimes.md)
45. **No PPCs in your first IRS year doesn't mean none ever.** The first ones come in year N+2, from the nota for your start year. → [playbooks/irs-modelo3.md](playbooks/irs-modelo3.md)
46. **The arrival year is a partial residence year.** Income from before arrival doesn't go in the resident declaration. → [playbooks/irs-modelo3.md](playbooks/irs-modelo3.md)

## Life changes

47. **The employed-person SS exemption has a ceiling.** Above €9,207.94 of gross services in a quarter (2026) you owe contributions on the excess and must deliver that quarter's declaração trimestral. → [playbooks/employed-and-freelance.md](playbooks/employed-and-freelance.md)
48. **Recibos to your own employer stay out of the declaração trimestral.** They're outside the TI regime; the employer covers them. → [playbooks/employed-and-freelance.md](playbooks/employed-and-freelance.md)
49. **Invoicing the company that paid your severance within 24 months makes the whole severance taxable** (art. 2.º n.º 4 b) CIRS). → [playbooks/employed-and-freelance.md](playbooks/employed-and-freelance.md)
50. **Joint vs separate filing is a fresh choice every year, and both spouses must opt.** Compare joint against both separate returns added together. → [playbooks/family-and-joint-filing.md](playbooks/family-and-joint-filing.md)
51. **The agregado on 31 December decides the whole year.** Update it on the Portal by the end of February. → [playbooks/family-and-joint-filing.md](playbooks/family-and-joint-filing.md)
52. **Cessação doesn't file your last IVA return or recapitulativa,** and SS closes itself but the last declaração trimestral is still due. → [playbooks/leaving-portugal.md](playbooks/leaving-portugal.md)
53. **Leaving mid-year isn't always a split year.** Over 183 days in PT plus untaxed income after leaving, or returning the next year, makes you resident for the whole year (art. 16.º n.º 14, 16 CIRS). → [playbooks/leaving-portugal.md](playbooks/leaving-portugal.md)

## Scheduling and agents

54. **Reminder schedulers die silently.** An app update can stop every reminder with no error. Keep a calendar layer too. → [routines/README.md](routines/README.md)
55. **One-shot reminders expire.** Use recurring crons that work out the period from today's date.
56. **The folder is the record, not the authority.** A filed-but-unsaved declaration looks exactly like an unfiled one.
57. **Read local documents before searching the web.** Your own declarations and recibos settle terminology and figures faster than any article.
