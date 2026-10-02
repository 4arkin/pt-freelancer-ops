#!/usr/bin/env bash
# Run one routine with whichever AI CLI you use.
#   AGENT_CMD='claude -p'   scripts/run-routine.sh ss-payment
#   AGENT_CMD='codex exec'  scripts/run-routine.sh iva-quarterly
#   AGENT_CMD='gemini -p'   scripts/run-routine.sh monthly-close
# The agent runs from the repo root so it can read AGENTS.md, profile.md and records/.
set -euo pipefail

name="${1:?usage: run-routine.sh <routine-name>}"
root="$(cd "$(dirname "$0")/.." && pwd)"
file="$root/routines/$name.md"
[ -f "$file" ] || { echo "no such routine: $file" >&2; exit 1; }
: "${AGENT_CMD:?set AGENT_CMD, e.g. AGENT_CMD='claude -p'}"

prompt="Today is $(date +%Y-%m-%d). Read AGENTS.md and profile.md, then carry out routines/$name.md. Never submit a declaration or make a payment — prepare it and tell me what to press. This is a non-interactive run: nobody can answer questions, so where you would ask, state the assumption or list the question instead. Write your findings (the routine's report, open questions, next actions) to records/_reference/$name-last.md, overwriting it."

cd "$root"
# shellcheck disable=SC2086  # AGENT_CMD is intentionally word-split
exec $AGENT_CMD "$prompt"
