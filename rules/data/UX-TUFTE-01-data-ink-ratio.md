---
id: UX-TUFTE-01
title: Maximizing Data-Ink Ratio
category: data
severity: recommended
triggers: [tables, dashboards, lists, reports, analytics, metrics]
version: "5.0"
status: active
---

# [UX-TUFTE-01] Maximizing Data-Ink Ratio

## Summary
In data-dense interfaces every pixel that does not convey information is noise: strip decoration by default, but reintroduce minimal row guides when a table becomes too dense to scan.

## Scientific Foundation
* **Theory:** The Data-Ink Ratio.
* **Key Authors:** Edward Tufte (*The Visual Display of Quantitative Information*).
* **Core Concept:** Good design maximizes the ratio of "data-ink" (pixels representing actual data) to "non-data-ink" (borders, decorative backgrounds, redundant labels). Every non-data pixel competes with the data for attention and should justify its existence.

## Triggers
Metric tables, event lists, dashboards, analytical summaries, reports, comparison views — any component whose primary content is numbers or dense records.

## Directives
### 🟢 DO
* Consolidate units of measurement (currency symbols, %, ms) into column headers instead of repeating them in every row.
* Use whitespace and alignment for grouping; let the data itself form the visual structure.
* Right-align numeric columns with tabular figures so magnitudes can be compared by eye.
* **Density exception:** when a table is very dense (roughly 10+ columns), reintroduce ultra-thin (1px, low-contrast) row separators or a row-hover highlight so the eye can track a row across the full width. Scanability outranks minimalism at this threshold.

### 🔴 DON'T → INSTEAD
* **Don't:** apply aggressive zebra striping or thick grid lines that compete with the numbers. **Instead:** default to no fills and no borders; if row tracking fails in a 10+ column table, add hairline separators or hover highlight only.
* **Don't:** repeat the unit, currency symbol, or icon in every cell of a column. **Instead:** state the unit once in the column header ("Revenue, $") and keep cells as bare values.
* **Don't:** wrap every metric card or cell in decorative boxes, shadows, and background tints. **Instead:** separate groups with whitespace and a single subtle divider between sections.
* **Don't:** delete separators purely for aesthetics when users must trace long rows. **Instead:** treat the ~10-column mark as the switch point and restore the thinnest possible row guide.

## Example
❌ `| $1,200.00 💰 | $980.00 💰 |` — striped rows, heavy borders, unit repeated per cell
✅ `Header: "Spend, $" → | 1,200 | 980 |` — borderless, whitespace-grouped; 12-column variant adds 1px hairline row separators + hover highlight

## Self-Reflection
* "If I remove the borders, icons, and repeated symbols, does the data lose meaning? If not, delete the noise — then check: with 10+ columns, can the eye still track a single row? If not, add a hairline guide."
