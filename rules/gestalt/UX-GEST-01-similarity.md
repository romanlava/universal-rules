---
id: UX-GEST-01
title: Law of Similarity
category: gestalt
severity: mandatory
triggers: [cards, badges, buttons, lists, navigation, dashboards, tables]
version: "5.0"
status: active
---

# [UX-GEST-01] Law of Similarity

## Summary
Elements of equal function must be styled identically. Any visual variation (radius, weight, padding, color) is read by the user as a difference in meaning, so unintended variation creates false hierarchy and structural chaos.

## Scientific Foundation
* **Theory:** Gestalt Law of Similarity — elements sharing visual characteristics (color, shape, size) are perceived as one related group.
* **Key Authors:** Max Wertheimer ("Laws of Organization in Perceptual Forms", 1923); Kurt Koffka.
* **Core Concept:** The visual system groups by likeness before reading content. Consistent styling lets users "cache" the meaning of a pattern once and reuse it everywhere; each stylistic deviation forces re-interpretation and implies a functional difference that may not exist.

## Triggers
* Repeated components of the same rank: card grids, badge/tag sets, button groups, list rows, table cells, metric tiles, menu items.
* Any screen containing two or more instances of the same component type.
* Refactors that touch shared components or design tokens.

## Directives
### 🟢 DO
* Style all elements of one functional level with one identical token set: same corner radius, font weight, padding, border, icon size, and color role.
* Derive every repeated component from a single shared definition (one class/component/token), so equality is enforced structurally, not by copy-paste.
* Reserve visual difference exclusively for functional difference: a primary action, a selected state, a warning status may deviate — and only via the designated variant tokens.
* When two elements look different, verify they behave differently; when they behave the same, make them look the same.

### 🔴 DON'T → INSTEAD
* **Don't:** mix corner radii, font weights, or paddings across equivalent cards, badges, or buttons. **Instead:** apply one shared component/token set to all peers and express any real functional difference through a named variant (e.g. `primary` vs `secondary`).
* **Don't:** restyle one instance ad hoc ("this card needs a bit more padding"). **Instead:** change the shared token so all peers update together, or promote the element to a different, explicitly defined level.
* **Don't:** use random accent colors to "add variety" to equivalent items. **Instead:** keep peers monochrome-consistent and let color signal only status or category defined in the system.

## Example
❌ `<card radius=8 pad=16>…</card> <card radius=12 pad=20 weight=bold>…</card>` — equal-rank cards, three silent differences.
✅ `<card class="card">…</card> <card class="card">…</card>` — one shared style; the featured one is `<card class="card card--primary">`.

## Self-Reflection
* "Do any two elements of equal function differ in radius, weight, padding, or color — and if they look different, is the difference a deliberate, named variant?"
