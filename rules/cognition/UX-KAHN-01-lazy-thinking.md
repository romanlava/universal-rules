---
id: UX-KAHN-01
title: Lazy Thinking (System 1 & System 2)
category: cognition
severity: mandatory
triggers: [user-flows, navigation, onboarding, wizards, forms, checkout]
version: "5.0"
status: active
---

# [UX-KAHN-01] Lazy Thinking (System 1 & System 2)

## Summary
Primary tasks must be completable on automatic, low-effort intuition (System 1); deliberate analytical thinking (System 2) is reserved only for rare, complex, intentional actions.

## Scientific Foundation
* **Theory:** Dual Process Theory.
* **Key Authors:** Daniel Kahneman (*Thinking, Fast and Slow*).
* **Core Concept:** The brain minimizes energy expenditure. Interfaces that demand continuous System 2 engagement — careful reading, mental translation, remembering prior steps — cause cognitive fatigue, errors, and abandonment.

## Triggers
Designing or reviewing any primary user flow: navigation structures, onboarding sequences, multi-step wizards, checkout paths, form completion, settings pages, and any interface localized or intended for a broad audience.

## Directives
### 🟢 DO
* Make the happy path (primary scenario) fully navigable on System 1 intuition: familiar patterns, expected control placement, one obvious next action per step.
* Use plain, widely understood terminology; label actions with the user's vocabulary, not internal or domain jargon that forces mental translation.
* Break complex tasks into atomic steps where each screen answers exactly one question.
* Carry forward any data the user already entered or selected; display it on the screen where it is needed.

### 🔴 DON'T → INSTEAD
* **Don't:** force users to hold data in short-term memory across screens to complete a single task. **Instead:** persist and redisplay previously entered values (summaries, inline recaps, pre-filled fields) at the point of use.
* **Don't:** label controls with internal jargon, abbreviations, or technical codes that require decoding. **Instead:** use standard, self-evident labels ("Save", "Continue", "Delete account") that match user expectations.
* **Don't:** combine several decisions and inputs on one dense screen of a critical flow. **Instead:** split the flow into sequential atomic steps, each with a single clear purpose and a single primary action.

## Example
❌ `Step 3 of 3: "Enter the reference code shown on step 1 to confirm."`
✅ `Step 3 of 3: "Confirm order #4821 — 2 items, $59.90" [Confirm]` (code carried forward automatically)

## Self-Reflection
* "Does any point in this flow force the user to stop, read carefully, translate a term mentally, or remember a previous step? If yes, break it into atomic steps and surface the needed context inline."
