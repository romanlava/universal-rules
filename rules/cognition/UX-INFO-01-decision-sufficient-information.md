---
id: UX-INFO-01
title: Decision-Sufficient Information
category: cognition
severity: mandatory
triggers: [crm, record-cards, dashboards, detail-views, work-queues, settings, forms, reports, any-data-dense-screen]
version: "5.6"
status: active
---

# [UX-INFO-01] Decision-Sufficient Information

## Summary
Each screen shows every fact its current decision needs — visible at once, grouped near the action, each with a comparison — and nothing that changes no decision competes with them. The target is sufficiency, not completeness: past that point extra data lowers accuracy, inflates confidence, and trains people to ignore highlights.

## Scientific Foundation
* **Theory:** Information-overload inverted U (decision quality rises, then falls, as information exceeds processing capacity); confidence–accuracy divergence under added information; effort–accuracy trade-off in strategy choice; working-memory capacity (~4 chunks); display grouping as the predictor of search time; alert fatigue. Full evidence table and strength ratings: `docs/research/2026-11-next-step-and-information-sufficiency.md`.
* **Key Authors:** Eppler & Mengis (2004); Tsai, Klayman & Hastie (2008); Payne, Bettman & Johnson (1993); Cowan (2001); Luck & Vogel (1997); Tullis (1983); van der Sijs et al. (2006); Chernev, Böckenholt & Goodman (2015); Hsee (1996, evaluability); Peters et al. (2007, "less is more"). Behavioral evidence: `docs/research/2026-11-behavioral-psychology.md`.
* **Core Concept:** People do not read screens; they scan for what the decision at hand needs (about a fifth of the words get read) and judge within seconds whether the screen is worth their effort. Facts the decision needs but that sit on another tab must be remembered or re-found; facts it does not need dilute attention and raise confidence without raising accuracy. How much a person tolerates grows with expertise and frequency and shrinks for novices and rare tasks.

## Triggers
Any screen that presents data for a decision or action: record and detail views, CRM cards, dashboards, work queues, settings, review and confirmation steps, reports. Overview screens use larger budgets but the same rules on highlighting and comparison.

## Directives
### 🟢 DO
* Name the decision each screen supports, list the facts that decision needs, and show exactly those at zero clicks, grouped beside the action they inform; this is the decision core.
* Keep the decision core within about four groups competing for attention, and its must-read text short enough to read in about ten seconds (~40 words); count groups, not fields — grouping predicts search time.
* Give every decision-relevant number its comparison — target, previous period, threshold, or due date — and show each number once with one meaning. Where the scale is hard to judge, add an evaluative label ("on track", "at risk") and keep "better" pointing the same direction across the screen; unimportant numbers are not harmless — they pull weight from the important ones.
* Keep reference information on screen but quieter by size and position, or behind one labeled disclosure per area (see UX-PROG-01); never defer a fact the current decision needs.
* Highlight only deviations that require an action; if most items are highlighted, highlighting has stopped working.
* Scale density to the audience: novices and rare tasks see the decision core only; daily experts may see more, provided it is grouped (see UX-LOAD-01).

### 🔴 DON'T → INSTEAD
* **Don't:** render every field the data model holds because it is available. **Instead:** show the decision core and move the rest to quiet reference or one "Details" disclosure.
* **Don't:** split the facts one decision needs across tabs, dialogs, or screens. **Instead:** bring them into one group next to the action, even if that repeats a value shown elsewhere with another meaning.
* **Don't:** show a bare number ("Revenue 48,200"). **Instead:** show it against a reference ("48,200 · 92% of target · ▼6% vs last month").
* **Don't:** color, badge, or alert every item that differs. **Instead:** reserve emphasis for states that require a response and state the response.
* **Don't:** treat a busy screen as thorough. **Instead:** test it: can a newcomer state the decision and its key facts after ten seconds?

## Example
❌ Customer card: 38 fields in 9 tabs, 6 red badges, "Balance 1,200" with no due date; the overdue invoice is on tab 4
✅ Decision core: `Overdue 1,200 · due 12 Nov (15 days late) · 2 reminders sent · last reply: "pay Friday"` → `[Log promise to pay]` · quiet side column: contacts, history · `Details` for the rest

## Self-Reflection
* "Which decision is this screen for — are all the facts it needs visible together, each with a comparison, and does anything on screen change no decision yet compete for attention?"
