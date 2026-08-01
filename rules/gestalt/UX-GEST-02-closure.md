---
id: UX-GEST-02
title: Law of Closure
category: gestalt
severity: recommended
triggers: [cards, forms, dashboards, settings, tables, sections]
version: "5.1"
status: active
---

# [UX-GEST-02] Law of Closure

## Summary
The brain completes missing contours on its own: consistent negative space forms invisible container boundaries. Group content with whitespace first; draw a hard border only when spacing alone cannot carry the boundary.

## Scientific Foundation
* **Theory:** Gestalt Law of Closure — the visual system automatically completes incomplete figures into whole shapes.
* **Key Authors:** Max Wertheimer; Kurt Koffka; Gaetano Kanizsa (illusory contours).
* **Core Concept:** Users perceive a group's edge from the rhythm of spacing alone. Redundant borders and boxes add non-data ink (see UX-TUFTE-01), compete with content, and raise extraneous cognitive load without adding grouping information the whitespace already provides.

## Triggers
* Grouped content: form sections, settings panels, dashboard widgets, card lists, filter bars, sidebars.
* Any container whose border duplicates a boundary already implied by spacing or background.
* Dense data tables (see density exception below).

## Directives
### 🟢 DO
* Encode grouping with a spacing hierarchy: gap inside a group strictly smaller than the gap between groups (e.g. 8px within, 24–32px between), so the boundary is inferred.
* Use at most one boundary device per container: whitespace, or a subtle background shift, or a border — never stacked.
* Let section headings plus whitespace define form and settings sections; a wrapper box whose only job is "framing" is functionless decoration — delete it (see UX-ECON-03).
* Density exception: when a table or grid exceeds the cognitive scanning threshold (~10+ columns), reintroduce ultra-thin row separators or row-hover highlight per UX-TUFTE-01 — this is functional ink, not decoration.

### 🔴 DON'T → INSTEAD
* **Don't:** wrap every group in a hard `border: 1px solid` frame by default. **Instead:** separate groups with a larger inter-group gap and keep intra-group spacing tight; the eye closes the contour itself.
* **Don't:** stack border + background + shadow + divider on the same container. **Instead:** pick the single weakest device that still makes the group readable, starting with whitespace.
* **Don't:** equalize all gaps so every element floats at the same distance. **Instead:** enforce the within-group < between-group spacing ratio so membership is unambiguous.

## Example
❌ `<section style="border:1px solid; padding:8px"> <field/> </section>` repeated for every form group — a grid of boxes.
✅ `<section style="margin-bottom:32px"> <h3/> <field style="margin-bottom:8px"/> <field/> </section>` — heading + spacing rhythm forms the invisible frame.

## Self-Reflection
* "For every border I drew: would the group still read as one unit if I deleted the border and kept only the spacing hierarchy — and if yes, did I delete it?"
