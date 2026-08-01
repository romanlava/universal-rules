---
id: UX-A11Y-01
title: Global Inclusivity & Accessibility (WCAG)
category: a11y
severity: mandatory
triggers: [forms, tables, dropdowns, navigation, dashboards, wizards, settings]
version: "5.0"
status: active
---

# [UX-A11Y-01] Global Inclusivity & Accessibility (WCAG)

## Summary
Every generated interface must meet WCAG AA baselines — full keyboard operability, visible focus, sufficient contrast, and redundant (non-color-only) status encoding — regardless of product type.

## Scientific Foundation
* **Theory:** Web Content Accessibility Guidelines (WCAG 2.1, level AA).
* **Key Authors:** World Wide Web Consortium (W3C).
* **Core Concept:** Accessible design is universally beneficial (the "curb-cut effect"). Keyboard navigation is essential for motor-impaired users and preferred by fast power users; high contrast helps low-vision users and everyone on a glaring screen or a poorly calibrated monitor.

## Triggers
Input forms, dense data tables, dropdowns and comboboxes, multi-step wizards, dashboards, settings pages, complex navigation — any interactive surface a user must operate and read.

## Directives
### 🟢 DO
* Support full keyboard navigation (Tab, Shift+Tab, Enter, Space, Arrow keys) for every interactive element, in a logical DOM order.
* Render a highly visible `:focus-visible` state (e.g. a 2px high-contrast outline) on all focusable elements.
* Maintain a minimum text-to-background contrast ratio of 4.5:1 (3:1 for large text and UI component boundaries).
* Encode every critical status (error, warning, success) with at least two channels: color plus an icon and/or explicit text.
* Give every form control a programmatically associated label; announce dynamic errors to assistive technology (e.g. `aria-live` / `role="alert"`).

### 🔴 DON'T → INSTEAD
* **Don't:** convey a critical state with color alone (a red border as the only error signal). **Instead:** pair the color with an error icon and a text message linked to the field via `aria-describedby`.
* **Don't:** remove or suppress focus outlines (`outline: none`) for visual polish. **Instead:** restyle focus with a clearly visible custom ring that meets 3:1 contrast against adjacent colors.
* **Don't:** build click-only interactive elements from bare `div`/`span` without keyboard semantics. **Instead:** use native `button`, `a`, `select` elements, or add `tabindex="0"`, a role, and key handlers when a custom widget is unavoidable.
* **Don't:** ship low-contrast placeholder-as-label forms or light-gray-on-white text. **Instead:** use persistent visible labels and text colors that pass 4.5:1.

## Example
❌ `<div class="btn" onclick="save()">Save</div>` + field turns red on error, no message
✅ `<button onclick="save()">Save</button>` + `<input aria-describedby="e1">` `<p id="e1" role="alert">⚠ Enter a valid email</p>` — red border AND icon AND text, focus ring visible

## Self-Reflection
* "Could a user configure and save this form without a mouse, on a monitor with poor color reproduction — and would they still perceive every error state?"
