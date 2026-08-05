---
id: UX-I18N-01
title: Internationalization Resilience
category: content
severity: mandatory
triggers: [forms, tables, buttons, labels, navigation, notifications, empty-states, dates-numbers-currency, rtl]
version: "5.2"
status: active
---

# [UX-I18N-01] Internationalization Resilience

## Summary
Every generated interface treats its source language as one locale among many: layouts absorb longer translations without clipping, sentences are single translatable units, plurals and formats come from the locale, and layout direction is never assumed.

## Scientific Foundation
* **Theory:** Internationalization (i18n) engineering; W3C guidance on text size in translation and bidirectional text; the Unicode CLDR plural-category model; WCAG 2.2 SC 3.1.1/3.1.2 (Language of Page / of Parts) and SC 1.4.5 (Images of Text).
* **Key Authors:** W3C Internationalization Working Group; Unicode Consortium (CLDR); IBM globalization guidelines as published in the W3C "Text size in translation" article.
* **Core Concept:** Translation is not substitution of equal-sized tokens. Expansion is inversely proportional to source length — running text grows roughly 30%, while short UI labels commonly reach 200–300% of the original — and grammar, word order, plural systems, numeric and date conventions, and reading direction change with it. An interface tuned to the shape of one language encodes that language's grammar and metrics into its layout and its code, and breaks the moment another locale is applied.

## Triggers
Any user-facing string: field labels, helper and error text, buttons, table headers, navigation items, tabs, notifications, empty states, tooltips, confirmations. Also any rendering of dates, times, numbers, currency, names, or addresses; any language or region switcher; any fixed-width control or column sized to a text label.

## Directives
### 🟢 DO
* Size text containers elastically: let buttons, headers, tabs, and nav items grow or wrap with their content; validate short labels, buttons, tabs, and headers against strings 2–3x the source length, and running text against ~30% growth (line-length caps: see UX-ECON-04).
* Keep one whole sentence per translatable string, with named placeholders for variables (`"Deleted {count} files from {folder}"`), so translators can reorder freely; keep each string one short affirmative sentence (see UX-COGA-01; label phrasing and casing: see UX-VOICE-01), since short unambiguous source text translates most reliably.
* Resolve quantities through plural-category-aware machinery — ICU MessageFormat for the message, `Intl.PluralRules` for the category — never through a manual singular/plural branch; languages carry from one to six plural categories.
* Derive dates, times, numbers, currency, and name/address order from the active locale via platform formatters, never from hand-written patterns.
* Lay out with logical properties (`margin-inline-start`, `padding-inline`, `inset-inline`, `text-align: start`) and mirror icons and motion whose meaning is reading direction (back/forward, indent, progress, list order); leave direction-neutral icons, physical-referent icons, media playback controls, and clock/time icons unmirrored, and keep numerals and embedded opposite-direction runs in their own direction.
* Externalize every string into resource files keyed by meaning, and keep text as live text — text baked into an image cannot be translated, resized, restyled for a longer string, or read by assistive technology.
* Set `lang` on the document and on any passage in another language — proper names, technical terms, and naturalized loanwords excepted (WCAG 3.1.1 / 3.1.2); label a language option with its endonym — the language's own name.

### 🔴 DON'T → INSTEAD
* **Don't:** give labels, buttons, or columns fixed widths measured against the source language, or truncate the overflow. **Instead:** set min-widths and let the element wrap or expand; reserve truncation for user-generated content, never for interface labels.
* **Don't:** assemble sentences by concatenating fragments or splicing a noun into a partial phrase (`"You have " + n + " new " + type`). **Instead:** one complete string per message, with a placeholder per variable and a variant per case.
* **Don't:** branch on `n > 1` or emit "1 item(s)". **Instead:** pass the count to a plural-aware formatter and supply one message per plural category the locale defines.
* **Don't:** hardcode a date order, decimal separator, or currency-symbol position (`MM/DD/YYYY`, `1,234.56`, `$` prefix). **Instead:** render through a locale-aware formatter and let the locale decide order, separators, and symbol placement.
* **Don't:** position with physical `left`/`right` or assume left-to-right reading. **Instead:** use logical properties and direction-aware icons so the same markup serves both directions.
* **Don't:** bake copy into images or flatten it into graphics. **Instead:** render live text over the image so it can be translated and read by assistive technology.
* **Don't:** represent a language with a country flag. **Instead:** show the language's own name as the label — flags denote countries, and one country is not one language.

## Example
❌ `<button style="width:88px;margin-left:8px">Delete</button>` rendering `"Deleted " + n + " item(s)"`

✅ `<button style="min-width:12ch;white-space:normal;margin-inline-start:var(--space-2)">{format('delete')}</button>` rendering `format('deleted', {count: n})` → `{count, plural, …}` per locale

## Self-Reflection
* "If every string on this screen were replaced by a translation — every short label two to three times longer, every paragraph ~30% longer — written right-to-left, with a different plural system and date format: would the layout hold and would every sentence still be grammatical?"
