# UX Rule Index

This index is always loaded. Before generating or reviewing ANY UI, match the task against the "Apply when" column and read the full rule files for every match — paths are relative to this index file (the rule-base root).
Format spec and conflict resolutions live in [rules/00_META_FRAMEWORK.md](rules/00_META_FRAMEWORK.md).

### Cognition

| Rule | Apply when |
|---|---|
| [UX-LOAD-01](rules/cognition/UX-LOAD-01-cognitive-load.md) — Cognitive Load | Any flow, form, wizard, dashboard, settings, or checkout — decompose intrinsic complexity into steps, strip extraneous noise, keep feedback patterns absolutely consistent so primary paths run on System 1 |
| [UX-MEM-01](rules/cognition/UX-MEM-01-context-retention.md) — Context Retention | Scrolling tables, lists, dashboards, comparison views — keep column headers, row keys, and section titles visible so users recognize on sight instead of recalling |
| [UX-MILL-01](rules/cognition/UX-MILL-01-choice-management.md) — Choice Management | Navigation, menus, toolbars, filters, settings, action menus — cap each visual level at 5–7 options, rank by frequency of use, demote the long tail to one overflow, put highest-value items first/last |
| [UX-PROG-01](rules/cognition/UX-PROG-01-progressive-disclosure.md) — Progressive Disclosure | Settings, configurators, filters, advanced options — show only primary-task controls by default, defer advanced/secondary options to explicitly requested secondary views |

### Behavior

| Rule | Apply when |
|---|---|
| [UX-ECON-01](rules/behavior/UX-ECON-01-goal-gradient.md) — Progress Motivation | Multi-step flows with progress (checkout, wizards, onboarding, checklists, profile setup) — credit genuine pre-endowed progress at the start, shrink effort and accent the finish near the end |
| [UX-ECON-03](rules/behavior/UX-ECON-03-occams-razor.md) — Occam's Razor | Any composition (forms, cards, modals, dashboards, landing sections) — generate the simplest equivalent solution and run the canonical subtraction pass deleting every element without functional or informational load |
| [UX-ECON-04](rules/behavior/UX-ECON-04-parkinsons-law.md) — Parkinson's Law | Text blocks, dense tables, responsive/wide-screen layouts — give every text block and data container an explicit max-width (45–75ch for reading text) so wide viewports cannot stretch content |
| [UX-KAHN-02](rules/behavior/UX-KAHN-02-loss-aversion.md) — Loss Aversion | Destructive actions, unsaved changes, cancellations, downgrades — confirmation copy states concretely what will be lost, to inform and protect, never to pressure |
| [UX-KAHN-03](rules/behavior/UX-KAHN-03-peak-end.md) — Peak-End Rule | Flow endings and worst moments (checkout, onboarding, confirmations, errors, empty search) — deliberately design every final state and give the likely negative peak the most careful design |

### Gestalt

| Rule | Apply when |
|---|---|
| [UX-AEST-01](rules/gestalt/UX-AEST-01-aesthetic-usability.md) — Aesthetic-Usability | Spacing, typography, design tokens, grids, component styling — derive every spacing/size/radius/font value from one modular token scale, never per-element taste |
| [UX-GEST-01](rules/gestalt/UX-GEST-01-similarity.md) — Similarity | Cards, badges, buttons, lists, tables — style equal-function elements identically; any variation in radius/weight/padding/color reads as a difference in meaning |
| [UX-GEST-02](rules/gestalt/UX-GEST-02-closure.md) — Closure | Grouping content in cards, forms, sections, settings — group with consistent whitespace first; draw a hard border only when spacing alone cannot carry the boundary |
| [UX-GEST-03](rules/gestalt/UX-GEST-03-pragnanz.md) — Prägnanz | Layouts, modals, landing sections, navigation — generate a flat, predictable skeleton; every shadow, layer, or decorative shape must earn its place with a function or be removed |
| [UX-GEST-04](rules/gestalt/UX-GEST-04-uniform-connectedness.md) — Uniform Connectedness | Multi-step flows, timelines, progress indicators, dependent items — render dependency with explicit connectors (lines, arrows, shared enclosure), not proximity alone |
| [UX-REST-01](rules/gestalt/UX-REST-01-von-restorff.md) — Von Restorff | Buttons, toolbars, forms, empty states, modals — maximum ONE primary CTA per screen area; mute all secondary/tertiary actions to prevent accent blindness |

### Interaction

| Rule | Apply when |
|---|---|
| [UX-CTRL-01](rules/interaction/UX-CTRL-01-emergency-exit.md) — Emergency Exit | Destructive actions, wizards, modals, bulk operations — every state offers a clearly marked exit and destructive actions are reversible in a single step |
| [UX-EFF-01](rules/interaction/UX-EFF-01-efficiency-accelerators.md) — Expert Accelerators | Dense tables, admin panels, approval workflows, repetitive tasks — add bulk actions, keyboard shortcuts, one-click copy, saved presets; repetition count is a design defect |
| [UX-ERR-01](rules/interaction/UX-ERR-01-poka-yoke.md) — Poka-Yoke | Forms, data entry, config panels, destructive actions — constrain inputs so invalid states cannot be entered; validate before submit and report each error adjacent to its field |
| [UX-FITT-01](rules/interaction/UX-FITT-01-fitts-law.md) — Fitts's Law | Buttons, touch targets, icon buttons, toolbars, mobile, row actions — make every target large enough, close enough, and safely separated from neighbors (especially destructive ones) |
| [UX-JAKOB-01](rules/interaction/UX-JAKOB-01-jakobs-law.md) — Jakob's Law | Navigation, forms, tables, checkout, onboarding structure — reuse interaction patterns users already know; structural novelty is a cost, not a feature |
| [UX-LOC-01](rules/interaction/UX-LOC-01-spatial-locality.md) — Spatial Locality | Inline editing, row actions, feedback messages — place controls and feedback in immediate physical proximity to the object they act on |
| [UX-STAT-01](rules/interaction/UX-STAT-01-system-status.md) — System Status | Async operations, uploads, background jobs, loading states — feedback content says what is running, which stage, and when it completed (timing budgets live in UX-ROBUST-02) |
| [UX-STATE-01](rules/interaction/UX-STATE-01-state-completeness.md) — State Completeness | Every data-bearing view (tables, lists, search, dashboards, data fetching) — ship all states: empty/first-use, loading, error, partial/degraded, success, and overflow |

### Robustness

| Rule | Apply when |
|---|---|
| [UX-ROBUST-01](rules/robustness/UX-ROBUST-01-postels-law.md) — Postel's Law | Inputs, validation, search, import, checkout — accept and normalize imperfect input client-side, emit clean structured data; never error on formatting the system could fix itself |
| [UX-ROBUST-02](rules/robustness/UX-ROBUST-02-doherty-threshold.md) — Doherty Threshold | Any async action, button, toggle, loading state — latency ladder: acknowledge <100 ms, meaningful feedback <400 ms, named status beyond ~2–3 s; optimistic UI only for reversible low-risk micro-interactions |
| [UX-ROBUST-03](rules/robustness/UX-ROBUST-03-teslers-law.md) — Tesler's Law | Forms, wizards, onboarding, import, configuration — the system absorbs irreducible complexity via smart defaults, autofill, derivation, and automatic parsing instead of manual entry |

### Data

| Rule | Apply when |
|---|---|
| [UX-TUFTE-01](rules/data/UX-TUFTE-01-data-ink-ratio.md) — Data-Ink Ratio | Tables, dashboards, reports, metrics, analytics — strip every non-informational pixel by default; reintroduce minimal row guides only when density makes scanning fail |

### A11y

| Rule | Apply when |
|---|---|
| [UX-A11Y-01](rules/a11y/UX-A11Y-01-global-inclusivity.md) — WCAG Baseline | Every generated interface (forms, tables, nav, dashboards, wizards) — WCAG AA baseline: full keyboard operability, visible focus, sufficient contrast, non-color-only status encoding |
| [UX-A11Y-02](rules/a11y/UX-A11Y-02-wcag22-interaction.md) — WCAG 2.2 Interaction | Forms, checkout, drag-and-drop, sticky headers, help links — never re-ask known data (prefill or same-as-previous), single-click alternative for every drag, focus never hidden under sticky content, help in the same place on every page |

### Content

| Rule | Apply when |
|---|---|
| [UX-COGA-01](rules/content/UX-COGA-01-clear-language.md) — Clear Language | All copy, consent dialogs, notifications, live feeds, animations — direct affirmative statements; no auto-refreshing layout shifts during critical tasks; all motion user-controllable |
| [UX-I18N-01](rules/content/UX-I18N-01-internationalization.md) — Internationalization Resilience | Any user-facing string, label, button, table header, or rendering of dates/numbers/currency — elastic containers for longer translations, whole-sentence translatable strings, locale-driven plurals and formats, logical properties for either direction |
| [UX-VOICE-01](rules/content/UX-VOICE-01-content-design.md) — Content Design | All UI text (labels, buttons, errors, empty states, mockups) — realistic content over placeholder gibberish, sentence case, verb-first action labels, plain language, one consistent name per object |
