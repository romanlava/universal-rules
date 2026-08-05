---
id: UX-ROBUST-02
title: Doherty Threshold & Optimistic UI
category: robustness
severity: mandatory
triggers: [buttons, forms, toggles, lists, checkout, dashboards, async-actions, loading-states]
version: "5.3"
status: active
---

# [UX-ROBUST-02] Doherty Threshold & Optimistic UI

## Summary
Canonical home of the latency ladder: acknowledge input within 100 ms, deliver meaningful feedback within 400 ms, escalate to specific named status beyond ~2–3 s. Optimistic UI (showing the result before the server confirms) is permitted only for reversible, low-risk micro-interactions; destructive, financial, or irreversible actions must show honest pending status instead.

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
* Follow the latency ladder — the single canonical set of numeric budgets all other rules reference:
  * **≤100 ms** — input acknowledgment: pressed/active state on the triggering control.
  * **≤400 ms** — meaningful feedback (Doherty threshold): state change, local loader, skeleton, or progress indicator — even when the real result takes longer.
  * **beyond ~2–3 s** — specific named status or progress; content requirements for that status (see UX-STAT-01).
* Use skeleton loaders shaped like the incoming content and matching the final layout for data retrieval, so perceived wait shrinks without layout shift.
* Apply optimistic UI only to reversible, low-risk micro-interactions: likes, favorites, bookmarks, safe status toggles, reorderable list items — with silent retry and a graceful rollback path.
* For destructive, financial, or irreversible actions (delete, payment, submission of record, sending a message that cannot be recalled), show honest pending status: lock the trigger against re-submission while keeping it focusable (see UX-STAT-01), show a local loader or skeleton, confirm success only after the server responds.

### 🔴 DON'T → INSTEAD
* **Don't:** leave the UI frozen with no feedback while awaiting a slow response. **Instead:** acknowledge the press within 100 ms (pressed state) and render meaningful feedback (local loader, progress) within 400 ms.
* **Don't:** replace the whole screen with a blank area while data loads. **Instead:** render skeleton placeholders matching the final layout.
* **Don't:** optimistically render success for a payment, deletion, or any irreversible operation. **Instead:** keep the control in a visible pending state (spinner in the button, `aria-disabled`) and reveal the outcome only after server confirmation.
* **Don't:** roll back an optimistic update silently, making an item vanish or reappear without explanation. **Instead:** restrict optimism to actions where rollback is trivially understandable, and pair any rollback with a brief inline notice and a retry affordance.

## Example
❌ `click "Pay" → button instantly shows "Paid ✓" → server rejects → order silently reverts to unpaid`
✅ `click "Pay" → pressed state (<100ms) → aria-disabled + spinner "Processing…" (<400ms) → server confirms → "Paid ✓"; a like ♥ may flip instantly (optimistic, reversible)`

## Self-Reflection
* "Does every action climb the ladder — acknowledgment ≤100 ms, meaningful feedback ≤400 ms, named status past ~2–3 s — and is optimistic rendering used only where a rollback could not harm trust, data, or money?"
