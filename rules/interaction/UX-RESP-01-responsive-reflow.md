---
id: UX-RESP-01
title: Responsive Reflow (Small-Screen Adaptation)
category: interaction
severity: mandatory
triggers: [responsive-layouts, small-screens, dense-tables, navigation, dashboards, forms, zoom]
version: "5.3"
status: active
---

# [UX-RESP-01] Responsive Reflow (Small-Screen Adaptation)

## Summary
Every layout must reflow to a narrow viewport without horizontal page scrolling and without losing information or functionality. Narrow width changes the arrangement of a view, never the set of things a user can see or do in it.

## Scientific Foundation
* **Theory:** WCAG 2.2 SC 1.4.10 Reflow (Level AA) and SC 1.4.4 Resize Text (Level AA); responsive layout as a fluid, content-driven discipline.
* **Key Authors:** W3C Web Accessibility Initiative (WCAG 2.2 Recommendation); Ethan Marcotte (2010).
* **Core Concept:** SC 1.4.10 requires content to be presentable "without loss of information or functionality" and without scrolling in two dimensions at a width equivalent to 320 CSS px for vertically scrolling content (256 CSS px height for horizontally scrolling content) — 320 px being a 1280 px viewport at 400% zoom. The criterion excepts only parts that require two-dimensional layout for usage or meaning: images needed for understanding such as maps and diagrams, video, games, presentations, data tables (the table, not its individual cells), and interfaces that must keep toolbars in view while manipulating content. SC 1.4.4 additionally requires text to resize to 200% without loss of content or functionality. Max-widths govern the wide end of the range (see UX-ECON-04); this rule governs the narrow end.

## Triggers
Any multi-column layout, dashboard, table-bearing view, navigation bar, toolbar, form, modal, or side panel; any interface that may be viewed on a small screen, in a narrow split pane, or at high browser zoom.

## Directives
### 🟢 DO
* Reflow to a single column at narrow widths so the page scrolls in one direction only; two-dimensional scrolling is permitted solely for the exception classes (maps, diagrams, video, games, presentations, data tables, toolbar-anchored canvases), and only inside the excepted element.
* Set breakpoints where the content itself breaks — the width at which the measure collapses, a column starves, or a label wraps badly. Any pixel value is an illustration of one layout's failure point, never a prescribed set.
* Prefer layout primitives that adapt without breakpoints — wrapping flow, fluid columns with a minimum item width, fluid type and spacing bounded by the token scale (see UX-AEST-01) — and reserve breakpoints for the rearrangements those primitives cannot express.
* Choose an explicit narrow-viewport strategy for every dense table before rendering it: per-row stacking (each row becomes a labeled block pairing header with value), prioritized columns (identifier plus the few decision-driving ones, the rest behind a row-detail view), or a scroll container scoped to the table element alone and reachable by keyboard. Column density itself is governed by UX-TUFTE-01.
* Keep navigation and primary actions reachable when collapsed: a labeled, keyboard-operable trigger for the collapsed menu, and the view's primary action still visible without opening it.
* Preserve parity of function across widths — every action and datum available at wide widths stays reachable at narrow ones, reordered, stacked, or one labeled disclosure deep.
* Verify the layout at the narrowest supported width and at 200% zoom: nothing clipped, nothing overlapping, targets still meeting minimum hit size (see UX-FITT-01), stacked labels still fitting after text expansion (see UX-I18N-01).

### 🔴 DON'T → INSTEAD
* **Don't:** hold a fixed-width or multi-column grid at narrow widths, forcing the page to scroll sideways. **Instead:** collapse to one column and let content wrap, keeping page scrolling vertical only.
* **Don't:** define breakpoints as device classes and freeze the design to them. **Instead:** name each breakpoint after the layout change it triggers and place it at the width where that content actually fails.
* **Don't:** make the whole page horizontally scrollable so one wide table fits. **Instead:** confine the overflow to a scroll container around the table itself, leaving the surrounding page one-dimensional.
* **Don't:** drop columns, filters, or secondary actions at narrow widths with no route back to them. **Instead:** relocate them into an explicitly labeled disclosure — overflow menu, filter panel, row detail — exposing the same set.
* **Don't:** pin fixed heights or absolute positions that clip content when text grows or the viewport narrows. **Instead:** let containers size to their content with min-heights, so growth pushes the layout instead of overflowing it.

## Example
❌ `.page{min-width:1024px} · .grid{4 fixed columns} · 12-column table → page scrolls in two dimensions at 320px`
✅ `.grid{auto-fit, min item 16rem → 1 column when narrow} · table → 3 key columns + row detail (or a scroller on the table alone) · page scrolls vertically only`

## Self-Reflection
* "At a 320 CSS px equivalent width and at 200% zoom, does this view scroll in one direction only, keep every action and datum reachable, and confine any two-dimensional scrolling to a genuine exception element such as a data table, map, or diagram?"
