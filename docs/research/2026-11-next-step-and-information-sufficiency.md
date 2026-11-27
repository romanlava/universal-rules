# Research: the clear next step and decision-sufficient information

> **Research note — supports rules UX-NEXT-01, UX-INFO-01, UX-VIZ-01 (v5.5).** Normative text
> lives in the rules; this file records the evidence, its strength, and how each finding was
> turned into a directive. Where a rule states a number, the number's origin is here.

## 1. The question

The owner's observation from real projects: in any non-promotional interface where a person has
to choose or act — a CRM above all — every screen must make it immediately clear **what to do,
what will happen, and what comes next**, and must show **enough information to decide, but no
more**. Too much data on one page and the person stops understanding what is going on.

Three sub-questions:

1. What makes the next step "clear", and what must a screen communicate to achieve it?
2. How much information can a person take in when deciding, and what happens past that point?
3. Which representation works for which task — table, chart, number, sentence?

## 2. The next step: two gulfs and three questions

| Finding | Source | Strength | Used as |
|---|---|---|---|
| Interaction fails at two gaps: the **gulf of execution** (I don't know what to do or how) and the **gulf of evaluation** (I can't tell what happened or what state I'm in). | Norman, *The Design of Everyday Things* (1988/2013); Hutchins, Hollan & Norman (1985) | Foundational theory, widely accepted | The rule's structure: every screen bridges both gulfs |
| **Feedforward** — telling the person, before they act, what an action will do — bridges the gulf of execution, as feedback bridges the gulf of evaluation. It is distinct from affordance and from feedback. | Vermeulen, Luyten, van den Hoven & Coninx, CHI 2013 | Peer-reviewed conceptual framework | "What will happen" line under the primary action |
| Situation awareness has three ascending levels: **perception** of the elements, **comprehension** of what they mean, **projection** of their near-future state; errors at a lower level propagate upward. | Endsley (1988, 1995); Endsley, Bolte & Jones (2003) | Foundational in human factors; measured with SAGAT | A screen shows state (L1), says what it means (L2), and says what happens next (L3) |
| People follow **information scent** — proximal cues (labels, headings) that predict the value and cost of a path — and abandon paths with weak scent. | Pirolli & Card, *Psychological Review* (1999) | Foundational theory, process-modelled (ACT-IF, SNIF-ACT) | Action labels name outcomes, not mechanisms |
| The first ~10 seconds of a page visit decide whether people stay; the abandonment hazard falls after that ("negative aging"). | Liu, White & Dumais, SIGIR 2010 (Weibull analysis of large-scale dwell-time logs); 10 s / 30 s thresholds are NN/g's reading of the curve | Large observational dataset, web browsing | The decision core must be graspable within one glance-and-read of ~10 s |
| Defaults are accepted overwhelmingly; a default is a decision the system makes for the person. | Johnson & Goldstein, *Science* (2003); Steffel et al. review (2016) | Strong, replicated | A recommended next step is a default — so it must show its reason and stay overridable |
| Automated recommendations produce errors of commission and omission, in experts too, and training does not remove them. | Parasuraman & Manzey, *Human Factors* (2010) | Review of many studies | Reason line + visible manual alternative |

**Synthesis.** "A clear next step" decomposes into three questions every non-promotional screen
answers without the person having to search: **Where am I and what is the state? What should I
do now? What will happen when I do it?** The first bridges the gulf of evaluation (Endsley L1–2),
the second and third bridge the gulf of execution (feedforward, Endsley L3).

## 3. How much information: the inverted U

| Finding | Source | Strength | Used as |
|---|---|---|---|
| Decision quality rises with information up to a point, then **falls** — the inverted-U of information overload — once volume exceeds processing capacity. | Eppler & Mengis, *The Information Society* (2004), review across organisation science, accounting, marketing, MIS; earlier Driver & Streufert (1969); Schroder, Driver & Streufert (1967) | Broad review; the curve is the prevailing interpretation, but its peak is task-specific | The target is *sufficiency*, not maximum completeness |
| More information raises **confidence much faster than accuracy**: football experts given more statistics became far more confident, barely more accurate. | Tsai, Klayman & Hastie, *OBHDP* 107 (2008), three studies | Peer-reviewed experiments | Extra data is not neutral: it inflates confidence in wrong decisions |
| People trade effort against accuracy and switch to simpler strategies as effort rises; the **display itself** (form, organisation, sequence) changes which strategy is feasible. | Payne, Bettman & Johnson (1988, 1993 book); "Information displays and decision processes", *Psychological Science* (1993) | Foundational, process-traced | Organise the display so the right strategy is the cheap one |
| Working memory holds about **4 chunks**; visual working memory about **4 objects** regardless of their feature count. | Cowan, *BBS* 24 (2001); Luck & Vogel, *Nature* 390 (1997); Rouder et al. (2008) converge, theory debated | Strong, replicated (exact model debated) | Decision zone: ≤ ~4 groups competing for attention |
| Search time in a display is predicted best by the **number of groups and their size** (visual angle), not by the raw amount of data; subjective clutter is driven by local density and layout complexity. | Tullis, "The formatting of alphanumeric displays", *Human Factors* 25 (1983); Tullis' display-metrics work (1984–86) | Classic, replicated in later tools | Group the facts a decision needs; count groups, not fields |
| Choice overload is **not universal**: the mean effect across 50 experiments is near zero (Scheibehenne et al. 2010), but it appears reliably when choice-set complexity, task difficulty, preference uncertainty or an effort-minimising goal are high (Chernev, Böckenholt & Goodman 2015, 99 observations). Expertise and pre-existing preferences reduce it. | Scheibehenne, Greifeneder & Todd, *JCR* (2010); Chernev et al., *JCP* 25 (2015) | Two meta-analyses, disputed with each other on the mean, aligned on the moderators | Density scales with expertise and frequency; novices and rare tasks get fewer options |
| Users read roughly **20% of the words** on an average page (upper bound 28%), at ~250 wpm; the average adult silent reading rate for non-fiction is **238 wpm**. | Nielsen (2008) from Weinreich, Obendorf, Herder & Mayer, *ACM TWeb* (2008), 25 users, 45k page views; Brysbaert, *JML* 109 (2019), 190 studies | Observational (Nielsen) + strong meta-analysis (Brysbaert) | Must-read text in a decision zone ≈ what fits in ~10 s ≈ ~40 words |
| When warnings are frequent, people override most of them: clinicians overrode drug-safety alerts in **49–96%** of cases ("alert fatigue"), important ones included. | van der Sijs, Aarts, Vulto & Berg, *JAMIA* 13 (2006) | Literature review/conceptual analysis of 17 papers | Highlight only deviations that require action |
| Process-industry alarm practice: an operator can manage under **~1 alarm per 10 minutes** in steady state; >10 per 10 minutes is a flood; an alarm must require a response. | EEMUA 191; ISA-18.2 (as reported by ASM Consortium, Emerson, ABB) | Industry standard, field benchmarks | "Every highlight has an action" rule; highlighting most items = no highlighting |
| Information **fragmented across screens** facilitated medication errors in a hospital order-entry system. | Koppel et al., *JAMA* 293 (2005), one hospital | Observational, one site | Never hide what the decision needs behind tabs or clicks |
| Novices learned faster and made fewer errors on an interface that **blocked rarely-needed functions** ("training wheels"): 21% faster task completion. | Carroll & Carrithers, *CACM* / *Human Factors* (1984), n = 12 | Small, classic, foundational for progressive disclosure | First-run and rare-task screens show less |

**Synthesis.** The goal is not "less information" but **decision-sufficient information**: every
fact the current decision needs, visible at once and grouped near the action; everything else
quieter or one disclosure away. Past sufficiency, extra data actively hurts — it lowers accuracy,
inflates confidence, and trains people to ignore highlights. The tolerable density grows with
expertise and frequency of use, and shrinks for novices and rare tasks.

## 4. Which representation for which task

| Finding | Source | Strength | Used as |
|---|---|---|---|
| **Cognitive fit**: performance improves when the representation matches the task — tables for *symbolic* tasks (precise values), graphs for *spatial* tasks (trends, comparisons, relationships). | Vessey (1991); Vessey & Galletta, *ISR* 2 (1991), 128 participants | Influential; later results mixed, including a reanalysis favouring tables for some spatial questions; people often prefer tables | Choose by task, and default to a table or text when in doubt |
| Task complexity moderates the format effect. | Speier (2006), as reported in later work | Secondary accounts only — treated as weak | Not used as a rule; noted as an open question |
| Accuracy of quantitative judgement by encoding: **position on a common scale** > position on non-aligned scales > length > angle/slope > area > volume/colour saturation. | Cleveland & McGill, *JASA* (1984); replicated and extended by Heer & Bostock, CHI 2010 (crowdsourced) | Strong, replicated (average-observer ranking) | Compare quantities with position/length (bars, dots, lines); not pies, areas, 3D |
| On unfamiliar dashboards, **big numbers** draw the first fixation about a second faster than other elements; repeated similar charts lose attention along the sequence. | Tableau eye-tracking study (2017), 10 dashboards | Weak (vendor study, small) | A single headline number for a single status; avoid rows of identical charts |
| Icon + text labels are perceived easiest and perform at least as well as text; icon-only performs worst for new users. | Wiedenbeck, *Behaviour & IT* (1999) | Peer-reviewed experiment | Status and actions carry text, icons only reinforce |
| "Compared to what?" — a quantity supports a judgement only against a reference (target, previous period, threshold, peer). | Tufte, *Envisioning Information* (1990) | Canonical principle, not an experiment | Every decision-relevant number carries its comparison |

**Synthesis.** Choose the representation from the task the person must perform with it:

| Task | Best representation |
|---|---|
| Look up or act on an exact value; few values | text or a table cell |
| Yes / no or a status | a sentence or a labelled status (text + icon + colour, never colour alone) |
| One key quantity and whether it is OK | headline number + delta + target |
| Trend over time | line chart; sparkline when many items share one view |
| Compare categories | bar / dot chart on a common baseline, sorted |
| Part-to-whole with ≤ ~3 parts | stacked bar, or plain numbers; pie only for a single dominant share |
| Many records to scan and act on | a table sorted by what needs action |

When the decision needs one value or one judgement, a sentence ("3 invoices overdue, oldest 12
days") beats any chart.

## 5. What the evidence does *not* settle

* No study found measures **how many KPIs** a dashboard should hold; the budgets in the rules are
  engineering targets derived from working-memory and grouping research, to be calibrated per
  product.
* No study found compares **one decision per screen vs a dense panel** for staff with low
  computer literacy — measure before and after.
* Cognitive-fit results are **mixed**; the representation table is a sound default, not a law.
* The choice-overload mean effect is **disputed**; the moderators are the usable part.
* The "~40 words in ~10 seconds" figure is an **inference** combining reading rate (Brysbaert 2019)
  with the dwell-time hazard (Liu et al. 2010), not a measured threshold.

## 6. Sources

* Brysbaert, M. (2019). How many words do we read per minute? *Journal of Memory and Language*, 109, 104047.
* Card, S., Moran, T., & Newell, A. (1980). The keystroke-level model. *CACM*, 23(7).
* Carroll, J. M., & Carrithers, C. (1984). Training wheels in a user interface. *CACM*, 27(8); Blocking learner error states in a training-wheels system. *Human Factors*, 26(4).
* Chernev, A., Böckenholt, U., & Goodman, J. (2015). Choice overload: A conceptual review and meta-analysis. *Journal of Consumer Psychology*, 25, 333–358.
* Cleveland, W. S., & McGill, R. (1984). Graphical perception. *JASA*, 79(387), 531–554.
* Cowan, N. (2001). The magical number 4 in short-term memory. *Behavioral and Brain Sciences*, 24, 87–185.
* EEMUA Publication 191, *Alarm systems: a guide to design, management and procurement*; ISA-18.2.
* Endsley, M. R. (1995). Toward a theory of situation awareness in dynamic systems. *Human Factors*, 37(1).
* Eppler, M. J., & Mengis, J. (2004). The concept of information overload. *The Information Society*, 20(5), 325–344.
* Heer, J., & Bostock, M. (2010). Crowdsourcing graphical perception. CHI 2010.
* Johnson, E. J., & Goldstein, D. (2003). Do defaults save lives? *Science*, 302, 1338–1339.
* Koppel, R., et al. (2005). Role of computerized physician order entry systems in facilitating medication errors. *JAMA*, 293(10).
* Liu, C., White, R. W., & Dumais, S. (2010). Understanding web browsing behaviors through Weibull analysis of dwell time. SIGIR 2010, 379–386.
* Luck, S. J., & Vogel, E. K. (1997). The capacity of visual working memory for features and conjunctions. *Nature*, 390, 279–281.
* Nielsen, J. (2008). How little do users read? NN/g, analysing Weinreich, H., Obendorf, H., Herder, E., & Mayer, M. (2008). Not quite the average. *ACM Transactions on the Web*, 2(1).
* Norman, D. A. (2013). *The Design of Everyday Things* (rev. ed.).
* Parasuraman, R., & Manzey, D. H. (2010). Complacency and bias in human use of automation. *Human Factors*, 52(3).
* Payne, J. W., Bettman, J. R., & Johnson, E. J. (1993). *The Adaptive Decision Maker*. Cambridge University Press.
* Pirolli, P., & Card, S. K. (1999). Information foraging. *Psychological Review*, 106(4), 643–675.
* Scheibehenne, B., Greifeneder, R., & Todd, P. M. (2010). Can there ever be too many options? *Journal of Consumer Research*, 37(3), 409–425.
* Tsai, C. I., Klayman, J., & Hastie, R. (2008). Effects of amount of information on judgment accuracy and confidence. *OBHDP*, 107(2), 97–105.
* Tufte, E. R. (1990). *Envisioning Information*.
* Tullis, T. S. (1983). The formatting of alphanumeric displays: A review and analysis. *Human Factors*, 25, 657–682.
* van der Sijs, H., Aarts, J., Vulto, A., & Berg, M. (2006). Overriding of drug safety alerts in computerized physician order entry. *JAMIA*, 13(2), 138–147.
* Vermeulen, J., Luyten, K., van den Hoven, E., & Coninx, K. (2013). Crossing the bridge over Norman's gulf of execution. CHI 2013, 1931–1940.
* Vessey, I., & Galletta, D. (1991). Cognitive fit: An empirical study of information acquisition. *Information Systems Research*, 2(1), 63–84.
* Wiedenbeck, S. (1999). The use of icons and labels in an end user application program. *Behaviour & Information Technology*, 18(2).
