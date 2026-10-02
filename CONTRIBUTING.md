# Contributing

This repo is knowledge an AI agent reads before it helps a freelancer in Portugal with tax, social security and residency admin. Write for that reader: exact menu paths, exact field numbers, exact deadlines, and the trap next to the rule it breaks.

## What belongs here

Reproducible knowledge only — something the next person will hit too.

- Yes: a deadline, a form's quadro-by-quadro walkthrough, a portal click path, a UI quirk, a legal article that sets a rule, a document checklist with validity windows.
- No: one person's case history, strategy debates, amounts tied to a person, names, NIF/NISS/IBAN, tracking or process numbers. If a one-off case taught a reusable mechanic, keep the mechanic and drop the case.

## Playbook format

```markdown
# <Topic>

> **Applies to:** <who — e.g. trabalhador independente, regime simplificado>
> **Last verified:** YYYY-MM-DD

<2–4 sentence orientation: what this is and when it matters.>

## Rules
Numbers, rates, deadlines. Each one with its legal basis or official source inline.

## How to do it
Numbered click paths: Portal → Menu → Submenu → Button. Field and quadro numbers where a form is involved.

## Gotchas
Traps that recur. One bullet each, the trap first, the fix second.

## Sources
Official links first (info.portaldasfinancas.gov.pt, seg-social.pt, aima.gov.pt, gov.pt, diariodarepublica.pt), then reputable secondary.
```

## Confidence markers

Tag any fact that isn't plainly confirmed by an official source:

- *(verified in practice)* — someone did it and it worked that way
- *(official source)* — stated by AT / SS / AIMA / law
- *(unverified)* — secondary source or inference; check before relying on it

Rates and thresholds change with each Orçamento do Estado. Put the year next to every number (`IAS 2026 = €…`).
