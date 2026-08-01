---
id: UX-GEST-03
title: Law of Prägnanz
category: gestalt
severity: recommended
triggers: [layouts, dashboards, cards, modals, landing-sections, navigation]
version: "5.0"
status: active
---

# [UX-GEST-03] Law of Prägnanz

## Summary
Ambiguous compositions are always perceived in their simplest, least effortful form. Generate a flat, predictable layout skeleton; every shadow, layer, or decorative shape must earn its place with a function, or be removed.

## Scientific Foundation
* **Theory:** Gestalt Law of Prägnanz (law of good figure / simplicity) — perception resolves complex or ambiguous stimuli into the simplest stable interpretation.
* **Key Authors:** Kurt Koffka ("Principles of Gestalt Psychology", 1935); Max Wertheimer.
* **Core Concept:** The mind minimizes perceptual energy. When a UI's actual structure is more complex than its simplest reading, users perceive the simple version and mispredict behavior. Decoration without function (extra shadows, overlapping layers, ornamental shapes) forces costly re-parsing and produces an unpredictable skeleton.

## Triggers
* Page and screen composition: dashboards, landing sections, detail pages, modals and overlays.
* Elevation systems: shadows, z-layers, overlapping elements.
* Generation from vague prompts, where models tend to over-engineer composition ("add visual interest").

## Directives
### 🟢 DO
* Build every screen on a simple, predictable grid skeleton: aligned columns, straight edges, regular rhythm — the layout a user would guess before seeing it.
* Give every visual layer a function before rendering it: shadow = interactive elevation (dropdown, modal, dragged item); background shift = grouping; z-index = temporal stacking. No function → flat.
* Prefer the composition with the fewest distinct regions and alignment axes among equally informative alternatives (Occam's razor applied to DOM structure).
* Keep shapes canonical: rectangles, one system radius, one accent geometry — so silhouettes resolve instantly.

### 🔴 DON'T → INSTEAD
* **Don't:** add decorative shadows, glows, or gradient blobs to static, non-interactive elements. **Instead:** render static content flat and reserve elevation exclusively for elements that float above the flow (menus, dialogs, toasts).
* **Don't:** overlap cards, images, or panels for "depth" when they carry sibling content. **Instead:** place siblings side by side on the grid; use overlap only when one element genuinely covers another (an open overlay).
* **Don't:** mix multiple alignment systems (centered hero + left column + diagonal band) on one screen. **Instead:** commit to one dominant alignment axis per screen and let sections repeat the same skeleton.

## Example
❌ `<hero> <img class="rotated overlap shadow-xl"/> <card class="floating offset-y"/> </hero>` — layered collage, ambiguous structure.
✅ `<hero class="grid-2col"> <text-col/> <img-col/> </hero>` — flat two-column skeleton; the eye resolves it in one pass.

## Self-Reflection
* "Can I name the concrete function of every shadow, layer, and non-rectangular shape on this screen — and does the layout match the simplest structure a user would predict?"
