# pt-freelancer-ops

An AI-operable admin kit for freelancers in Portugal. It covers recibos verdes, IVA, Segurança Social, IRS, certidões and residency paperwork, packaged so any AI agent (Claude, ChatGPT/Codex, Gemini, or whatever you use) can run your obligations calendar, walk you through the portals, and file the evidence.

It came out of self-filing after replacing an accountant with an AI agent and a folder of markdown. Everything that the agent learned the hard way and that will happen to the next person too — deadlines, form walkthroughs, portal click paths, UI traps, the obligation people miss — is here. One-off case history is not.

> **Not tax or legal advice.** This is a working operator's notebook. Rules change with every Orçamento do Estado. Every playbook carries a *last verified* date, and facts are tagged *(official source)*, *(verified in practice)* or *(unverified)*. Check the portal before you rely on a number.

## Who it fits

Built for and tested on: a **trabalhador independente** on **regime simplificado**, IVA **regime normal trimestral**, billing **EU business clients** (reverse charge + recapitulativa). The playbooks also cover the IVA-exempt (art. 53.º) setup, Portuguese clients with retenção na fonte, and non-EU clients — but those paths were researched, not lived. Check the confidence tags.

Not covered: contabilidade organizada bookkeeping, companies (Lda / Unipessoal), hiring staff of your own. Life events — being employed and freelancing at once, married or unido de facto filing, leaving Portugal — plus foreign accounts and investments, crypto, and Portuguese property have their own playbooks, researched rather than lived.

## Works with

| Tool | How to use it | Scheduled reminders |
|---|---|---|
| **Claude Code** (CLI or desktop app) | Open the folder. It reads `CLAUDE.md`, which points to `AGENTS.md`. | The Claude desktop app can create local scheduled tasks for the folder — ask it to set up the routines that apply to you. In the CLI, use a system cron line (`scripts/run-routine.sh`) or the calendar file. Cloud schedules can't see your local `profile.md` and `records/`. |
| **Codex CLI** | Open the folder. It reads `AGENTS.md`. | System cron with `codex exec`, or the calendar file. |
| **Gemini CLI** | Open the folder. It reads `GEMINI.md`, which points to `AGENTS.md`. | System cron with `gemini -p`, or the calendar file. |
| **ChatGPT, Claude or Gemini chat apps** | They don't open local folders. Upload the files you need (playbooks, `GOTCHAS.md`, `calendar.md`) to a Project, Gem or chat and ask from there. | Import the calendar file (`python3 scripts/make-ics.py`). Chat-app reminders can't read your files. |

Tested with Claude Code. Codex and Gemini CLI follow the same `AGENTS.md` convention but haven't been tested yet — reports welcome.

## How it works

```
profile.md ──→ AGENTS.md ──→ routines/ (cron) ──→ playbooks/ + portals/ ──→ records/
who you are     how the        what's due and       how it works and          where the proof
(gitignored)    agent behaves  when to check        where to click            lands (gitignored)
```

The agent prepares and verifies. **You** press Entregar and you pay.

## Setup (~15 min)

```bash
git clone https://github.com/4arkin/pt-freelancer-ops.git ~/pt-freelancer-ops
cd ~/pt-freelancer-ops
cp profile.example.md profile.md        # fill in with your agent, or by hand
scripts/init-records.sh 2026            # creates records/2026/…
python3 scripts/make-ics.py             # calendar file with every reminder — import it (name routines to include only those)
```

Then open the folder in your agent. Claude Code reads `CLAUDE.md`, Gemini CLI reads `GEMINI.md`, and Codex and most others read `AGENTS.md` — all three point to the same instructions. Start with: *"Read AGENTS.md and help me fill in profile.md."*

To schedule the routines with cron, a desktop agent app or just a calendar, see [`routines/README.md`](routines/README.md).

## What's inside

| Path | What |
|---|---|
| [`AGENTS.md`](AGENTS.md) | Operating rules for the agent: never submits, never trusts memory over documents, asks before money moves |
| [`calendar.md`](calendar.md) | Every recurring obligation, deadline and the traps between them |
| [`routines/`](routines/) | 10 scheduled checks: SS payment, SS quarterly, recapitulativa, IVA quarterly, art. 53.º threshold watch, PPC, e-fatura, IRS prep, month-end, first-year |
| [`playbooks/`](playbooks/) | How each topic works: rules, rates with year, legal basis — plus life events and other income (employed + freelance, family filing, leaving Portugal, foreign income, crypto, property) |
| [`portals/`](portals/) | Click paths, form fields and UI quirks for Portal das Finanças, e-fatura, Segurança Social Direta and others |
| [`GOTCHAS.md`](GOTCHAS.md) | The traps, in one list |
| [`LINKS.md`](LINKS.md) | Official URLs worth bookmarking |
| [`storage/filing-structure.md`](storage/filing-structure.md) | Folder tree and file naming the routines rely on |
| [`profile.example.md`](profile.example.md) | Template for your regime, clients and IDs — copied to the gitignored `profile.md` |
| [`tests/`](tests/) | 20 eval scenarios, a grading rubric and a live-demo trio — check your agent actually reads the repo |
| [`scripts/`](scripts/) | Records init, routine runner, eval runner, calendar (.ics) builder, staleness check |
| [`MAINTAINING.md`](MAINTAINING.md) | The January update checklist |

## Privacy

Your data lives in `profile.md` and `records/`, both gitignored. Nothing here needs a password, and the agent is told never to ask for one — you log in to the portals yourself.

## Contributing

Found a portal flow that changed, a trap that isn't listed, or a rule that's wrong? Open a PR — format in [`CONTRIBUTING.md`](CONTRIBUTING.md). The repo gets better each time one more freelancer's agent learns something the hard way.
