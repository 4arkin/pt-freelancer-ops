#!/usr/bin/env python3
"""Build a calendar file (.ics) from the routines' cron lines.

The calendar is the second reminder layer: it keeps firing if your AI scheduler
dies silently. Import pt-freelancer-ops.ics into Google Calendar, Apple Calendar
or Outlook.

Usage: python3 scripts/make-ics.py [-o output.ics] [routine ...]
With no routine names, every routine is included. Name only the ones whose
applies_if fits your profile.md, e.g.:
    python3 scripts/make-ics.py ss-payment ss-quarterly monthly-close
Supports the cron shapes used in routines/: "M H DOM MONTHS *" with DOM a single
day and MONTHS either "*" or a comma list.
"""
import argparse
import re
import sys
from datetime import date
from pathlib import Path

root = Path(__file__).resolve().parent.parent
parser = argparse.ArgumentParser(description="Build pt-freelancer-ops.ics from routines/*.md")
parser.add_argument("routines", nargs="*", help="routine names to include (default: all)")
parser.add_argument("-o", "--output", default=str(root / "pt-freelancer-ops.ics"), help="output file")
args = parser.parse_args()
out = Path(args.output)

available = {p.stem: p for p in sorted((root / "routines").glob("*.md")) if p.name != "README.md"}
unknown = [name for name in args.routines if name not in available]
if unknown:
    sys.exit(f"no such routine: {', '.join(unknown)} (have: {', '.join(available)})")
selected = [available[name] for name in args.routines] if args.routines else list(available.values())

# Europe/Lisbon: WET (UTC+0) in winter, WEST (UTC+1) from the last Sunday of March
# to the last Sunday of October, switching at 01:00 UTC.
vtimezone = [
    "BEGIN:VTIMEZONE",
    "TZID:Europe/Lisbon",
    "BEGIN:DAYLIGHT",
    "TZOFFSETFROM:+0000",
    "TZOFFSETTO:+0100",
    "TZNAME:WEST",
    "DTSTART:19700329T010000",
    "RRULE:FREQ=YEARLY;BYMONTH=3;BYDAY=-1SU",
    "END:DAYLIGHT",
    "BEGIN:STANDARD",
    "TZOFFSETFROM:+0100",
    "TZOFFSETTO:+0000",
    "TZNAME:WET",
    "DTSTART:19701025T020000",
    "RRULE:FREQ=YEARLY;BYMONTH=10;BYDAY=-1SU",
    "END:STANDARD",
    "END:VTIMEZONE",
]

lines = [
    "BEGIN:VCALENDAR",
    "VERSION:2.0",
    "PRODID:-//pt-freelancer-ops//routines//EN",
    "CALSCALE:GREGORIAN",
    *vtimezone,
]
start_year = date.today().year


def ics_escape(value):
    return value.replace("\\", "\\\\").replace(";", "\\;").replace(",", "\\,").replace("\n", "\\n")


def fold(line):
    """Fold a content line at 75 octets (RFC 5545 §3.1), never splitting a UTF-8 character."""
    data = line.encode("utf-8")
    if len(data) <= 75:
        return [line]
    parts, limit = [], 75
    while data:
        cut = min(limit, len(data))
        while cut < len(data) and (data[cut] & 0xC0) == 0x80:
            cut -= 1
        parts.append(data[:cut].decode("utf-8"))
        data = data[cut:]
        limit = 74  # continuation lines start with a space
    return [parts[0]] + [" " + part for part in parts[1:]]


for path in selected:
    text = path.read_text(encoding="utf-8")
    front = re.search(r"^---\n(.*?)\n---", text, re.S)
    if not front:
        continue
    meta = dict(re.findall(r'^(\w+):\s*"?(.*?)"?\s*$', front.group(1), re.M))
    minute, hour, dom, months, _ = meta["cron"].split()
    rule = f"FREQ=MONTHLY;BYMONTHDAY={dom}" if months == "*" else f"FREQ=YEARLY;BYMONTH={months};BYMONTHDAY={dom}"
    first_month = 1 if months == "*" else int(months.split(",")[0])
    dtstart = f"{start_year}{first_month:02d}{int(dom):02d}T{int(hour):02d}{int(minute):02d}00"
    event = [
        "BEGIN:VEVENT",
        f"UID:{meta['name']}@pt-freelancer-ops",
        f"DTSTAMP:{date.today():%Y%m%d}T000000Z",
        f"DTSTART;TZID=Europe/Lisbon:{dtstart}",
        "DURATION:PT30M",
        f"RRULE:{rule}",
        f"SUMMARY:PT admin: {meta['name']}",
        "DESCRIPTION:" + ics_escape(f"{meta.get('description', '')} — run routines/{path.name}"),
        "BEGIN:VALARM",
        "ACTION:DISPLAY",
        f"DESCRIPTION:PT admin: {meta['name']}",
        "TRIGGER:PT0M",
        "END:VALARM",
        "END:VEVENT",
    ]
    for line in event:
        lines += fold(line)

lines.append("END:VCALENDAR")
out.write_text("\r\n".join(lines) + "\r\n", encoding="utf-8")
print(f"wrote {out} ({len(selected)} routine(s))")
