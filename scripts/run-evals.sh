#!/usr/bin/env bash
# Run the eval scenarios in tests/scenarios.md through any AI CLI, for human grading.
#   AGENT_CMD='claude -p'   scripts/run-evals.sh            # all scenarios
#   AGENT_CMD='codex exec'  scripts/run-evals.sh 2 6 9      # just these numbers
#   AGENT_CMD='gemini -p'   scripts/run-evals.sh
# Answers are appended to tests/results-<date>.md. Grade them against tests/scenarios.md.
# The agent runs from the repo root so it can read AGENTS.md and the playbooks.
set -euo pipefail

root="$(cd "$(dirname "$0")/.." && pwd)"
scenarios="$root/tests/scenarios.md"
[ -f "$scenarios" ] || { echo "no scenarios file: $scenarios" >&2; exit 1; }
: "${AGENT_CMD:?set AGENT_CMD, e.g. AGENT_CMD='claude -p'}"

today="$(date +%Y-%m-%d)"
out="$root/tests/results-$today.md"
want=" $* "

# One line per scenario, fields split by \x1f (unit separator): number, title, setup, question.
# Headings are "## <n>. <title>"; fields are the bold labels **Setup:** and **Question:**,
# each running until the next bold label or heading. Multi-line values are joined with spaces.
parse() {
  awk '
    function trim(s) { sub(/^[ \t]+/, "", s); sub(/[ \t]+$/, "", s); return s }
    function flush() {
      if (n != "") print n "\037" title "\037" setup "\037" question
      n = ""; field = ""
    }
    /^## [0-9]+\./ {
      flush()
      line = $0; sub(/^## /, "", line)
      n = line; sub(/\..*$/, "", n)
      title = line; sub(/^[0-9]+\.[ \t]*/, "", title)
      setup = ""; question = ""
      next
    }
    /^#/ { flush(); next }
    /^\*\*[A-Za-z ]+:?\*\*:?/ {
      label = $0; sub(/^\*\*/, "", label); sub(/\*\*.*$/, "", label); sub(/:$/, "", label)
      label = tolower(trim(label))
      rest = $0; sub(/^\*\*[^*]+\*\*:?/, "", rest); rest = trim(rest)
      field = ""
      if (label == "setup")    { field = "setup";    setup = rest }
      if (label == "question") { field = "question"; question = rest }
      next
    }
    field != "" && n != "" {
      t = trim($0)
      if (t == "") next
      if (field == "setup")    setup = setup (setup == "" ? "" : " ") t
      if (field == "question") question = question (question == "" ? "" : " ") t
    }
    END { flush() }
  ' "$scenarios"
}

cd "$root"
[ -f "$out" ] || printf '# Eval results — %s\n\nAgent: `%s`. Grade each answer against tests/scenarios.md (rubric in tests/README.md).\n' "$today" "$AGENT_CMD" > "$out"

ran=0
bad=0
while IFS=$'\x1f' read -r n title setup question <&3; do
  if [ $# -gt 0 ] && [[ "$want" != *" $n "* ]]; then continue; fi
  if [ -z "$setup" ] || [ -z "$question" ]; then
    echo "scenario $n: missing Setup or Question — skipped" >&2
    bad=$((bad + 1))
    continue
  fi

  prompt="Read AGENTS.md first. This is an eval: the Setup below stands in for profile.md and records/ — ignore any real ones in this folder, and don't create or edit files. Setup: $setup Question: $question Answer citing repo files."

  echo "running scenario $n: $title" >&2
  {
    printf '\n## %s. %s\n\n**Question:** %s\n\n**Answer:**\n\n' "$n" "$title" "$question"
    # shellcheck disable=SC2086  # AGENT_CMD is intentionally word-split
    $AGENT_CMD "$prompt" < /dev/null 2>&1 || echo "(agent exited with status $?)"
    printf '\n**Grade:** pass / partial / fail — notes:\n'
  } >> "$out"
  ran=$((ran + 1))
done 3< <(parse)

echo "$ran scenario(s) appended to ${out#"$root"/}" >&2
[ "$bad" -eq 0 ] || exit 1
