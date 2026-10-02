# Maintaining

Portuguese tax rules change every year, mostly in January when the new Orçamento do Estado and the new IAS take effect. Without a yearly pass, this repo decays into confident wrong advice. Budget about two hours each January.

## January checklist

1. **IAS.** Find the new IAS portaria on Diário da República. Update `playbooks/key-figures.md`, then recompute every row marked "× IAS" (SS ceiling, IRS Jovem cap, dedução específica).
2. **OE.** Read the IRS and IVA chapters of the new Orçamento do Estado (or a reputable summary: PwC Guia Fiscal, OCC). Update the brackets, rates, thresholds and withholding rates in `key-figures.md`.
3. **Agenda Fiscal.** Download the year's Agenda Fiscal from the Portal. Check every date in `calendar.md` and the routines' Step 0 tables, especially weekend shifts.
4. **Grep for old values.** Search for each figure you changed (`grep -rn "537.13"`) and update the playbooks that quote it.
5. **Forms.** If AT published new declaration models (IVA periódica, Modelo 3 annexes), re-check the field maps in `portals/portal-financas.md`. The next known change: the IVA return's new model from 1 July 2027 (Portaria 298/2026/1).
6. **Staleness.** Run `python3 scripts/staleness-check.py`. Re-verify every file it lists and bump its *Last verified* date only after checking the content.
7. **Calendar file.** Run `python3 scripts/make-ics.py` and tell users in the release notes to re-import it if any routine's cron changed.

## Any time

- **A portal flow changed** → update `portals/`, tag the step *(verified in practice)* with today's date.
- **A fact proved wrong** → fix it, cite the source, and add a `GOTCHAS.md` line if it's a trap others will hit.
- **New routine** → check that its `cron:` uses the shape `M H DOM MONTHS *` (one day of month; months `*` or a comma list), so `make-ics.py` can read it, add a `> **Last verified:**` line after its frontmatter, and add it to the table in `routines/README.md`.
