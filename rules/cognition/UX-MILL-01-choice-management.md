---
id: UX-MILL-01
title: Choice Management (Hick–Hyman, Miller, Pareto)
category: cognition
severity: mandatory
triggers: [navigation, dashboards, tables, settings, filters, menus, toolbars, action-menus, page-headers]
version: "5.1"
status: active
---

# [UX-MILL-01] Choice Management (Hick–Hyman, Miller, Pareto)

## Summary
Decision cost grows with the number of simultaneous options, and usage concentrates on a vital few of them. Generated UI must cap each visual level at 5–7 options, rank prominence by expected frequency of use, demote the long tail into one overflow menu, and reserve the first and last slots of any sequence for the highest-value items.

## Scientific Foundation
* **Theory:** Hick–Hyman Law; Miller's "Magical Number Seven"; Pareto Principle (vital few / trivial many); serial-position effect.
* **Key Authors:** William Hick, Ray Hyman; George A. Miller; Nelson Cowan; Vilfredo Pareto, Joseph M. Juran; Hermann Ebbinghaus.
* **Core Concept:** Miller's 7±2 (1956) described immediate memory span, not a UI limit; modern working-memory research (Cowan 2001) puts capacity at ~4±1 chunks, and reaction time grows logarithmically with the number of alternatives (Hick–Hyman). The 5–7 cap on visible options is therefore a pragmatic scanning/decision-cost heuristic, not literal memory capacity. Feature usage follows a power law (Pareto/Juran): a vital few actions absorb most activity, so prominence must be proportional to expected use. Within any sequence, first and last positions are perceived and recalled best (Ebbinghaus, primacy/recency).

## Triggers
Navigation menus, dashboards, metric panels, dense tables and row actions, settings and configuration screens, filter panels, toolbars, page headers with multiple actions, pricing/plan selectors, and any screen offering more than three options or actions of unequal importance.

## Directives
### 🟢 DO
* Cap visible options at 5–7 per hierarchy level; when a flat list exceeds that, chunk it into named groups (categories → items).
* Rank prominence by expected frequency of use: the vital few actions get surface placement and the strongest visual treatment — one primary action per screen area, at most one secondary (accent budget: see UX-REST-01).
* Demote the long tail of infrequent, repeated, or destructive actions (duplicate, export, archive, delete) into ONE standardized overflow menu ("More actions" / ⋯) per screen area — never several partial menus.
* Order sequences by serial position: the first and last slots of any menu, nav, or list hold the highest-value items; middle positions absorb the trivial many.
* Reveal rare or advanced options on demand via progressive disclosure (see UX-PROG-01).
* Preselect the fast path with a sensible default (see UX-ROBUST-03).

### 🔴 DON'T → INSTEAD
* **Don't:** place more than 5–7 equally weighted choices on the same visual hierarchy level. **Instead:** chunk them into named groups or split them across a two-level structure (categories → items).
* **Don't:** render every action as an equally prominent button, or order menus alphabetically or by internal org structure. **Instead:** rank by expected use — one primary, at most one secondary, everything else inside the single overflow menu.
* **Don't:** bury the most-used or highest-value item mid-list "to be neutral". **Instead:** give it a first or last slot and let low-value items occupy the middle.

## Example
❌ `Header: [Rename] [Duplicate] [Export] [Archive] [Print] [Delete] [Save] — seven identical buttons, primary action last and unranked`
✅ `Header: [Save] (primary) · [Export] (secondary) · [⋯ More actions ▾ → Rename / Duplicate / Print / Archive / Delete]`

## Self-Reflection
* "At this decision point: are ≤7 options visible per level, is the most frequent action the unmistakable visual winner, is every rare action inside one overflow menu, and do the first and last slots hold the highest-value items?"
