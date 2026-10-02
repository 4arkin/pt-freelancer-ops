#!/usr/bin/env python3
"""List knowledge files (playbooks, portals, routines, calendar.md, GOTCHAS.md) whose
"Last verified" date is old or missing.

Usage: python3 scripts/staleness-check.py [--months 12]
Exit code 1 when anything is stale or undated, so it can run in CI.
"""
import argparse
import re
import sys
from datetime import date
from pathlib import Path

root = Path(__file__).resolve().parent.parent
parser = argparse.ArgumentParser()
parser.add_argument("--months", type=int, default=12, help="flag files older than this (default 12)")
args = parser.parse_args()

today = date.today()
pattern = re.compile(r"\*\*Last verified:\*\*\s*(\d{4})-(\d{2})-(\d{2})")
files = sorted([*root.glob("playbooks/*.md"), *root.glob("portals/*.md"), *root.glob("routines/*.md"),
                root / "calendar.md", root / "GOTCHAS.md"])

stale, undated = [], []
for path in files:
    match = pattern.search(path.read_text(encoding="utf-8"))
    rel = path.relative_to(root)
    if not match:
        undated.append(rel)
        continue
    verified = date(*map(int, match.groups()))
    age = (today.year - verified.year) * 12 + today.month - verified.month
    if age >= args.months:
        stale.append((rel, verified, age))

for rel, verified, age in sorted(stale, key=lambda row: row[1]):
    print(f"STALE    {rel}  last verified {verified} ({age} months)")
for rel in undated:
    print(f"UNDATED  {rel}")
if not stale and not undated:
    print(f"all {len(files)} files verified within {args.months} months")
sys.exit(1 if stale or undated else 0)
