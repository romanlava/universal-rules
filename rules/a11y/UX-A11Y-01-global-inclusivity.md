---
id: UX-A11Y-01
title: Global Inclusivity & Accessibility (WCAG)
category: a11y
severity: mandatory
triggers: [forms, tables, dropdowns, navigation, dashboards, wizards, settings]
version: "5.3"
status: active
---

# [UX-A11Y-01] Global Inclusivity & Accessibility (WCAG)

## Summary
Closes the accessibility failures that occur most often in generated interfaces: keyboard operability, visible focus, text and component contrast, non-color-only status, programmatically associated labels, real semantic structure, and declared input purpose. This is a high-frequency subset, not WCAG AA conformance — conformance additionally requires the criteria owned by sibling rules (see UX-A11Y-02, UX-FITT-01, UX-COGA-01, UX-I18N-01, UX-RESP-01) plus per-product checks no generation rule can make, such as text alternatives and media captions.

## Scientific Foundation
* **Theory:** Web Content Accessibility Guidelines (WCAG 2.2). Criteria owned here: SC 1.3.1 Info and Relationships (A), 1.3.5 Identify Input Purpose (AA), 1.4.1 Use of Color (A), 1.4.3 Contrast Minimum (AA), 1.4.11 Non-text Contrast (AA), 2.1.1 Keyboard (A), 2.4.7 Focus Visible (AA), 3.3.2 Labels or Instructions (A), 4.1.3 Status Messages (AA).
* **Key Authors:** World Wide Web Consortium (W3C).
* **Core Concept:** Accessible design is universally beneficial (the "curb-cut effect"). Keyboard navigation is essential for motor-impaired users and preferred by fast power users; high contrast helps low-vision users and everyone on a glaring screen or a poorly calibrated monitor. Structure is the same story one layer down: what the visual design communicates through size, position, and alignment exists for assistive technology only if the markup encodes it as elements and relationships.

## Triggers
Input forms, dense data tables, dropdowns and comboboxes, multi-step wizards, dashboards, settings pages, complex navigation — any interactive surface a user must operate and read.

## Directives
### 🟢 DO
* Support full keyboard navigation (Tab, Shift+Tab, Enter, Space, Arrow keys) for every interactive element, in a logical DOM order.
* Render a highly visible `:focus-visible` state (e.g. a 2px high-contrast outline) on all focusable elements.
* Maintain a minimum text-to-background contrast ratio of 4.5:1 (3:1 for large text and UI component boundaries).
* Encode every critical status (error, warning, success) with at least two channels: color plus an icon and/or explicit text.
* Give every form control a programmatically associated label; announce dynamic errors to assistive technology (e.g. `aria-live` / `role="alert"`).
* Express structure in the elements that carry it: `<h1>`–`<h6>` in unbroken nesting order for headings, `<ul>`/`<ol>` for lists, `<table>` with `<th scope="col|row">` for tabular data, `<fieldset>`/`<legend>` for grouped controls, landmark elements for page regions — never styled `<div>`s that merely look like them (SC 1.3.1).
* On every input that collects information about the user, set the matching `autocomplete` token (`name`, `email`, `tel`, `street-address`, `postal-code`, `cc-number`, `one-time-code`, …) — the mechanism that makes browser and password-manager autofill work, and the delivery path for the prefill duty in UX-ROBUST-03 (SC 1.3.5).

### 🔴 DON'T → INSTEAD
* **Don't:** convey a critical state with color alone (a red border as the only error signal). **Instead:** pair the color with an error icon and a text message linked to the field via `aria-describedby`.
* **Don't:** remove or suppress focus outlines (`outline: none`) for visual polish. **Instead:** restyle focus with a clearly visible custom ring that meets 3:1 contrast against adjacent colors.
* **Don't:** build click-only interactive elements from bare `div`/`span` without keyboard semantics. **Instead:** use native `button`, `a`, `select` elements, or add `tabindex="0"`, a role, and key handlers when a custom widget is unavoidable.
* **Don't:** ship low-contrast placeholder-as-label forms or light-gray-on-white text. **Instead:** use persistent visible labels and text colors that pass 4.5:1.

## Example
❌ `<div class="h2">Contact</div>` + `<div class="btn" onclick="save()">Save</div>` + `<input placeholder="Email">` — field turns red on error, no message
✅ `<h2>Contact</h2>` + `<label for="em">Email</label><input id="em" autocomplete="email" aria-describedby="e1">` + `<p id="e1" role="alert">⚠ Enter a valid email</p>` + `<button onclick="save()">Save</button>` — red border AND icon AND text, focus ring visible

## Self-Reflection
* "Could a user configure and save this screen without a mouse, on a monitor with poor color reproduction, still perceive every error state — and does the markup expose the same headings, groups, tables, and field purposes that the visual design implies?"
