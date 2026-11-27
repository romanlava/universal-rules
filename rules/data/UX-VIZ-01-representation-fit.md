---
id: UX-VIZ-01
title: Representation Fit (Table, Chart, Number, or Sentence)
category: data
severity: recommended
triggers: [dashboards, reports, metrics, kpi, charts, tables, detail-views, summaries]
version: "5.6"
status: active
---

# [UX-VIZ-01] Representation Fit (Table, Chart, Number, or Sentence)

## Summary
Choose how to show data from the task the person performs with it, not from what looks rich: exact values in text or tables, trends and comparisons in position-based charts, a single status as a number with its reference, and a one-value judgement as a plain sentence.

## Scientific Foundation
* **Theory:** Cognitive fit (representation matched to task type); graphical-perception accuracy ranking of visual encodings; icon–label comprehension; "compared to what?". Evidence and its limits: `docs/research/2026-11-next-step-and-information-sufficiency.md` §4.
* **Key Authors:** Iris Vessey & Dennis Galletta (1991); William Cleveland & Robert McGill (1984), replicated by Heer & Bostock (2010); Susan Wiedenbeck (1999); Edward Tufte (1990); Gigerenzer & Hoffrage (1995) and Galesic, Garcia-Retamero & Gigerenzer (2009) on risk formats.
* **Core Concept:** Tables serve tasks needing precise values; graphs serve tasks needing comparison, trend, or pattern. Quantities are judged most accurately by position on a common scale, then length, and worst by angle, area, volume, or color saturation. Cognitive-fit evidence is mixed and people often prefer tables, so a table or sentence is the safe default when the task is unclear.

## Triggers
Any time data is about to be rendered: dashboards, KPI rows, reports, summary panels, detail views with metrics, list screens, notifications that carry numbers.

## Directives
### 🟢 DO
* Pick the representation from the task: exact lookup or few values → text or a table cell; trend over time → line chart, or sparklines when many items share a view; comparing categories → bars or dots on a common baseline, sorted; many records to act on → a table sorted by what needs action; one key status → a headline number with delta and target.
* Prefer a sentence when the decision needs one value or one judgement ("3 invoices overdue, oldest 12 days").
* Encode quantities that must be compared by position or length (bars, dots, lines) on a shared, labeled scale.
* Pair status color with text and, if used, an icon; icons alone fail first-time users (see UX-A11Y-01).
* Put the reference in the representation itself — target line, previous-period mark, threshold band (see UX-INFO-01).
* State risks and probabilities as natural frequencies ("3 in 100") rather than percentages alone, and add an icon array where the audience's numeracy is mixed.

### 🔴 DON'T → INSTEAD
* **Don't:** chart a value the person only needs to read or act on. **Instead:** state it in text or a table cell.
* **Don't:** compare quantities with pies, donuts, bubbles, area, 3D, or color intensity. **Instead:** use sorted bars or dots on a common baseline; keep a pie only for one dominant share of two or three parts.
* **Don't:** fill a dashboard with rows of near-identical charts. **Instead:** lead with the few headline numbers that matter, and use small multiples with a shared scale where many items must be compared.
* **Don't:** add a chart to make a screen look analytical. **Instead:** keep it only if it answers a question the person has on this screen; otherwise remove it (see UX-ECON-03).

## Example
❌ Account overview: donut "Invoices by status", 3D bar "Revenue by month", gauge "Health 72%"
✅ `2 invoices overdue · 1,840 · oldest 12 days` (sentence) · revenue as a line with last year's line and the target · status table sorted by "needs action"

## Self-Reflection
* "For each visual on this screen, what task does the person perform with it — and would a sentence, a number with its reference, or a sorted table serve that task as well or better?"
