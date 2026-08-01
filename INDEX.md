# UX Rule Index

This index is always loaded in context. Before generating or reviewing ANY UI, match the task against the "Apply when" column and read the full rule files (relative paths below) for every match. Full rule format spec: rules/00_META_FRAMEWORK.md.

### Cognition
| ID | Rule | Apply when | File |
|---|---|---|---|
| UX-KAHN-01 | Lazy Thinking (System 1/2) | Any user flow, nav, onboarding, form, checkout — primary tasks must run on low-effort intuition, deep thought only for rare complex actions | [UX-KAHN-01](rules/cognition/UX-KAHN-01-lazy-thinking.md) |
| UX-LOAD-01 | Cognitive Load Decomposition | Forms, wizards, dashboards, settings, dense tables — split complex tasks into steps, strip noise, keep feedback patterns absolutely consistent | [UX-LOAD-01](rules/cognition/UX-LOAD-01-cognitive-load.md) |
| UX-MEM-01 | Context Retention (Recognition over Recall) | Scrolling tables, lists, comparison views — headers, row keys, section titles must stay visible during scroll | [UX-MEM-01](rules/cognition/UX-MEM-01-context-retention.md) |
| UX-MILL-01 | Choice Management (Hick/Miller) | Navigation, menus, filters, settings, dashboards — chunk, rank, and cap options at 5–7 per visual level | [UX-MILL-01](rules/cognition/UX-MILL-01-choice-management.md) |
| UX-PROG-01 | Progressive Disclosure | Settings, configurators, filters, advanced options — default screen shows only the primary task; defer secondary controls to requested views | [UX-PROG-01](rules/cognition/UX-PROG-01-progressive-disclosure.md) |

### Behavior
| ID | Rule | Apply when | File |
|---|---|---|---|
| UX-ECON-01 | Goal-Gradient Effect | End of any funnel (checkout, wizard, onboarding) — final steps must be mechanically lighter and the finish line visually accented | [UX-ECON-01](rules/behavior/UX-ECON-01-goal-gradient.md) |
| UX-ECON-02 | Pareto Principle (80/20) | Dashboards, toolbars, headers, action menus — dominant path gets absolute visual priority; rare actions demoted to overflow menus | [UX-ECON-02](rules/behavior/UX-ECON-02-pareto.md) |
| UX-ECON-03 | Occam's Razor | Any component composition or code generation — generate the simplest equivalent; audit and remove every DOM node without functional/informational load | [UX-ECON-03](rules/behavior/UX-ECON-03-occams-razor.md) |
| UX-ECON-04 | Parkinson's Law | Text blocks, tables, responsive/wide layouts — explicit max-width on every text/data container (60–80 chars per reading line) | [UX-ECON-04](rules/behavior/UX-ECON-04-parkinsons-law.md) |
| UX-KAHN-02 | Loss Aversion | Destructive actions, unsaved changes, cancellations, downgrades — confirmation copy states concretely what is lost, never pressures | [UX-KAHN-02](rules/behavior/UX-KAHN-02-loss-aversion.md) |
| UX-ZEIG-01 | Zeigarnik Effect | Start of multi-step flows, checklists, profile setup — progress indicator with visible finish line, pre-endowed (never 0%) | [UX-ZEIG-01](rules/behavior/UX-ZEIG-01-zeigarnik-effect.md) |

### Gestalt
| ID | Rule | Apply when | File |
|---|---|---|---|
| UX-GEST-01 | Law of Similarity | Cards, badges, buttons, lists, tables — equal-function elements styled identically; any visual variation reads as meaning | [UX-GEST-01](rules/gestalt/UX-GEST-01-similarity.md) |
| UX-GEST-02 | Law of Closure | Grouping cards, forms, sections — group with whitespace first; hard borders only when spacing alone cannot carry the boundary | [UX-GEST-02](rules/gestalt/UX-GEST-02-closure.md) |
| UX-GEST-03 | Law of Prägnanz | Layouts, modals, landing sections — flat predictable skeleton; every shadow/layer/decoration must earn its place or be removed | [UX-GEST-03](rules/gestalt/UX-GEST-03-pragnanz.md) |
| UX-GEST-04 | Uniform Connectedness | Multi-step flows, progress indicators, timelines — dependent items rendered with explicit visual connectors, not proximity alone | [UX-GEST-04](rules/gestalt/UX-GEST-04-uniform-connectedness.md) |
| UX-REST-01 | Von Restorff Effect | Buttons, CTAs, toolbars, empty states — max ONE primary CTA per screen area; all secondary actions muted | [UX-REST-01](rules/gestalt/UX-REST-01-von-restorff.md) |

### Interaction
| ID | Rule | Apply when | File |
|---|---|---|---|
| UX-CTRL-01 | Emergency Exit & Forgiveness | Destructive actions, modals, wizards, bulk ops — every state has a marked exit; destructive actions reversible in one step | [UX-CTRL-01](rules/interaction/UX-CTRL-01-emergency-exit.md) |
| UX-EFF-01 | Efficiency for Experts | Dense tables, bulk operations, approval workflows, admin panels — add accelerators (bulk actions, shortcuts, presets, one-click copy) | [UX-EFF-01](rules/interaction/UX-EFF-01-efficiency-accelerators.md) |
| UX-ERR-01 | Poka-Yoke (Error Prevention) | Forms, data entry, config panels, checkout — make invalid states unenterable; catch errors pre-submit, report adjacent to source | [UX-ERR-01](rules/interaction/UX-ERR-01-poka-yoke.md) |
| UX-JAKOB-01 | Jakob's Law (Convention) | Navigation, forms, tables, checkout structure — reuse patterns users already know; structural novelty is a cost | [UX-JAKOB-01](rules/interaction/UX-JAKOB-01-jakobs-law.md) |
| UX-LOC-01 | Spatial Locality | Inline editing, row actions, feedback messages — controls and feedback sit immediately next to the object they act on | [UX-LOC-01](rules/interaction/UX-LOC-01-spatial-locality.md) |
| UX-STAT-01 | Visibility of System Status | Async operations, loading states, uploads, background jobs — every process gives timely specific feedback; silence reads as a crash | [UX-STAT-01](rules/interaction/UX-STAT-01-system-status.md) |

### Robustness
| ID | Rule | Apply when | File |
|---|---|---|---|
| UX-ROBUST-01 | Postel's Law | Inputs, validation, search, import — accept imperfect input liberally, normalize client-side; errors only for genuine logic violations | [UX-ROBUST-01](rules/robustness/UX-ROBUST-01-postels-law.md) |
| UX-ROBUST-02 | Doherty Threshold & Optimistic UI | Buttons, toggles, async actions — visible feedback within 400 ms; optimistic UI only for reversible low-risk actions, honest pending otherwise | [UX-ROBUST-02](rules/robustness/UX-ROBUST-02-doherty-threshold.md) |
| UX-ROBUST-03 | Tesler's Law | Forms, onboarding, import, configuration — system absorbs irreducible complexity via smart defaults, autofill, derivation, auto-parsing | [UX-ROBUST-03](rules/robustness/UX-ROBUST-03-teslers-law.md) |

### Data
| ID | Rule | Apply when | File |
|---|---|---|---|
| UX-TUFTE-01 | Data-Ink Ratio | Tables, dashboards, reports, analytics — strip non-informative decoration; reintroduce minimal row guides only when density demands | [UX-TUFTE-01](rules/data/UX-TUFTE-01-data-ink-ratio.md) |

### A11y
| ID | Rule | Apply when | File |
|---|---|---|---|
| UX-A11Y-01 | Global Inclusivity (WCAG AA) | Every interface — full keyboard operability, visible focus, sufficient contrast, non-color-only status encoding | [UX-A11Y-01](rules/a11y/UX-A11Y-01-global-inclusivity.md) |
| UX-A11Y-02 | WCAG 2.2 Interaction Criteria | Forms, checkout, drag-and-drop, sticky headers — no redundant data entry, click alternative for drags, focus never hidden, consistent help placement | [UX-A11Y-02](rules/a11y/UX-A11Y-02-wcag22-interaction.md) |

### Content
| ID | Rule | Apply when | File |
|---|---|---|---|
| UX-COGA-01 | Clear Language | All copy, consent dialogs, notifications, live feeds, animations — direct affirmative statements; no layout-shifting auto-refresh; motion user-controllable | [UX-COGA-01](rules/content/UX-COGA-01-clear-language.md) |
| UX-VOICE-01 | Content Design & Microcopy | Labels, buttons, errors, empty states, mockups — realistic production-grade text, sentence case, plain language, one name per object | [UX-VOICE-01](rules/content/UX-VOICE-01-content-design.md) |
