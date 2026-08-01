---
id: UX-ROBUST-01
title: Postel's Law (Robustness Principle)
category: robustness
severity: mandatory
triggers: [forms, inputs, validation, checkout, search, settings, import]
version: "5.0"
status: active
---

# [UX-ROBUST-01] Postel's Law (Robustness Principle)

## Summary
Be liberal in what the interface accepts and strict in what it emits: normalize imperfect user input client-side and send clean, structured data to the backend. Validation errors are reserved for genuine logic violations, never for formatting the system could fix itself.

## Scientific Foundation
* **Theory:** Robustness Principle ("be conservative in what you send, be liberal in what you accept"), transferred from protocol design to human–computer interaction.
* **Key Authors:** Jon Postel (RFC 761, 1980); popularized for UX by Jon Yablonski (Laws of UX).
* **Core Concept:** Humans produce naturally noisy input — stray spaces, dashes, mixed case, locale variants. A robust system absorbs this entropy at the boundary and outputs canonical data, instead of exporting its parsing rigidity to the user as an error message.

## Triggers
* Any free-text or semi-structured input: phone, card, and account numbers; emails; dates; amounts; codes; URLs; postal addresses.
* Paste-heavy fields (search boxes, coupon codes, identifiers copied from other apps).
* Form validation logic, input masks, and client→server payload construction.

## Directives
### 🟢 DO
* Normalize on input: `trim()` whitespace, strip spaces/dashes/parentheses from phone and card numbers, unify case where case is not meaningful, accept common date and decimal-separator variants.
* Treat paste as the primary path: sanitize pasted values (invisible characters, formatting artifacts) before validating them.
* Emit strictly: after normalization, send one canonical machine format (e.g. digits-only string, ISO date) to the backend.
* Raise a validation error only for genuine logic violations: wrong length after normalization, failed checksum, impossible date, missing required value.
* When rejecting, show the normalized value the system understood and state precisely which rule was broken.

### 🔴 DON'T → INSTEAD
* **Don't:** reject input for formatting the client can repair (spaces in a card number, dashes in a phone, trailing whitespace in an email). **Instead:** silently normalize the value, display the cleaned/formatted version, and validate only the normalized result.
* **Don't:** enforce one rigid entry format via error messages ("Enter date as YYYY-MM-DD"). **Instead:** accept common variants, parse them into the canonical format, and echo the interpreted value back to the user.
* **Don't:** forward raw, unnormalized user strings to the backend and let server errors surface as validation feedback. **Instead:** construct a strict, canonical payload client-side so the server receives only well-formed data.

## Example
❌ `input: "4111 1111 1111 1111" → error: "Card number must not contain spaces"`
✅ `input: "4111 1111 1111 1111" → normalized: "4111111111111111" → checksum ok → submit; error only if digits are genuinely invalid`

## Self-Reflection
* "Could any validation error I emit be eliminated by normalizing the input first — and does every rejected case represent a true logic violation rather than a formatting preference?"
