---
id: UX-AEST-01
title: Aesthetic-Usability Effect (Systematic Visual Mathematics)
category: gestalt
severity: mandatory
triggers: [spacing, typography, design-tokens, layout, grids, dashboards, forms, component-styling]
version: "5.1"
status: active
---

# [UX-AEST-01] Aesthetic-Usability Effect (Systematic Visual Mathematics)

## Summary
Users perceive visually consistent interfaces as more usable and forgive minor flaws in them. Consistency is achieved mathematically — every spacing, size, radius, and font-size value derives from one modular token scale — never by per-element taste.

## Scientific Foundation
* **Theory:** Aesthetic-Usability Effect.
* **Key Authors:** Masaaki Kurosu & Kaori Kashimura (1995).
* **Core Concept:** Perceived aesthetics strongly predicts perceived usability: interfaces that look coherent are judged easier to use and earn tolerance for small defects. Coherence is not subjective beauty but detectable mathematical regularity — repeated rhythms of spacing, sizing, and type that the visual system reads as order.

## Triggers
Any styling decision: margins, paddings, gaps, component dimensions, border radii, font sizes and line heights; defining or extending a token scale; choosing layout density for a new view.

## Directives
### 🟢 DO
* Derive every spacing, size, and radius value from one modular scale: multiples of a single base unit (e.g., 4 or 8), defined once as tokens and reused everywhere.
* Derive all font sizes from one fixed typographic ratio applied to a single base size; pair each step with a line height from the same system.
* Reuse the identical token for the identical role across screens — the same gap between a label and its input everywhere, the same card padding everywhere.
* Govern density by context, not taste: a condensed grid step (tighter multiples of the base unit) for data-dense operational views; a spacious step for simple, first-run, or marketing-like flows.
* When a needed value is missing, extend the scale by its own rule (next multiple / next ratio step), then tokenize it.

### 🔴 DON'T → INSTEAD
* **Don't:** hardcode ad-hoc values (13px, 17px, margin 22px, radius 7px) because they "look right" locally. **Instead:** snap to the nearest step of the base-unit scale and use the existing token.
* **Don't:** mix multiple rhythm systems in one product — 8-based spacing here, 5-based there, arbitrary font sizes per screen. **Instead:** define one base unit and one type ratio, and derive every value from them.
* **Don't:** pick density per screen by mood, making one form airy and its sibling cramped. **Instead:** apply the condensed grid to operational/data-dense contexts and the spacious grid to simple flows, as a stated rule.
* **Don't:** restyle a repeated component variant-by-variant (slightly different padding or radius per instance). **Instead:** style the component once from tokens and reuse it unchanged.

## Example
❌ `card { padding: 18px; radius: 7px } title 17px; gaps 10px, 14px, 22px — each screen tuned by eye`
✅ `base 4px → gaps 8/16/24; radius 8; type 14/16/20/25 (1.25 ratio) — same tokens on every screen`

## Self-Reflection
* "Can I name the base unit and type ratio that produced every spacing, size, radius, and font value in this output — and does the chosen density (condensed vs. spacious) follow from the view's context rather than taste?"
