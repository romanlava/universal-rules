> **ARCHIVED SOURCE DOCUMENT — NOT NORMATIVE**
>
> This is the July 2026 research input that motivated v5.0/v5.1 of this rule base. It is preserved for provenance only: it records what was analyzed and why the rules changed. It is **not** part of the rule base and must never be loaded or applied as a rule.
>
> Where this document disagrees with the current rules or with `rules/00_META_FRAMEWORK.md`, **the current framework governs.** In particular, its recommendations for per-rule XML blocks, multi-example few-shot sets, and ASCII token schemas were deliberately **not** adopted — high-levelness and context economy won instead. See "Resolved Format Decisions" in `rules/00_META_FRAMEWORK.md`; future audits should not re-flag these as gaps.
>
> Translated from the Russian original. Inline citation markers are preserved as `[n]` and resolve to the numbered "Works cited" list at the end.

# Architectural Audit and Global Standardization of the AI Design-System Framework: An Exhaustive Analysis of Gaps, UX Standards, and Cognitive Psychology

Analysis of the evolution of the system rule base under review (the AI Architect Blueprint, from version 1.0 to 4.0) demonstrates a fundamental attempt to algorithmize behavioral psychology and architectural patterns for use by large language models (LLMs).[1] The transition from declarative heuristics to strict binary directives, the introduction of YAML metadata, and the integration of ASCII schemas in version 4.0 attest to a high level of engineering maturity in the framework.[4] Such an approach makes it possible to transform abstract design intent into deterministic program code, minimizing artificial-intelligence hallucination.

## Assessment of Rule Formatting and System-Prompt Engineering

The evolution of rule formatting up to version 4.0 — comprising a six-part scheme (metadata, summary, scientific foundation, triggers, hard directives, implementation schemas, and self-reflection) — creates a solid frame for contextual understanding of the task by the artificial intelligence.[4] However, from the standpoint of the cognitive architecture of modern LLMs, the current formatting contains methodological vulnerabilities capable of degrading the output code.

Modern language models processing system instructions rely on the probabilistic distribution of tokens. The current framework makes extensive use of a hard-prohibition section. Global standards for agent development and prompt-engineering guides emphasize that models cope significantly worse with negative constraints than with positive instructions that establish a clear vector of action.[6] When the system prompt orders the model not to use aggressive manipulation patterns or not to overload the user with choice, the focus of the self-attention mechanism fixes precisely on the forbidden concepts. This increases the probability that the AI will accidentally generate the undesirable pattern. To close this gap, the format must be modified: every prohibition must be accompanied by an explicit, unambiguous replacement pattern. Directives should be reformulated to tell the AI exactly what must be done instead of the forbidden action, thereby laying out a safe algorithmic route.[6]

The second critical omission in the formatting is the absence of XML tagging. The current research relies on Markdown headings to structure the rules. Leading practices for working with latest-generation models require the use of XML tags to enforce a strict hierarchy and prevent context leakage. Wrapping logic blocks in tags allows the model to clearly separate instructions, user input data, and the expected output format. Introducing structured tagging eliminates the risk of mixing meta-rules with the generated component code.

The third gap lies in the absence of representative examples (few-shot prompting). Version 4.0 contains abstract ASCII layout schemas, yet leading guides emphasize the absolute necessity of providing concrete examples.[6] The AI needs paired examples demonstrating the original faulty interface and its corrected version, strictly conforming to a specific UX law. The absence of such patterns forces the model to interpret abstract concepts of "negative space" or "intuitiveness" on the basis of averaged weights, which leads to standardized but architecturally weak solutions.

## Integration of Leading Global Design-System Standards

The research works through the micro-levels of interaction in depth, but it misses the macro-levels that make systems such as IBM Carbon and Shopify Polaris industry benchmarks. To achieve world-class status, the framework must assimilate approaches to content design, component anatomy, and lifecycle management.

| System characteristic | Industry standard | Gap in the current research | Required integration into the framework |
| --- | --- | --- | --- |
| Content-design integration | Shopify Polaris includes rules for tone of voice, text length, and capitalization directly in the documentation of UI components.[9] | The rules cover text framing only for loss aversion, ignoring the global structure of microcopy.[4] | Introduce a UX-VOICE rule layer obliging the AI to use realistic text (no Lorem Ipsum), to observe Sentence case for forms, and to avoid professional jargon.[10] |
| Anatomical diagrams | IBM Carbon uses detailed anatomical breakdowns of components, where every token is bound to a visual layer.[9] | ASCII schemas show only the general placement of elements, without detailing the binding of design tokens to DOM nodes. | Mandatory inclusion of token mapping in the implementation schemas (for example, binding `$layer` to the background or `$ai-drop-shadow` to shadows) for precise code generation.[13] |
| Error-handling strategy | Progressive disclosure of errors and input validation before form submission are standardized.[9] | Rule UX-ERR-01 requires error prevention but does not standardize the visual language of feedback.[4] | Hard specification of colors (4.5:1 contrast), icons, and placement of the error text in the immediate vicinity of the input field (integration with spatial locality).[15] |
| Complexity management (Governance) | A clear separation into Productive and Expressive typography sets for different contexts.[17] | A universal approach to all interfaces without regard to their operational density. | Introduce contextual triggers: the AI must choose a condensed grid for complex dashboards and a wide one for simple onboarding.[17] |

Analysis of the IBM Carbon system demonstrates the critical importance of creating a single typographic mathematics. The use of the IBM Plex typeface and a strict size scale based on a single formula allows the interface to remain predictable on any device.[19] In the current framework the AI relies on the Aesthetic-Usability Effect, which requires applying a strict spatial grid and standardized tokens (for example, multiples of 8px). However, without handing the AI a precise mathematical scale for typography and spacing, the model will generate visually inconsistent components, which will destroy the aesthetic buffer of trust.

In addition, the framework misses the importance of the "More Actions" pattern, actively used in Shopify Polaris. On pages with high data density, the primary actions are surfaced, while repetitive but less important ones (for example, duplicate, archive, delete) are grouped into a standardized overflow menu.[20] Embedding this pattern into the AI rules will make it possible to automatically reduce visual noise, directly supporting Hick's Law and the principle of maximizing the Data-Ink Ratio.[19]

## In-Depth Audit of the Psychological Layer

The existing AI rule base successfully synthesizes fundamental principles of behavioral economics and psychology. The integration of Kahneman's two-systems principle (System 1 and System 2) guarantees that routine processes do not cause cognitive depletion.[4] The Zeigarnik effect is masterfully applied to gamify complex onboarding by means of artificially initiated progress.[4] The addition in version 4.0 of Postel's Law, the Doherty Threshold, the Von Restorff effect, and the Peak-End Rule brings the architecture to the level of high interaction engineering.

Nevertheless, in order to form a closed and absolutely exhaustive psychological layer, the research critically lacks the integration of Gestalt psychology principles and the laws of effort optimization that naturally govern human perception. Without these laws the AI architect remains blind to the macro-visual relationships inside the generated DOM tree.

### Missing Laws of Gestalt Psychology

The human brain is evolutionarily predisposed to rapid pattern recognition. Ignoring these mechanisms during algorithmic interface generation leads to structural chaos.

| Gestalt principle | Mechanism of cognitive perception | Implementation for the AI architect |
| --- | --- | --- |
| Law of Similarity | Elements sharing common visual characteristics (color, shape, size) are perceived as a related group.[24] | The AI is obliged to style elements of the same functional level absolutely identically. FORBIDDEN: mixing corner radii or font weights for equivalent cards or badges.[27] |
| Law of Closure | The brain automatically completes the missing parts of visual figures, striving for a whole image.[25] | The AI must use negative space to form invisible container boundaries, refusing the redundant hard borders that overload the interface.[25] |
| Law of Prägnanz | Complex or ambiguous images are always interpreted in their simplest, least energy-consuming form.[24] | The AI is obliged to avoid overloaded decorative elements, redundant shadows, and non-obvious layers. The generated UI must have a predictable, flat skeleton.[25] |
| Law of Uniform Connectedness | Elements physically joined by lines or a shared background are perceived as more related than those merely placed side by side.[24] | When generating complex multi-step processes (flowcharts, progress indicators), the AI is obliged to introduce visual connectors (lines, arrows) to explicitly demonstrate the dependency of the steps.[25] |

### Deficit of Optimization and Behavioral-Economy Laws

The current framework addresses decision fatigue (Hick's Law) and the limits of working memory (Miller's Law),[4] but it misses the laws that govern the distribution of the user's effort and time.

The Goal-Gradient Effect asserts that a person's motivation grows exponentially as they approach task completion physically or visually.[24] This principle works in tandem with the Zeigarnik effect, but it requires different architectural patterns. Whereas the Zeigarnik effect requires showing that the process has already begun, the goal gradient requires the AI to dynamically accelerate the interaction in the final stages. The system prompt must instruct the model to reduce the number of clicks and input fields on the last steps of complex transactional funnels, visually accentuating the finish line, in order to maximize conversion.

The Pareto principle (the 80/20 rule) states that eighty percent of user activity falls on only twenty percent of interface elements.[24] The absence of this law in the framework leads to the AI generating screens with an even distribution of visual weight between critically important functions and marginal settings. Introducing the Pareto principle will oblige the algorithm to mathematically compute the most probable user path and give it absolute priority on screen, hiding secondary functions in an overflow menu or nested panels (which correlates directly with the principle of progressive disclosure of information).[26]

Occam's Razor, a philosophical principle adapted for UX, requires choosing the simplest solution among equivalent alternatives.[24] In automated code generation, LLMs are often inclined toward redundancy (over-engineering), creating complex compositions of many components where a single base pattern would suffice. Introducing Occam's Razor as a hard metric in the self-reflection checklist will force the AI to critically evaluate every generated DOM node, ruthlessly deleting any element that carries no functional or informational load.

Parkinson's Law states that any task expands to fill all the available time.[24] In the context of interface design this transforms into a tendency for controls to stretch unjustifiably, filling all available screen space, which is especially critical for responsive design. The AI must be programmed to use hard `max-width` constraints for text blocks (to preserve the optimal line length of 60–80 characters) and for data containers, preventing the destruction of the typographic hierarchy on ultra-wide monitors.[26]

### Cognitive Load Management (Cognitive Load Theory)

The architecture correctly operates with the concept of cognitive load, referring to Kahneman's systems of thinking. However, a professional scientific approach requires decomposing cognitive load into three independent vectors, each of which requires specific algorithmic handling.[34]

Intrinsic load reflects the objective complexity of the task being solved. The architect cannot change the fact that configuring routing protocols is complex. The AI must manage this load exclusively through decomposition: breaking complex forms into step-by-step wizards.

Extraneous load arises from poor design, visual noise, and bad navigation. The framework successfully suppresses this load by means of Tufte's law (Data-Ink Ratio), which requires removing redundant borders and repeating symbols, and through the Von Restorff effect, which isolates key elements from visual chaos.[4]

Germane load is the cognitive effort the brain spends building mental models and learning the logic of the system itself. In the current research this control vector is ignored. To maximize germane load, the AI must generate absolutely consistent feedback patterns. If a successful form save is once accompanied by a green highlight and a micro-animation, the system is obliged to repeat this exact sequence at all analogous nodes of the application. Such predictability allows the user's brain to quickly "cache" the rules for working with the interface, freeing resources for solving the primary task.

## The Cognitive Inclusivity Layer: WCAG 2.2 and W3C COGA

The integration of the basic concepts of WCAG 2.2 into version 4.0 is an important step, but it covers only the tip of the accessibility iceberg. Modern standards extend far beyond color contrast and screen-reader support, concentrating on cognitive accessibility and neurodiversity.

Analysis of the official documents of the World Wide Web Consortium (W3C), including the guide "Making Content Usable for People with Cognitive and Learning Disabilities" ("Content Usable"), reveals deep deficits in the AI architect's rules.[35]

### Mechanics of the WCAG 2.2 Criteria

The new WCAG 2.2 success criteria directly affect component architecture. Criterion 3.3.7 (Redundant Entry) prohibits forcing the user to re-enter data they have already provided within a single process (for example, duplicating the shipping and billing address).[38] This requirement synchronizes perfectly with the principle of reducing cognitive load. The AI must automatically generate field-prefill functionality or data-copy checkboxes.[34]

Criterion 2.5.7 (Dragging Movements) establishes that any action requiring a complex drag-and-drop gesture must have a simple alternative controlled by a single tap or click (for example, up/down arrow buttons for sorting lists).[38] This is critically important for users with motor impairments, and the AI is obliged to introduce such duplicating mechanisms at the level of DOM-tree generation.

Special attention should be paid to a hidden architectural conflict in the current rules. The framework requires hard sticky positioning of table headers to retain context.[4] At the same time, WCAG criterion 2.4.11 (Focus Not Obscured) strictly prohibits a situation in which a keyboard-focused element ends up covered by floating or sticky content.[38] If the AI simply applies `position: sticky` to the header, keyboard focus will inevitably end up underneath it during scrolling. Resolving this conflict requires the AI to mandatorily apply the `scroll-margin-top` property to all focusable containers, guaranteeing their visibility.[39]

### Cognitive Adaptation and W3C COGA Patterns

The W3C COGA document defines 8 fundamental objectives of cognitive accessibility.[36] The research completely misses Objective 3: "Use Clear and Understandable Content." This directive requires a categorical refusal of double negatives and complex syntactic nesting.[42] Artificial intelligence, by its nature, often generates complex dialog windows (for example, "Uncheck the box if you do not want to opt out of the mailing list"). The system prompt must contain a hard pattern of linguistic validation, obliging the use of only straightforward affirmative statements.[42]

Objective 5: "Help Users Focus" requires shielding the user from unexpected interruptions.[36] The AI must avoid designing interfaces with auto-refreshing data blocks that cause layout shifting at the moment the user is performing a critical task. Any animations and banners must be under user control, which is especially important for people with attention deficit hyperactivity disorder (ADHD).[36]

Additionally, introducing criterion 3.2.6 (Consistent Help) requires that help elements (links to FAQs, documentation, or contact information) always be located in the same physical place in the interface on all pages.[38] When generating complex configurators, the AI must automatically inject a global help pattern, without forcing the user to search for support when difficulties arise.

## Architectural Patterns of Interaction and Data Handling

Psychological and cognitive laws must integrate seamlessly with the physical architecture of client-server interaction. Version 4.0 of the framework successfully introduces Postel's Law and the Doherty Threshold, but their practical implementation requires extension.

Postel's Law, which requires being liberal in accepting information and strict in sending it, is a fundamental rule of system robustness.[24] In the context of AI interface generation this means the model must design front-end components with advanced data-normalization logic. The user must not receive a validation error for an accidentally entered space in a credit card number or for using hyphens in a phone number. The AI must generate code that intercepts these imperfections, cleans the string (using `trim()` functions, regular expressions to remove special characters), and sends perfectly structured JSON to the back end.[4] Validation errors must arise only on a fundamental violation of logic, not of format.

The Doherty Threshold states that system response time must not exceed 400 milliseconds in order to preserve the user's flow state.[24] Rule UX-DOH-01 proposes using the Optimistic UI pattern (optimistic interface updating) in order to instantly display the result of an action before receiving a response from the server.[4] Nevertheless, without hard architectural constraints this pattern turns into a critical vulnerability. If the AI applies optimistic updating to a destructive process (for example, a financial transaction or an irreversible database deletion), and the server rejects the request, the element will suddenly return to the screen with an error. This causes cognitive dissonance, destroys trust in the system, and grossly violates the Aesthetic-Usability Effect.[27] The system prompt is obliged to strictly demarcate the application of Optimistic UI: it is permitted only for reversible, low-risk micro-interactions (likes, adding to favorites, toggling safe statuses). For any critical or destructive actions the AI must rely on visualizing system status (UX-STAT-01) through skeletons or local loaders, honestly informing the user about the waiting process.[4]

Tesler's Law (the Law of Conservation of Complexity) asserts that every system possesses an irreducible level of complexity that cannot be eliminated but can be relocated.[24] The complexity must be shifted from the user onto the system.[4] When designing data-loading flows or API configuration, the AI architect must generate smart defaults, autofill algorithms, and automatic parsing of incoming strings, requiring only the minimum necessary participation from the user.

## Information Density and Conflicts Between UX Laws

In complex enterprise and SaaS products, psychological principles often come into mathematical contradiction. A vivid example is the conflict between the principle of maximizing the Data-Ink Ratio (Edward Tufte)[21] and Hick's Law.[19]

Tufte's principle calls for removing any decorative elements, table borders, and alternating row backgrounds ("zebra striping") in order to clear the visual channel for transmitting raw data.[4] However, when the information density of a table increases (for example, more than 10–15 columns of analytical metrics), the complete absence of horizontal separators means the human eye physically loses the ability to hold the row while scanning from left to right. Hick's Law and limited working memory impede rapid processing of such an unstructured matrix.[5]

To eliminate this conflict, the AI must possess an algorithm for the contextual assessment of data density. If the table contains a limited number of columns, strict negative space (whitespace) applies. If, however, the data density exceeds the cognitive scanning threshold, the AI is obliged to introduce ultra-thin horizontal separators (borders) or interactive row-hover highlighting.[25] This restores the structural integrity of the matrix without a return to aggressive visual noise.

In parallel with this, the Von Restorff effect (the isolation principle) warns against the excessive use of visual accents.[24] The AI architect is often inclined to highlight every active element with a bright color, which leads to an accent-blindness effect: when everything on screen screams importance, no element attracts attention. The isolation rule must mathematically limit the number of primary accents (primary CTAs) to one per screen area, forcing the model to use muted colors, outlines, or altered font weight for secondary and tertiary actions.[4]

## Conclusion

The audit of the AI Architect Blueprint demonstrates outstanding potential for algorithmizing user experience. The integration of Kahneman's lazy-thinking principles, the serial-position effect, and the Zeigarnik effect lays a powerful foundation for generating conversion-oriented and ergonomic interfaces. The transition to hard directives in version 4.0 substantially reduces the risk of abstract or ineffective design decisions.

However, to attain the status of a flawless industry standard, the framework requires strategic modernization. The format of the system prompts must be migrated to strict XML tagging and positive directives that eliminate the cognitive failure of language models when processing prohibitions. Integrating content-design patterns from Shopify Polaris and the anatomical precision of IBM Carbon will ensure the semantic density of the generated code.

Introducing the missing Gestalt principles (Prägnanz, similarity, uniform connectedness) and the laws of behavioral economy (goal gradient, Pareto principle, Occam's Razor) will endow the AI with the ability to manage macro-architecture and visual hierarchy. Finally, uncompromising integration of the extended cognitive-accessibility standards W3C COGA and WCAG 2.2 — in particular, protecting keyboard focus under fixed positioning, eliminating redundant entry, and preventing focus-destroying interruptions — will guarantee that the generated interfaces are absolutely inclusive, fault-tolerant, and ergonomic for a global audience.

## Appendix: Updated Meta-Framework and Rule Base (Version 5.0)

On the basis of the gap analysis conducted, we have completely updated the rule architecture to Version 5.0. To prevent context loss, ensure flawless parsing by large language models, and guarantee deterministic output, every rule document is now REQUIRED to follow a 6-part structure wrapped in semantic XML tags:[6]

- **YAML metadata (front-matter):** tracking of variables, scope of application, and status.
- `<executive_summary>`: a brief description of the operational impact (1–2 sentences).
- `<scientific_foundation>`: the scientific theory underlying the rule, including key authors.[6]
- `<triggers>`: the precise DOM tags or user-journey scenarios that activate the rule.
- `<directives>`: fully paired, mutually exclusive binary requirements:[6]
  - 🟢 **MANDATORY (DO):** actions and patterns that must be generated.
  - 🔴 **FORBIDDEN (DON'T):** prohibited layouts, with mandatory indication of the positive alternative, to avoid errors in the model's processing of negations.
- `<implementation_schema>`: an interactive ASCII representation of the structure, mapping layout coordinates and design tokens.[13]
- `<few_shot_examples>`: explicit, contrasting XML code blocks demonstrating the faulty UI alongside the correct solution.[6]
- `<self_reflection>`: a mandatory checklist question for the AI's internal validation loop before generating the final answer.

### Newly Integrated Laws (Expansion to 30 Rules)

Beyond the format update, new principles were added to the Version 5.0 base, covering the blind spots of previous iterations:

- **Gestalt psychology:** the rules of Similarity, Closure, Prägnanz, and Uniform Connectedness guarantee the predictability of macro-architecture and the elimination of visual chaos.[24]
- **Cognitive inclusivity (WCAG 2.2 and COGA):** the prohibition on Redundant Entry, mandatory alternatives to complex Dragging Movements, and protection of focus indicators.[37]
- **Behavioral economy:** the Goal-Gradient Effect for accelerating conversions, the Pareto principle (80/20) for interface prioritization, and also Occam's Razor and Parkinson's Law for minimizing superfluous elements.[24]
- **Fault tolerance:** Postel's Law (the Robustness Principle) for forgiving user input errors, the Doherty Threshold for lightning-fast feedback through optimistic UI, and Tesler's Law (Conservation of Complexity) for hiding system complexity from the end user.[26]

## Works cited

1. AI_System_Rules_Blueprint_v1.pdf, uploaded:AI_System_Rules_Blueprint_v1.pdf
2. AI_System_Rules_Blueprint_v2.pdf, uploaded:AI_System_Rules_Blueprint_v2.pdf
3. AI_System_Rules_Blueprint_v3.pdf, uploaded:AI_System_Rules_Blueprint_v3.pdf
4. unknown_url
5. 00_Meta_Framework_Blueprint.md, uploaded:00_Meta_Framework_Blueprint.md
6. Prompting best practices - Claude Platform Docs, https://platform.claude.com/docs/en/build-with-claude/prompt-engineering/claude-prompting-best-practices
7. System Prompt Design: 9 Patterns for Production LLMs (2026) - PE Collective, https://pecollective.com/blog/system-prompt-design-guide/
8. Overview of prompting strategies | Gemini Enterprise Agent Platform, https://docs.cloud.google.com/gemini-enterprise-agent-platform/models/prompts/prompt-design-strategies
9. Documenting Your Design System: Best Practices - Magic Patterns, https://www.magicpatterns.com/blog/design-system-documentation
10. Best practices for integrating content design in your design system - Backlight.dev, https://backlight.dev/blog/best-practices-for-integrating-content-design-in-your-design-system
11. 03_UX_KAHN_02_Loss_Aversion.md, uploaded:03_UX_KAHN_02_Loss_Aversion.md
12. Forms - Carbon Design System, https://carbondesignsystem.com/patterns/forms-pattern/
13. Form - Carbon Design System, https://carbondesignsystem.com/components/form/style/
14. 06_UX_ERR_01_Poka_Yoke.md, uploaded:06_UX_ERR_01_Poka_Yoke.md
15. 10_UX_A11Y_01_Global_Inclusivity.md, uploaded:10_UX_A11Y_01_Global_Inclusivity.md
16. 07_UX_LOC_01_Spatial_Locality.md, uploaded:07_UX_LOC_01_Spatial_Locality.md
17. Typography - Carbon Design System, https://carbondesignsystem.com/elements/typography/overview/
18. Form - Carbon Design System, https://carbondesignsystem.com/components/form/usage/
19. 04_UX_MILL_01_Choice_Management.md, uploaded:04_UX_MILL_01_Choice_Management.md
20. Discuss "page actions" on resource details layout pattern · Shopify polaris-react - GitHub, https://github.com/Shopify/polaris/discussions/8351
21. 12_UX_TUFTE_01_Data_Ink_Ratio.md, uploaded:12_UX_TUFTE_01_Data_Ink_Ratio.md
22. 01_UX_KAHN_01_Lazy_Thinking.md, uploaded:01_UX_KAHN_01_Lazy_Thinking.md
23. 02_UX_ZEIG_01_Zeigarnik_Effect.md, uploaded:02_UX_ZEIG_01_Zeigarnik_Effect.md
24. Laws of UX: Home, https://lawsofux.com/
25. 31 Laws of UX and Design Principles (2026), https://www.uxness.in/2024/03/12-laws-of-ux-designing-with-principles.html
26. 19 User Experience Psychology Laws Every Designer Should Know, https://www.krueger-design.co/articles/user-experience-psychology-laws
27. laws-of-ux-skills/laws-of-ux/references/ux-laws-complete.md at main - GitHub, https://github.com/keysjoao/laws-of-ux-skills/blob/main/laws-of-ux/references/ux-laws-complete.md
28. 10 UX Laws in their Simplest Form - UXfolio Blog, https://blog.uxfol.io/ux-laws/
29. Psychology in interface design: 20 laws of UX | SDH - Software Development Hub, https://sdh.global/blog/design/psychology-in-interface-design-20-laws-of-ux/
30. What are the laws of UX? All 21 laws explained - UX Design Institute, https://www.uxdesigninstitute.com/blog/laws-of-ux/
31. UX Design Laws and Principles: 18 Rules With Examples - UX Academy, https://myuxacademy.com/blog/ux-design-laws-principles/
32. The laws of UX: 28 simple rules for better design - Nulab, https://nulab.com/learn/design-and-ux/laws-of-ux/
33. 11_UX_PROG_01_Progressive_Disclosure.md, uploaded:11_UX_PROG_01_Progressive_Disclosure.md
34. Understanding Cognitive Load in UX Design - Accessibility.com, https://www.accessibility.com/blog/understanding-cognitive-load-in-ux-design
35. Cognitive Accessibility at W3C | Web Accessibility Initiative (WAI) | W3C, https://www.w3.org/WAI/cognitive/
36. Cognitive accessibility guidelines - Accessibility and inclusive design manual, https://accessibility.education.gov.uk/guidelines/coga
37. Making Content Usable for People with Cognitive and Learning Disabilities - W3C, https://www.w3.org/TR/coga-usable/
38. WCAG 2.2 - wcag2.com, https://wcag2.com/wcag-2-2/
39. WCAG 2.2: New Success Criteria, More Inclusive Content, https://www.wcag.com/blog/wcag-2-2-aa-summary-and-checklist-for-website-owners/
40. 13_UX_MEM_01_Context_Retention.md, uploaded:13_UX_MEM_01_Context_Retention.md
41. 08_UX_STAT_01_System_Status.md, uploaded:08_UX_STAT_01_System_Status.md
42. Cognitive Accessibility Objective: Use Clear and Understandable Content - W3C, https://www.w3.org/WAI/WCAG2/supplemental/objectives/o3-clear-content/
43. Design Guide | Making Content Usable for People with Cognitive and Learning Disabilities - W3C, https://www.w3.org/TR/coga-usable/design_guide.html
