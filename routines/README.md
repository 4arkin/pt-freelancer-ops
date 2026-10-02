# Routines

> **Last verified:** 2026-10-02

Each file here is a self-contained prompt with a `cron:` line. Any AI agent that can read files can run one: it reads `AGENTS.md`, `profile.md`, then the routine, and checks `records/`. Routines prepare and verify — they never submit a declaration or make a payment. You press the button.

| Routine | Fires (Europe/Lisbon) | Covers |
|---|---|---|
| `ss-payment` | 12th, monthly | SS contribution, 10th–20th window |
| `ss-quarterly` | 20 Jan · Apr · Jul · Oct | SS declaração trimestral |
| `iva-recapitulativa` | 13 Jan · Apr · Jul · Oct | VIES recapitulativa (EU B2B clients) |
| `iva-quarterly` | 13 Feb · May · Sep · Nov | IVA declaração periódica + payment |
| `iva-threshold-watch` | 5th, monthly | art. 53.º only: PT-located turnover vs €15,000 / €18,750, exit steps, IVA mention + retenção on PT recibos |
| `irs-ppc` | 13 Jul · Sep · Dec | IRS pagamentos por conta; the July run also checks last year's nota de liquidação and the IRS payment (by 31 Aug) |
| `efatura-year-end` | 10 Jan | e-fatura classification for the prior year |
| `irs-annual-prep` | 15 Mar | Modelo 3 evidence audit + regime choice |
| `monthly-close` | 25th, monthly | recibos, receipts, SS backstop, art. 53.º headroom, residence-title expiry |
| `first-year` | 1st, monthly — retires itself after ~24 months | one-time events after início/arrival: SS exemption end, IFICI deadline, IRS Jovem count, first Modelo 3 and PPCs, first permit renewal |

Each fires about a week before its deadline. The calendar behind the dates is [`../calendar.md`](../calendar.md).

Schedule only the routines whose `applies_if` (in each file's frontmatter) fits your `profile.md`. Each routine also checks again and says "not applicable" when it doesn't fit.

## Scheduling — pick one, plus the calendar

**Any CLI agent via cron.** `scripts/run-routine.sh` wraps any command-line agent:

```bash
AGENT_CMD='claude -p'  scripts/run-routine.sh ss-payment     # Claude Code
AGENT_CMD='codex exec' scripts/run-routine.sh ss-payment     # OpenAI Codex CLI
AGENT_CMD='gemini -p'  scripts/run-routine.sh ss-payment     # Gemini CLI
```

Then put it in your crontab with the routine's `cron:` value, e.g.:

```
0 9 12 * *  cd ~/pt-freelancer-ops && AGENT_CMD='claude -p' scripts/run-routine.sh ss-payment >> records/routine.log 2>&1
```

Cron runs with a minimal `PATH` and your machine's time zone: use the agent CLI's full path (`which claude`) if it isn't found, and set the machine to Europe/Lisbon or shift the hours. Headless agents usually also need a flag that lets them write files without asking — check your CLI's docs.

Headless runs can't ask you questions. `run-routine.sh` tells the agent so, and has it write its findings to `records/_reference/<routine>-last.md` (overwritten each run). Open that file when you sit down.

**Agent apps with built-in scheduling** (Claude desktop/Cowork scheduled tasks, ChatGPT tasks, and similar). Create one task per routine, paste the cron, and set the prompt to: *"Read AGENTS.md and profile.md in <this folder>, then carry out routines/<name>.md."* Point it at the folder — don't paste the routine body. That way a fix to the routine reaches the task.

**No agent at all.** The routines read fine as checklists.

**Second layer: the calendar.** `python3 scripts/make-ics.py` writes `pt-freelancer-ops.ics` with every routine as a recurring event; `python3 scripts/make-ics.py ss-payment ss-quarterly …` includes only the routines you name. Import it into your calendar. The `first-year` event has no end date: delete it when the routine reports that it no longer applies (about 24 months in). Schedulers fail silently — an app update can re-key the task registry and stop every reminder with no error. The calendar keeps firing when the scheduler doesn't.

## Scheduler gotchas

- **macOS launchd + `~/Documents`:** launchd jobs that run `bash` scripts reading files under `~/Documents` are blocked by macOS privacy controls (TCC) without a clear error. Keep the repo outside `~/Documents`, grant Full Disk Access to the interpreter, or launch through `python3`, which picks up the permission prompt more reliably.
- **AI CLIs that update themselves** can re-trigger the folder-access permission prompt after each version update, because the binary path changes. A headless run then hangs on a prompt nobody sees. Run one routine by hand after each update.
- **One-shot schedules expire.** A "fire once on 20 July" task needs re-creating every year. Use recurring crons and let the routine work out the period from today's date — all of these do.
- **Catch-up runs fire late.** A laptop asleep at 09:00 may run the job days later. Every routine works out the quarter from today's date and doesn't assume.
- **Watch the watcher.** If you rely on a scheduler, check now and then that the tasks still exist and fired recently.
