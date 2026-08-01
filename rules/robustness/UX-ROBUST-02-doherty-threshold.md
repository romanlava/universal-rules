---
id: UX-ROBUST-02
title: Doherty Threshold & Optimistic UI
category: robustness
severity: mandatory
triggers: [buttons, forms, toggles, lists, checkout, dashboards, async-actions]
version: "5.0"
status: active
---

# [UX-ROBUST-02] Doherty Threshold & Optimistic UI

## Summary
Every user action must produce visible feedback within 400 ms. Optimistic UI (showing the result before the server confirms) is permitted only for reversible, low-risk micro-interactions; destructive, financial, or irreversible actions must show honest pending status instead.

## Scientific Foundation
* **Theory:** Doherty Threshold — productivity and flow are preserved when system response time stays under ~400 ms; slower responses break attention and multiply user errors.
* **Key Authors:** Walter J. Doherty & Ahrvind J. Thadani ("The Economic Value of Rapid Response Time", 1982).
* **Core Concept:** Sub-400 ms feedback keeps the user in a conversational rhythm with the system. Optimistic rendering fakes instant response — but if an optimistic update is later rolled back on a critical action, the reversal destroys trust more than the wait would have.

## Triggers
* Any asynchronous action behind a click or tap: save, submit, toggle, like, add/remove, delete, payment, send.
* Data loading states in lists, tables, dashboards, and detail views.
* Multi-step flows (checkout, wizards) where each step depends on a server round-trip.

## Directives
### 🟢 DO
* Acknowledge every interaction within 400 ms: state change, local loader, skeleton, or progress indicator — even when the real result takes longer.
* Apply optimistic UI only to reversible, low-risk micro-interactions: likes, favorites, bookmarks, safe status toggles, reorderable list items — with silent retry and a graceful rollback path.
* For destructive, financial, or irreversible actions (delete, payment, submission of record, sending a message that cannot be recalled), show honest pending status: disable the trigger, show a local loader or skeleton, confirm success only after the server responds.
* Use skeleton screens matching the final layout for content loading, so perceived wait shrinks without layout shift.

### 🔴 DON'T → INSTEAD
* **Don't:** optimistically render success for a payment, deletion, or any irreversible operation. **Instead:** keep the control in a visible pending state (spinner in the button, disabled state) and reveal the outcome only after server confirmation.
* **Don't:** leave the UI frozen with no feedback while awaiting a slow response. **Instead:** render an immediate acknowledgment (pressed state + local loader within 400 ms) and a skeleton for incoming content.
* **Don't:** roll back an optimistic update silently, making an item vanish or reappear without explanation. **Instead:** restrict optimism to actions where rollback is trivially understandable, and pair any rollback with a brief inline notice and a retry affordance.

## Example
❌ `click "Pay" → button instantly shows "Paid ✓" → server rejects → order silently reverts to unpaid`
✅ `click "Pay" → button: disabled + spinner "Processing…" (<400ms) → server confirms → "Paid ✓"; a like ♥ may flip instantly (optimistic, reversible)`

## Self-Reflection
* "Does every action give feedback within 400 ms, and is optimistic rendering used only where a server rejection could be rolled back without harming trust, data, or money?"
