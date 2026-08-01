---
id: UX-ROBUST-03
title: Tesler's Law (Conservation of Complexity)
category: robustness
severity: mandatory
triggers: [forms, wizards, settings, onboarding, checkout, import, configuration]
version: "5.0"
status: active
---

# [UX-ROBUST-03] Tesler's Law (Conservation of Complexity)

## Summary
Every process carries an irreducible amount of complexity that cannot be removed — only relocated. The system, not the user, must absorb it: smart defaults, autofill, derivation, and automatic parsing replace manual entry wherever the data can be obtained without the user.

## Scientific Foundation
* **Theory:** Tesler's Law (Law of Conservation of Complexity) — total complexity of a task is constant; design decides whether the user or the system pays for it.
* **Key Authors:** Larry Tesler (1980s); elaborated by Dan Saffer ("Designing for Interaction").
* **Core Concept:** One engineering effort to absorb complexity is paid once; complexity pushed onto users is paid by every user on every use. Interfaces that ask for what the system already knows, or could derive, are exporting engineering cost to the user as cognitive labor.

## Triggers
* Forms and wizards with more than a few fields; configuration and settings screens.
* Checkout and registration flows; data-import and bulk-entry interfaces.
* Any field whose value can be derived, defaulted, remembered, or parsed from context or prior input.

## Directives
### 🟢 DO
* Ship smart defaults: preselect the most probable option, prefill known values (locale, units, dates, previously entered data), and let the user change rather than choose.
* Parse pasted composite input automatically: split a pasted full address, full name, or ID string into its target fields; extract structure from free text instead of demanding field-by-field entry.
* Derive everything derivable: compute totals, look up values from an entered code or identifier, infer dependent fields, reuse data already provided in the same flow.
* Ask the user only for what the system genuinely cannot know or derive — and phrase that as the small residue it is.
* Offer "same as previous" shortcuts (e.g. copy one entered data block into a matching one) via a single checkbox.

### 🔴 DON'T → INSTEAD
* **Don't:** present a wall of empty fields when most values are known, derivable, or predictable. **Instead:** prefill with smart defaults and reduce the visible ask to the few fields only the user can answer.
* **Don't:** force manual re-entry of data already provided earlier in the same process. **Instead:** carry the data forward automatically and offer a one-click "copy from previous" toggle for near-duplicates.
* **Don't:** reject or ignore pasted composite input and demand the user distribute it across fields by hand. **Instead:** parse the pasted string client-side, populate the target fields, and let the user verify and correct.

## Example
❌ `10 empty fields: country, currency, date format, address line 1, line 2, city, region, postal code… all typed manually`
✅ `country/currency/date format preselected from locale; pasted address auto-split into fields; user confirms and fills only the 2 unknown values`

## Self-Reflection
* "For each field I render: could the system default, derive, remember, or parse this value — and am I asking the user only for the truly irreducible remainder?"
