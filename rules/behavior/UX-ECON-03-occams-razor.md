---
id: UX-ECON-03
title: Occam's Razor
category: behavior
severity: mandatory
triggers: [forms, dashboards, cards, modals, landing-sections, component-composition, code-generation]
version: "5.1"
status: active
---

# [UX-ECON-03] Occam's Razor

## Summary
Among functionally equivalent solutions, always generate the simplest one. Before final output, audit every generated node and delete any element carrying no functional or informational load. This is the framework's canonical minimalism rule: the single home of the subtraction pass, which other rules reference instead of restating.

## Scientific Foundation
* **Theory:** Occam's Razor (law of parsimony), adapted to interface design.
* **Key Authors:** William of Ockham; William Lidwell, Kritina Holden & Jill Butler; John Maeda.
* **Core Concept:** When competing designs deliver the same function, the one with fewer elements is preferable: each extra node adds visual noise, maintenance surface, and cognitive cost without adding value. Generative models are biased toward over-engineering — composing many components where one base pattern suffices — so simplicity must be enforced as an explicit final pass, not assumed.

## Triggers
Every component-composition and layout decision; forms, cards, modals, dashboards, empty states, marketing sections; any moment the generator chooses between a single base pattern and a multi-component composition; the final pre-output review of generated markup.

## Directives
### 🟢 DO
* When two implementations are functionally equivalent, emit the one with fewer DOM nodes, fewer components, and fewer visual layers.
* Run a subtraction pass before finalizing: for each element ask "what breaks if this is deleted?" — if nothing, delete it.
* Prefer one standard base component over a bespoke assembly of wrappers, nested containers, and decorative shells.
* Express hierarchy through spacing and typography first; add borders, shadows, icons, or backgrounds only when they encode information.

### 🔴 DON'T → INSTEAD
* **Don't:** wrap content in stacked containers (card inside panel inside section) for structure that one container already provides. **Instead:** use a single semantic container and create grouping with whitespace.
* **Don't:** add decorative icons, dividers, badges, or shadows that encode nothing. **Instead:** keep only elements a user would miss functionally or informationally, and let negative space do the separation.
* **Don't:** build a custom composite widget when a plain native or base component covers the need. **Instead:** use the simplest standard element (e.g. a plain select) and extend it only when a concrete requirement demands it.

## Example
❌ `<section><div class="wrapper"><div class="card"><div class="inner"><span class="icon-deco"/><p>Total: 42</p></div></div></div></section>`
✅ `<section class="card"><p>Total: 42</p></section>`

## Self-Reflection
* "For every node in my output: what breaks if I delete it — and have I removed each one where the answer is 'nothing'?"
