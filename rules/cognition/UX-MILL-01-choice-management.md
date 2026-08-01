---
id: UX-MILL-01
title: Choice Management (Hick's & Miller's Laws)
category: cognition
severity: mandatory
triggers: [navigation, dashboards, tables, settings, filters, menus]
version: "5.0"
status: active
---

# [UX-MILL-01] Choice Management (Hick's & Miller's Laws)

## Summary
Decision time grows with the number of simultaneous options; generated UI must chunk, rank, and limit choices so no more than 5–7 equally weighted options compete at one visual level.

## Scientific Foundation
* **Theory:** Hick–Hyman Law & Miller's Law ("The Magical Number Seven, Plus or Minus Two").
* **Key Authors:** William Hick, Ray Hyman, George A. Miller.
* **Core Concept:** Working memory holds roughly 7 items. Exceeding this limit at a single decision point causes cognitive overload and choice paralysis; reaction time increases logarithmically with the number of alternatives.

## Triggers
Designing navigation menus, dashboards, metric panels, dense tables, settings and configuration screens, filter panels, toolbars, pricing/plan selectors, and any screen presenting a list of selectable options or actions.

## Directives
### 🟢 DO
* Group options into labeled logical categories (chunking) whenever a flat list exceeds 7 items.
* Rank choices visually: give exactly one action primary emphasis per screen area (max one filled accent — see UX-REST-01, meta-framework conflict resolution) with at most one secondary beside it; render remaining actions with reduced visual weight (ghost buttons, links, overflow menus).
* Use progressive disclosure — show the common options first, hide advanced or rare options behind "More" / expandable sections.
* Provide a sensible default selection when a choice is required, so the fast path is "accept and continue".

### 🔴 DON'T → INSTEAD
* **Don't:** place more than 5–7 equally weighted choices on the same visual hierarchy level. **Instead:** chunk them into named groups or split them across a two-level structure (categories → items).
* **Don't:** render every action as an equally prominent button in a toolbar or card. **Instead:** promote one primary action (plus at most one secondary, per UX-REST-01) and collapse the rest into a de-emphasized secondary style or an overflow ("⋯") menu.
* **Don't:** expose every advanced setting or filter on first render. **Instead:** show the frequent few by default and reveal the long tail behind "Advanced" or "Show more".

## Example
❌ `[Export] [Share] [Rename] [Duplicate] [Archive] [Move] [Print] [Delete] [Tag]` — nine equal buttons
✅ `[Share] [Export]  [⋯ More: Rename · Duplicate · Move · Archive · Print · Tag · Delete]`

## Self-Reflection
* "How many visual objects are competing for the user's attention at this decision point? If more than 7, which can I group, rank down, or hide behind progressive disclosure?"
