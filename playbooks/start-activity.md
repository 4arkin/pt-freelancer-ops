# Start, change and close activity

> **Applies to:** anyone becoming a trabalhador independente (Categoria B) in Portugal, residents and non-residents
> **Last verified:** 2026-10-02

The sequence is NIF → Portal das Finanças access → Declaração de Início de Atividade, filed **before** the first service. What you type in the início declaration (activity code, estimated turnover, regime choices) sets your IVA and IRS framework for the year, so it is the one form worth slowing down for. Changes later go through a Declaração de Alterações; stopping goes through a Cessação. Segurança Social registration follows automatically from the AT data — see `seg-social-direta` in `portals/`.

## Rules

### NIF and fiscal representative

- **Who needs a NIF:** anyone, resident or not, who has obligations or exercises rights before AT (e.g. declaring início de atividade). One NIF per person. *(official source: AT FAQ faqs-00299)*
- **Where:** Serviço de Finanças (by appointment) or e-balcão. Since 1 July 2025, NIF requests and address changes for people without a Cartão de Cidadão go through e-balcão or in-person with prior appointment; appointments can be booked on the Portal's Contactos page without logging in, or by phone (+351) 217 206 707. *(official source: gov.pt news, 2025)*
- **Documents — EU/EEA/Andorra/Switzerland citizens:** ID or passport + Certificado de Registo de Cidadão da UE (Câmara Municipal). **Third-country citizens:** passport + one of: AIMA residence title, AIMA appointment/pending-process receipt, or international/temporary protection document. If the address isn't on those, add a lease, deed, work contract or document from a public entity. *(official source: AT FAQ faqs-00299)*
- **Online via e-balcão** only through a *representante legal* (someone with power of attorney — different from a fiscal representative): passport, proof of foreign address, procuração with recognised signature (unless issued to a lawyer/solicitador). The NIF is issued as **não residente**; you change the address yourself when you become resident. *(official source: AT FAQ faqs-00299)*
- **Fiscal representative (art. 19.º LGT, as amended by DL 44/2022):** *(official source: Ofício Circulado 90057/2022)*
  - Address in the EU/EEA → representative is **always optional**.
  - Address in a third country and **no** tax relationship (just holding a NIF) → not required at NIF issue.
  - Address in a third country **and** a tax relationship (property, car, PT employment, self-employment) → name a representative **or** join electronic notifications (Portal das Finanças notificações or ViaCTT) within 15 days of the triggering fact.
  - **Exception that matters here:** a third-country resident who **exercises self-employed activity in Portugal** must still name an **IVA representative** (a PT-resident IVA taxpayer) **before** starting; joining e-notifications does not waive it. The IVA representative is jointly liable for IVA (art. 30.º CIVA).
  - **When it stops being required:** once your fiscal address is in Portugal (you are resident) or in the EU/EEA. Change the address first; cancelling e-notifications only takes effect after a representative is named, if one is required.
  - Missing a required representative: coima €75–€7,500 (art. 124.º RGIT) and you can't exercise rights (reclamação, recurso) until fixed.

### Portal access

- **Senha:** Portal das Finanças → Registar-se → Registo do NIF. The password arrives **by post** to your fiscal address; email/phone confirmation codes only work after it arrives. *(unverified — Vendus guide, 2025)*
- **Chave Móvel Digital (CMD):** foreigners can activate with a passport or residence card/title; with a residence title you need a NIF. Without a Portuguese Cartão de Cidadão, activation is **in person** (Espaço Cidadão / Loja do Cidadão, or some consulates). *(official source: gov.pt "Ativar a Chave Móvel Digital"; justica.gov.pt)*

### Declaração de Início de Atividade

- **Deadline:** before starting, at the latest on the day stated as the start date (art. 112.º n.º 1 CIRS; art. 31.º CIVA). *(official source)*
- **Activity code:** CAE (INE) **or** a code from the art. 151.º CIRS table (Portaria 1011/2001). One main + up to four secondary codes. *(official source: art. 151.º CIRS; count unverified — Doutor Finanças)*
  - Code choice drives the regime simplificado coefficient: activities in the art. 151.º table get **0.75**; other services **0.35**; the catch-all **1519 "outros prestadores de serviços"** is outside the 0.75 group. *(official source: art. 31.º n.º 1 CIRS)* See `regime-simplificado.md`.
  - AT doctrine reportedly applies 0.75 to activities specifically listed in the table even if registered under the equivalent CAE. *(unverified — practitioner blog citing AT doctrine)*
- **Estimated turnover ("Volume de negócios") field — the consequential one:**
  - **IVA:** an estimate ≤ €15,000 (2025 and 2026) of turnover **in Portuguese territory**, for the period from start date to 31 December (no longer annualised since 1 July 2025), puts you in the art. 53.º exemption automatically. *(official source: art. 53.º n.º 1 e 5 CIVA; Ofício Circulado 25062/2025)*
  - **IRS:** estimate ≤ €200,000 → regime simplificado, unless you opt for contabilidade organizada in the same declaration (art. 28.º n.º 2, 4 e 10 CIRS). *(official source)*
- **IVA regime options in the form:**
  - Art. 53.º applies only with a fiscal address (sede/domicílio) in Portugal, or in another EU state under the cross-border scheme. A third-country fiscal address excludes it. *(official source: art. 53.º n.º 1–2 CIVA)*
  - Stay in art. 53.º (default when eligible) or **renounce** it and choose regime normal — a renunciation locks you into regime normal for **at least 5 years** (art. 55.º CIVA). *(official source: Ofício Circulado 25062/2025)*
  - Regime normal periodicity: quarterly by default (turnover < €650,000); you can opt for monthly in the início declaration (art. 41.º CIVA). *(official source)*
  - Answer the Anexo E question (scrap/waste activities) "Não" unless it applies. *(unverified — Doutor Finanças)*
- **IBAN** for the activity is requested in the form. *(unverified — Santander guide)*

### Declaração de Alterações

- **When:** within **15 days** of any change to data in the início declaration (art. 112.º n.º 2 CIRS; art. 32.º n.º 2 CIVA) — new activity code, new address of activity, starting intra-EU operations. *(official source)*
- **Special windows:**
  - Leaving art. 53.º because prior-year national turnover > €15,000 → within 15 **business** days of 31 December. *(official source: art. 58.º n.º 5 CIVA)*
  - Exceeding €18,750 during the year → within 15 business days of the crossing invoice's issue date; IVA is due on the invoice that crosses the line. *(official source)* See `iva-regimes.md`.
  - Opting into contabilidade organizada → by end of March, effective that year (art. 28.º n.º 4 b) CIRS). *(official source)*
  - Monthly ↔ quarterly IVA, or moving back into art. 53.º → only in January, effective 1 January (art. 41.º; Ofício Circulado 25062/2025). *(official source)*
- Effective from the declaration date, not retroactively. *(official source — see `portals/portal-financas.md`)*

### Cessação

- Within **30 days** of the cessation date (art. 112.º n.º 3 CIRS; art. 33.º CIVA). *(official source)*
- Late or missing: coima €300–€7,500 (art. 117.º n.º 2 RGIT). *(official source)*
- SS closes the TI enquadramento automatically from it. *(official source: ISS FAQ v09, Q50)*
- Full exit sequence: [`leaving-portugal.md`](leaving-portugal.md).
- Restarting within 12 months while you were in an IVA taxation regime at cessation → you restart in regime normal even if eligible for art. 53.º. *(official source: Ofício Circulado 25062/2025)*
- Restarting within 5 years of a cessação blocks the first/second-year coefficient reductions in regime simplificado (art. 31.º n.º 11 CIRS). *(official source)*
- With activity open you file Anexo B every year, even with zero income. *(unverified — Deco Proteste)*

### Electronic notifications

- **Obliged to have a caixa postal eletrónica (ViaCTT):** IRS-taxpayers resident in Portugal **in regime normal of IVA**, within **30 days** of starting activity or of entering regime normal (art. 19.º n.º 12 LGT). Joining the Portal das Finanças notifications (NCEPF) instead satisfies the obligation (art. 19.º n.º 14 LGT). *(official source: AT FAQ faqs-00255)*
- **Not obliged:** art. 53.º, art. 9.º, IVA de caixa, pequenos retalhistas — optional. *(official source: AT FAQ faqs-00255)*
- **If you don't comply:** AT registers you ex officio in NCEPF (Portaria 233/2019). Notifications then land in your Portal area whether you look or not. *(official source)*
- **When a notification counts as received:** NCEPF → 5th day after it is made available (art. 38.º-A n.º 4 CPPT); ViaCTT → 15th day after availability (art. 39.º n.º 10 CPPT). Deadlines (reclamação, payment, audição prévia) run from that date — not from when you open it. *(official source — see `at-communication.md`; older sources still say 25th day)*

## How to do it

1. **NIF (non-resident, online):** representative logs in → e-balcão → Registo Contribuinte → Identificação → Atrib/Alter NIF-Singulares → attach passport, foreign address proof, procuração. *(official source: AT FAQ faqs-00299)*
2. **Name a fiscal representative:** Portal → Serviços → Dados Cadastrais → Representante → Entregar Nomeação → choose **IRS** or **IVA e IRS**. The representative must accept. *(official source: Ofício Circulado 90057/2022)*
3. **Join e-notifications:** A Minha Área → Notificações e Citações → Gerir canais → Canais de Notificação → Portal das Finanças → Ativar (or Via CTT → Ativar). *(official source: Ofício Circulado 90057/2022)*
4. **Início de atividade:** Portal → Todos os Serviços → Início de Atividade → Entregar declaração → fill → Validar → Submeter. Keep the comprovativo. *(unverified — Santander guide; menu labels may shift, use the search box)*
5. **Alterações / Cessação:** Atividade → Submeter Declarações → Declaração de Alterações (or Cessação). *(verified in practice — see `../portals/portal-financas.md`)*
6. **Check what AT actually recorded:** Situação Fiscal Integrada → Atividade Exercida — regimes and their start dates. *(verified in practice)*

## Gotchas

- **Estimating turnover from the start date to 31 December, not for 12 months** — since July 2025 a July start estimating €10,000 for the remaining months is what goes in the field. Annualising it pushes you out of art. 53.º for nothing. *(official source: Ofício Circulado 25062/2025)*
- **Renouncing art. 53.º "to look professional" costs 5 years in regime normal**, with quarterly returns even in zero quarters. Decide on purpose.
- **Third-country residents assume e-notifications replace the IVA representative.** They don't when you have self-employed activity. Fix: name a PT-resident IVA taxpayer before the start date.
- **Changing your address to Portugal doesn't change your status by itself** for people without Cartão de Cidadão; foreign → foreign changes are online, foreign → PT need the documents listed above. *(official source: gov.pt news)*
- **Ignoring the Portal's notification area.** A coima or liquidação counts as notified on day 5 even if you never open it.
- **Choosing 1519 because nothing else fits** moves you from 0.75 to 0.35 coefficient territory only if your service genuinely isn't in the art. 151.º table — check the table first.

## Sources

- AT FAQ — NIF singulares (faqs-00299): https://info.portaldasfinancas.gov.pt/pt/apoio_contribuinte/questoes_frequentes/Pages/faqs-00299.aspx
- AT FAQ — Notificações eletrónicas (faqs-00255): https://info.portaldasfinancas.gov.pt/pt/apoio_contribuinte/questoes_frequentes/pages/faqs-00255.aspx
- Ofício Circulado 90057/2022 (representação fiscal): https://www.apeca.pt/docs/informacaoapeca/oc_90057_2022.pdf (copy hosted by APECA)
- Ofício Circulado 25062/2025 (art. 53.º): reproduced at https://www.grupovidaeconomica.pt/pt-pt/pequenas-empresas-tem-novo-regime-especial-de-isencao-do-iva
- CIRS art. 28.º, 31.º, 112.º, 151.º: https://info.portaldasfinancas.gov.pt/pt/informacao_fiscal/codigos_tributarios/cirs_rep/Pages/irs112.aspx
- CIVA art. 32.º, 33.º, 41.º, 53.º, 58.º: https://info.portaldasfinancas.gov.pt/pt/informacao_fiscal/codigos_tributarios/civa_rep/Pages/iva32.aspx
- Portaria 1011/2001 (art. 151.º table): https://diariodarepublica.pt/dr/legislacao-consolidada/portaria/2001-177307831
- gov.pt — Abrir atividade: https://www.gov.pt/servicos/abrir-atividade-nas-financas
- gov.pt — Novas regras NIF (2025): https://www.gov.pt/noticias/novas-regras-para-pedido-de-nif-e-alteracao-de-morada-para-cidadaos-sem-cartao-de-cidadao
- gov.pt — Chave Móvel Digital: https://www.gov.pt/servicos/ativar-a-chave-movel-digital
- OCC — Notificação e Citação (2026): https://www.occ.pt/sites/default/files/public/2026-04/Guia_Pratico_citacoes2.pdf
- Secondary: Doutor Finanças, Santander Salto, Vendus (início de atividade guides)
