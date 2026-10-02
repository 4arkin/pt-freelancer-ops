---
name: ss-payment
description: Monthly Segurança Social contribution payment — checks it's paid inside the 10th–20th window, at the right amount
cron: "0 9 12 * *"
timezone: Europe/Lisbon
applies_if: you pay SS contributions as a trabalhador independente (skip during the first-year exemption)
---

> **Last verified:** 2026-10-02

You are reminding a trabalhador independente in Portugal to pay last month's Segurança Social contribution. Read `profile.md` first. Click paths: `portals/seg-social-direta.md`.

**Not applicable — say so and stop:**

- **First-year exemption.** The first payment is due 10th–20th of the month after the enquadramento (`profile.md` → SS first-year exemption). Before then nothing is billed.
- **Employed, acumulação exemption** (`profile.md` → SS acumulação exemption). Nothing is owed for the three months after a quarter that stayed under the line (`routines/ss-quarterly.md` Step 0.5). An empty Posição Atual then means "exempt", not "paid", and it isn't the €20 minimum either.

## What is due

The contribution for the **previous** month, payable between the **10th and 20th** of this month. SSD shows a *data limite* at the end of the month — later than the window, and not the date to work to. This fires on the 12th: eight days of margin.

## Step 1 — Already paid?

SSD → **Conta Corrente** → **Posição Atual**: is there an outstanding document for the previous month? Also check `records/<contribution year>/declaracoes/ss-comprovativos/` for `YYYY-MM_ss-pagamento.pdf`. The portal wins over the folder — a payment made without saving the receipt looks identical to no payment.

If paid and receipted, stop. If paid but not receipted, go to Step 4.

## Step 2 — Check the amount before paying

Never carry the amount forward from memory. It changes every quarter with the declaração trimestral.

Compare Posição Atual against `profile.md` → SS monthly contribution. If it dropped to the legal minimum and no declaração explains it, **stop and flag** — a declaração probably didn't register. Paying the minimum settles the month at the wrong amount.

If a declaração trimestral covering this month is still undelivered, deliver it first (`routines/ss-quarterly.md`), then pay.

## Step 3 — Pay

SSD → Conta Corrente → the outstanding document → referência Multibanco, or confirm the débito direto collected it. The user pays; you don't.

## Step 4 — File the receipt

`records/<contribution year>/declaracoes/ss-comprovativos/YYYY-MM_ss-pagamento.pdf` — `MM` is the **contribution month**, not the month you paid in. December's contribution, paid in January, files under the previous year.
