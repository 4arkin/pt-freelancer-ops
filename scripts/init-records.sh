#!/usr/bin/env bash
# Create the records tree for one income year. Safe to re-run.
# Usage: scripts/init-records.sh 2026
set -euo pipefail

year="${1:-$(date +%Y)}"
root="$(cd "$(dirname "$0")/.." && pwd)/records"

mkdir -p "$root/_reference/activity" "$root/certidoes/superseded" "$root/residency" "$root/mortgage"
[ -f "$root/_reference/correspondence-log.md" ] || cat > "$root/_reference/correspondence-log.md" <<'EOF'
# Correspondence log

Every letter and e-balcão message to and from AT / SS, both directions. A row the same day it's sent.

## Sent

| Date | Subject | Channel | Tracking / pedido n.º | File | Status |
|---|---|---|---|---|---|

## Received

| Date | Reference | Channel | What it says | Deadline it starts | File |
|---|---|---|---|---|---|
EOF

y="$root/$year"
mkdir -p \
  "$y/income/recibos-verdes" "$y/income/comprovativos-recebimento" "$y/income/contratos" \
  "$y/deductions/e-fatura" "$y/deductions/despesas-atividade" \
  "$y/deductions/saude" "$y/deductions/habitacao" "$y/deductions/educacao" \
  "$y/declaracoes/iva-periodica" "$y/declaracoes/iva-recapitulativa" \
  "$y/declaracoes/ss-trimestral" "$y/declaracoes/ss-comprovativos" \
  "$y/declaracoes/pagamentos-por-conta" \
  "$y/irs/working" "$y/irs/filed" "$y/correspondence"

[ -f "$y/README.md" ] || cat > "$y/README.md" <<EOF
# $year — status

| Obligation | Period | Deadline | Status | Proof |
|---|---|---|---|---|
EOF

echo "records/$year ready"
