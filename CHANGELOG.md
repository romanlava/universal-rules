# Changelog

## 5.3.0 — 2026-08-05

Audit of what the v5.1 consolidation cost, the accessibility scope it overstated, and
the coverage gap it left. Two lost directives restored, one boundary made explicit in
the rules themselves, one anti-pattern replaced, one new rule.

* **Restored directives lost in the v5.1 merges:** cross-screen context retention is
  back in UX-MEM-01 — persist and redisplay values the user already entered at the
  later step that depends on them (running summary, inline recap beside the action,
  pre-filled fields on return), distinguished from UX-A11Y-02's separate guarantee of
  never *re-asking* for known data. Dominant-path layout allocation is back in
  UX-MILL-01 — layout space is ranked by expected use exactly as visual prominence is,
  so the dominant path takes the widest, topmost region and marginal settings take a
  narrower, lower, or collapsed one.
* **Constraint-vs-Liberality boundary written into the rules:** the meta-framework
  resolution existed but neither rule carried it, so each read as if it governed all
  input. UX-ERR-01 now scopes constraint to a finite, enumerable value space;
  UX-ROBUST-01 now scopes liberality to parsing, not to the choice space. Both state
  the shared case explicitly — a date picker is the correct control *and* every date it
  accepts must still be normalized rather than refused for its format.
* **UX-ERR-01 disabled-submit pattern replaced:** the rule previously prescribed
  gating a form by disabling the submit button, which is unfocusable, announces
  nothing, and hides the reason the user is stuck. It now mandates the accessible
  pattern — keep the action enabled, block the submit on activation, move focus to the
  first invalid field, announce the error — and, for genuinely unavailable actions,
  `aria-disabled` with the blocker exposed as text.
* **UX-A11Y-01 scope made honest:** the rule claimed to deliver "WCAG AA baseline"
  while covering a subset of it. It now names the nine criteria it owns (1.3.1, 1.3.5,
  1.4.1, 1.4.3, 1.4.11, 2.1.1, 2.4.7, 3.3.2, 4.1.3), states that conformance
  additionally requires sibling rules and per-product checks no generation rule can
  make, and adds the two highest-value criteria that were missing: semantic structure
  (SC 1.3.1 — real headings, lists, tables with `scope`, `fieldset`/`legend`,
  landmarks, never styled `<div>`s) and input purpose (SC 1.3.5 — `autocomplete`
  tokens, which are also the delivery path for UX-ROBUST-03's prefill duty).
* **New rule:** UX-RESP-01 (Responsive Reflow, interaction, mandatory) — WCAG 2.2
  SC 1.4.10 Reflow and SC 1.4.4 Resize Text: one-directional page scrolling at a
  320 CSS px equivalent width, two-dimensional scrolling confined to the criterion's
  own exception classes and to the excepted element alone, breakpoints placed where the
  content breaks rather than at device classes, an explicit narrow-viewport strategy
  chosen per dense table (row stacking / prioritized columns / table-scoped scroller),
  and parity of function across widths. Fills the gap UX-ECON-04 left: max-widths
  govern the wide end of the range, this rule governs the narrow end.
* **UX-AEST-01 density directive made falsifiable:** "govern density by context, not
  taste" named no values and could not be checked. It now specifies exactly two density
  steps derived from the same base unit (e.g. base 4 → tight 4/8/12, loose 8/16/24),
  selected by what the surface *is* (operational/data-dense vs. first-run/marketing),
  with one step applied throughout a surface — no third rhythm, no second base unit, no
  per-screen tuning.
* **Archived research document:** `docs/research/2026-07-ux-gap-analysis.md` translated
  from the Russian original (citation markers preserved) and headed with a
  non-normative banner — provenance only, never to be loaded or applied as a rule, and
  the current framework governs wherever it disagrees.
* **Disabled-control conflict resolved across three rules:** UX-ERR-01's new "keep the
  submit enabled" directive read as an absolute ("enabled and focusable at all times")
  and so contradicted UX-STAT-01 and UX-ROBUST-02, which both prescribe disabling the
  trigger for the duration of an async operation. The boundary is now explicit and
  symmetric: invalid data never disables a control, an in-flight operation legitimately
  locks it, and that lock is `aria-disabled` plus a stage-naming label rather than a bare
  `disabled` attribute, so the control keeps focus and stays announceable. Added to the
  meta-framework's conflict list as **Blocked action vs. pending action**.
* **UX-A11Y-01 scope corrected for the new rule:** reflow was still listed among the
  "per-product checks no generation rule can make" after UX-RESP-01 took ownership of it;
  reflow is removed from that list and UX-RESP-01 added to the sibling-rule set.
* **Reciprocal narrow/wide references:** UX-RESP-01 pointed at UX-ECON-04, UX-TUFTE-01
  and UX-FITT-01, but none pointed back, so a rule loaded on its own could not see the
  boundary. UX-ECON-04 now states it governs the wide end and UX-RESP-01 the narrow end;
  UX-TUFTE-01 scopes its density exception to a table shown in full; UX-FITT-01 states
  that target minimums survive reflow.
* **Mechanical consistency fixes:** meta-framework and `_TEMPLATE.md` version strings
  brought up to date (both still read v5.0); UX-KAHN-02 now points to UX-CTRL-01's
  undo-first path before its dialog copy rules, matching the Confirmation-vs-Undo
  resolution; UX-STAT-01's stray "~1 second" trigger figure replaced by a reference to
  the canonical latency ladder in UX-ROBUST-02 (the 5.1 fix had left one duplicate
  behind); cross-references added — UX-PROG-01 → UX-MILL-01 (option cap),
  UX-KAHN-03 → UX-STATE-01 (empty results); UX-A11Y-02's SC 3.3.7 and 3.2.6 wording
  corrected, with its two deliberate above-AA requirements labelled as such;
  README's `behavior/` description no longer advertises the merged-away Pareto rule;
  the `ux-architect` skill resolves the meta-framework through
  `${CLAUDE_PLUGIN_ROOT}`, which a plugin install needs.
* **Index:** UX-RESP-01 added to the Interaction section; UX-ECON-01's trigger reworded
  — it read as though an existing progress indicator were a precondition, when the rule
  in fact mandates creating one, so a wizard without an indicator now matches. Four rows
  realigned with the rules they point at, since the index is the only surface a session
  always sees: UX-A11Y-01 no longer advertises "WCAG AA baseline" (the rule itself now
  disclaims that scope) and names the criteria it did gain; UX-MEM-01 and UX-MILL-01 name
  the directives restored in this release (cross-step retention, layout allocation);
  UX-ERR-01 states the enabled-submit pattern and the finite-value-space scope.
* **Version strings:** every rule touched in this release carries `version: "5.3"`, per
  the release checklist in `docs/INTEGRATION.md`; the meta-framework header and
  `_TEMPLATE.md` read 5.3 rather than the intermediate 5.2.

## 5.2.0 — 2026-08-05

Internationalization coverage: the rule base no longer assumes the source language is
the only locale.

* **New rule:** UX-I18N-01 (Internationalization Resilience, content, mandatory) —
  text expansion budgeted by source length (running text ~30%, short UI labels
  200–300% of the original), one whole sentence per translatable string instead of
  concatenated fragments, CLDR plural categories via ICU MessageFormat / `Intl.PluralRules`
  instead of `n > 1` branches, locale-driven date/number/currency/name formatting,
  logical properties with reading-direction-only icon mirroring for RTL, strings
  externalized into resource files and kept as live text, `lang` on the document and on
  foreign-language passages, endonym language labels instead of country flags.
* **Cross-references added:** UX-VOICE-01 — sentence case is the source locale's
  convention; translated casing follows the target language's orthography.
  UX-ECON-04 — max-widths are caps, never fixed sizes measured against source-language
  text; a capped label, button, or column must still absorb a much longer translation.
* **Science precision:** expansion figures anchored to the inverse-length curve (W3C
  "Text size in translation", citing IBM globalization guidance) rather than a flat 30%;
  RTL mirroring scoped to reading-direction semantics, excluding direction-neutral,
  physical-referent, media-playback and clock icons; `lang` markup stated with WCAG
  3.1.2's proper-name / technical-term / loanword exceptions.
* **Index:** UX-I18N-01 added to the Content section of INDEX.md (without an index row a
  rule can never be loaded under two-level loading).

## 5.1.0 — 2026-07-31

Full-system audit (5 independent reviewers) and consolidation; everything translated
to English.

* **Fixed contradiction:** UX-STAT-01 (100 ms) vs UX-ROBUST-02 (400 ms) — one canonical
  latency ladder now lives in UX-ROBUST-02; UX-STAT-01 owns feedback content only.
* **Merged (deprecated, not deleted):** UX-KAHN-01 → UX-LOAD-01; UX-ZEIG-01 → UX-ECON-01
  ("Progress Motivation: endowed start, accelerating finish"); UX-ECON-02 → UX-MILL-01
  (choice management now includes Pareto ranking, overflow demotion, serial position).
* **Deduplicated:** the "delete functionless decoration" directive canonicalized in
  UX-ECON-03; redundant-entry canonicalized in UX-A11Y-02; error-feedback details
  cross-referenced to UX-LOC-01 / UX-A11Y-01.
* **New rules:** UX-FITT-01 (Fitts's law, target size), UX-AEST-01 (aesthetic-usability,
  token mathematics, density governance), UX-KAHN-03 (peak-end), UX-STATE-01 (state
  completeness beyond the happy path).
* **Science precision:** Miller 7±2 → Cowan 4±1 wording, Zeigarnik replication caveat
  (Ovsiankina, endowed progress as the robust base), WCAG 2.4.11 "(Minimum)" naming,
  3.3.7 exception list, 45–75 cpl line length, corrected attributions.
* **Meta-framework:** two new conflict resolutions (Confirmation vs Undo, Constraint vs
  Liberality), a context rubric for unlisted conflicts, a global Ethical Gate, and a
  resolved-format-decisions section.
* **Tooling:** plugin version-bump release mechanic documented; private-repo access,
  @import space-escaping and external-import approval caveats documented; plugin/marketplace
  manifests enriched; runtime lock file untracked.

## 5.0.0 — 2026-07-31

Initial release of the standalone rule repository.

* Migrated 14 rules from AI_Architect_UX_Rules v1.0; triggers universalized
  (project-specific scenarios removed), every DON'T paired with a positive INSTEAD
  pattern, YAML front-matter and compact ❌/✅ examples added.
* Authored 15 new rules closing the gaps from the 2026-07 UX research gap analysis:
  gestalt perception (similarity, closure, Prägnanz, uniform connectedness, Von Restorff),
  behavioral economy (goal-gradient, Pareto, Occam's razor, Parkinson's law),
  robustness (Postel's law, Doherty threshold, Tesler's law),
  accessibility (WCAG 2.2 interaction criteria, COGA clear language),
  content design and cognitive load decomposition.
* Two-level loading architecture: INDEX.md always in context, full rules on demand.
* Packaging: git submodule / CLAUDE.md @import / Claude Code plugin with ux-architect skill.
