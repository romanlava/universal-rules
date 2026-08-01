---
id: UX-REST-01
title: Von Restorff Effect (Isolation)
category: gestalt
severity: mandatory
triggers: [buttons, forms, checkout, dashboards, toolbars, empty-states, modals]
version: "5.0"
status: active
---

# [UX-REST-01] Von Restorff Effect (Isolation)

## Summary
An element stands out only when it is the sole deviation in its field: maximum ONE primary CTA per screen area. All secondary and tertiary actions use muted colors, outlines, or lighter font weight, preventing the accent blindness that arises when everything is emphasized.

## Scientific Foundation
* **Theory:** Von Restorff Effect (Isolation Effect) — among multiple similar stimuli, the one that differs is disproportionately noticed and remembered; the effect vanishes as distinctive stimuli multiply.
* **Key Authors:** Hedwig von Restorff (1933); applied to UI by Jon Yablonski (Laws of UX).
* **Core Concept:** Salience is a zero-sum budget. Attention is drawn by contrast against a calm background; each additional accent divides the budget until nothing stands out. When every element shouts importance, the user perceives uniform noise — accent blindness.

## Triggers
* Any screen area containing multiple actions: forms, modals, toolbars, card footers, page headers, checkout steps, empty states.
* Dashboards and settings pages where several operations compete for attention.
* Reviews of button hierarchies, action menus, and highlight/badge usage.

## Directives
### 🟢 DO
* Render exactly one primary CTA (filled, high-contrast accent) per screen area — the single action that advances the user's main goal.
* Express secondary actions as outlined or ghost buttons in muted colors; tertiary actions as plain text links or lighter font weight.
* Keep the surrounding field visually calm (neutral colors, uniform styling) so the one accent has contrast to stand against.
* Demote overflow actions (duplicate, archive, export) into a standard "more actions" menu instead of granting each its own accent.
* Apply the same discipline to non-button emphasis: one highlighted metric, one featured card, one badge color per area.

### 🔴 DON'T → INSTEAD
* **Don't:** place two or more filled accent-colored buttons in the same screen area. **Instead:** keep one primary CTA and restyle the rest as outlined/ghost buttons or text links in muted tones.
* **Don't:** highlight every interactive or "important" element with bright color, badges, or bold weight. **Instead:** rank the actions, give the accent only to rank one, and step the others down through outline → text → overflow menu.
* **Don't:** resolve a stakeholder's "make it pop" for several elements by brightening them all. **Instead:** raise contrast on the single top-priority element and lower the visual volume of everything around it.

## Example
❌ `[Save ■accent] [Delete ■accent] [Export ■accent] [Upgrade ■accent]` — four filled accent buttons, nothing stands out.
✅ `[Save ■accent] [Cancel ▢outline] [More ⋯ text-menu: Export, Delete]` — one accent, calm surroundings.

## Self-Reflection
* "In each screen area, is there exactly one filled accent element — and would removing every other accent make the primary action more, not less, visible?"
