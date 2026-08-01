---
id: UX-VOICE-01
title: Content Design & Microcopy
category: content
severity: mandatory
triggers: [forms, buttons, labels, error-messages, empty-states, navigation, onboarding, mockups]
version: "5.1"
status: active
---

# [UX-VOICE-01] Content Design & Microcopy

## Summary
Every generated interface ships with production-grade text: realistic content instead of placeholder gibberish, sentence case for forms and buttons, verb-first action labels, plain language instead of professional jargon, and one consistent name per object across all screens.

## Scientific Foundation
* **Theory:** Content design and UX writing practice; plain-language research on reading comprehension and scanning behavior.
* **Key Authors:** Torrey Podmajersky ("Strategic Writing for UX"), Kinneret Yifrah ("Microcopy"), Erika Hall ("Conversational Design"), Jakob Nielsen (match between system and real world).
* **Core Concept:** Interface text is part of the interaction model, not decoration. Placeholder text hides layout failures, inconsistent casing adds visual noise, jargon shifts translation work onto the user, and unstable terminology forces the user to re-learn the system's vocabulary on every screen.

## Triggers
Any generated copy: field labels, buttons, headings, menu items, empty states, error and success messages, tooltips, onboarding text; mockups and prototypes containing text; any object (record, document, plan, folder) referenced on more than one screen.

## Directives
### 🟢 DO
* Generate realistic, domain-plausible text everywhere: real labels, plausible names, and values in their true expected formats and lengths, so layout is validated against production-like content.
* Use sentence case for all labels, buttons, headings, and menu items: capitalize only the first word and proper nouns ("Save changes", "Payment method").
* Start every action label with a verb naming the outcome ("Save changes", "Send invites", "Delete file").
* Write in the user's vocabulary: describe visible objects and outcomes in plain words; error text states what happened and what to do next.
* Keep one term per object: choose a single name for each concept and reuse it verbatim in navigation, buttons, empty states, errors, and confirmations.

### 🔴 DON'T → INSTEAD
* **Don't:** fill mockups or components with Lorem Ipsum or "Text here" stubs. **Instead:** write representative real copy with authentic lengths and formats (names, dates, amounts).
* **Don't:** use Title Case or ALL CAPS on form labels and buttons ("SUBMIT REQUEST", "Confirm Your Choice"). **Instead:** sentence case with only the first word and proper nouns capitalized ("Submit request").
* **Don't:** expose implementation jargon in user-facing copy ("Error 500: upstream timeout", "Invalid payload", "Entity locked"). **Instead:** state the outcome and the next step in plain language ("We couldn't save your changes. Try again").
* **Don't:** call the same object different names on different screens ("project" in navigation, "workspace" in settings, "board" in errors). **Instead:** maintain a single glossary term per object and apply it in every string.

## Example
❌ `<h2>Lorem Ipsum Dolor</h2> <button>SUBMIT REQUEST</button> <p>Transaction aborted: invalid payload.</p>`
✅ `<h2>Invite your team</h2> <button>Send invites</button> <p>We couldn't send the invites. Check the email addresses and try again.</p>`

## Self-Reflection
* "Could this exact text ship to production — realistic, sentence case, jargon-free, and using the same name for each object as every other screen?"
