# Changelog

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
