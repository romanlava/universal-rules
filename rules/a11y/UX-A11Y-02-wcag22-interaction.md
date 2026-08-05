---
id: UX-A11Y-02
title: WCAG 2.2 Interaction Criteria
category: a11y
severity: mandatory
triggers: [forms, checkout, wizards, drag-and-drop, sticky-headers, dense-tables, navigation, help-links]
version: "5.3"
status: active
---

# [UX-A11Y-02] WCAG 2.2 Interaction Criteria

## Summary
Enforces four WCAG 2.2 success criteria at generation time: no redundant data entry, a single-click alternative for every drag, keyboard focus never hidden under sticky content, and help located in the same place on every page. Canonical rule for redundant entry: never re-ask for data already provided — prefill it or offer a same-as-previous control.

## Scientific Foundation
* **Theory:** WCAG 2.2 (W3C Recommendation) — SC 3.3.7 Redundant Entry, SC 2.5.7 Dragging Movements, SC 2.4.11 Focus Not Obscured (Minimum), SC 3.2.6 Consistent Help.
* **Key Authors:** W3C Accessibility Guidelines Working Group; W3C COGA Task Force.
* **Core Concept:** Interaction cost is unequal across users. Re-typing known data, precise dragging, focus hidden behind floating layers, and help that moves between pages are minor friction for some users but hard blockers for people with motor, memory, and cognitive impairments. These criteria convert that friction into structural guarantees in the generated DOM.

## Triggers
Multi-step forms and wizards that request the same data twice (shipping/billing, contact/account); any drag-and-drop interaction (reorderable lists, board columns, sliders, upload zones); sticky or fixed headers/toolbars over scrollable focusable content; any product with a help, support, or FAQ entry point present on multiple pages.

## Directives
### 🟢 DO
* Prefill any value the user already entered in the same process, or provide an explicit "same as previous" checkbox/selector (SC 3.3.7). Exceptions: re-entry that is essential (including security confirmations such as re-typing a password) or data that is no longer valid.
* Pair every drag interaction with a single-pointer equivalent: up/down buttons for reordering, a "Move to…" menu, click-to-select then click-to-place, or a numeric input beside a slider (SC 2.5.7).
* Whenever a sticky/fixed element overlays scrollable content, set `scroll-margin-top` (and `scroll-padding-top` on the scroll container) at least equal to the sticky element's height on all focusable elements, so keyboard focus always scrolls into fully visible view. This full-visibility requirement is a deliberate above-AA standard: SC 2.4.11 Focus Not Obscured (Minimum) at level AA only forbids the focused element being entirely hidden.
* Render the help entry point (help link, contact, FAQ, chat trigger) in the identical position in the persistent layout shell on every page (SC 3.2.6). Identical position is a deliberate above-AA standard: SC 3.2.6 Consistent Help only requires the same relative order across pages.

### 🔴 DON'T → INSTEAD
* **Don't:** force the user to re-type data already provided in the same session flow (e.g. a billing address after a shipping address). **Instead:** auto-copy it and offer a checked-by-default "Billing same as shipping" checkbox that expands editable fields on demand.
* **Don't:** ship drag-and-drop as the only way to reorder, move, or set a value. **Instead:** generate visible or menu-based single-click controls (↑/↓ buttons, "Move to…" action) alongside the drag behavior.
* **Don't:** apply `position: sticky` to headers and leave keyboard focus handling to the browser. **Instead:** add `scroll-margin-top` equal to the sticky region's height to every focusable element/container beneath it.
* **Don't:** place help in context-dependent spots (footer on one page, sidebar on another). **Instead:** anchor one global help slot in the shared layout and reuse it verbatim across all pages.

## Example
❌ `<h3>Billing address</h3><input name="street">  <!-- user re-types shipping data; thead is position:sticky and focused rows scroll under it -->`
✅ `<label><input type="checkbox" checked> Billing same as shipping</label>  +  tr:focus-within { scroll-margin-top: var(--sticky-height); }`

## Self-Reflection
* "Can every known value be reused instead of re-typed, every drag be completed with one click, every focused element be seen below sticky content, and help be found in the same place on every page?"
