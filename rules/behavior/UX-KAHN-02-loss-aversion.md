---
id: UX-KAHN-02
title: Loss Aversion (Protect Invested Effort)
category: behavior
severity: mandatory
triggers: [destructive-actions, unsaved-changes, cancellations, downgrades, forms, settings, checkout]
version: "5.3"
status: active
---

# [UX-KAHN-02] Loss Aversion (Protect Invested Effort)

## Summary
Losses feel roughly twice as painful as equivalent gains feel good. Confirmation copy for destructive or abandoning actions must state concretely what the user will lose — to inform and protect, never to pressure or manipulate.

## Scientific Foundation
* **Theory:** Prospect Theory (Loss Aversion).
* **Key Authors:** Daniel Kahneman & Amos Tversky.
* **Core Concept:** The psychological pain of losing something is approximately twice as powerful as the pleasure of gaining the equivalent. Framing consequences as concrete losses makes users pause before irreversible actions; abusing the same lever creates dark patterns.

## Triggers
Delete/remove confirmations, closing a form or wizard with unsaved changes, subscription cancellations or plan downgrades, abandoning a long configuration mid-way, resetting settings, leaving a checkout with items entered.

## Directives
### 🟢 DO
* Frame destructive-action copy around the concrete loss: "Discard this draft? You'll lose 20 minutes of unsaved edits."
* For reversible actions, prefer soft delete plus one-click Undo over a blocking dialog (see UX-CTRL-01); apply the loss-naming copy rules below whenever a dialog is genuinely warranted.
* Intercept exits from forms with unsaved data and offer the protective path first ("Save draft" / "Keep editing") alongside an honest "Discard".
* On downgrades or cancellations, list factually which features or data become unavailable, then let the user proceed with one clear click.
* Keep the tone objective: state facts about what is lost, not judgments about the user's choice.

### 🔴 DON'T → INSTEAD
* **Don't:** show generic confirmations like "Are you sure?" that name no consequence. **Instead:** name the specific loss ("Delete this report and its 3 saved views?").
* **Don't:** use loss framing to guilt-trip or trap users — shaming decline buttons ("No, I hate saving money"), hidden cancel paths, repeated retention nags. **Instead:** state the factual consequence once and provide an equally prominent, neutral confirm action ("Cancel subscription").
* **Don't:** manufacture false urgency or scarcity (fake countdowns, invented "only 2 left" claims) to exploit loss fear. **Instead:** show only real, verifiable limits and deadlines, or none at all.
* **Don't:** let a stray click or Escape silently destroy user input. **Instead:** guard unsaved state with a dialog defaulting to the non-destructive option.

## Example
❌ `[Dialog] Are you sure? [Yes] [No, I don't care about my work]`
✅ `[Dialog] Leave without saving? Your 12 unsaved field changes will be lost. [Keep editing] [Discard changes]`

## Self-Reflection
* "Does this copy protect the user from accidentally losing invested effort, while stating only true consequences and leaving the exit one honest click away?"
