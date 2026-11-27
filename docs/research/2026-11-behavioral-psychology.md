# Research: behavioral psychology for the next step and the decision screen

> **Research note — supports UX-CHOICE-01 and additions to UX-INFO-01 and UX-VIZ-01 (v5.6).**
> Companion to `2026-11-next-step-and-information-sufficiency.md`. Normative text lives in the
> rules; this file records the evidence, its strength, and what was deliberately rejected.

## 1. The question

Does behavioral psychology and behavioral economics add anything to "every screen gives a clear
next step and shows enough, but not too much, to decide" — beyond what cognitive psychology and
human factors already gave the base?

It does, in three places: **how to make people actually take the step** (structure, specificity,
timing), **how to make a number mean something at the moment of decision** (evaluability), and
**how to present risk and probability**. It also adds a sobering correction on effect sizes, and a
list of popular findings that should not be used.

## 2. Getting the step taken: structure beats persuasion

| Finding | Source | Strength | Used as |
|---|---|---|---|
| Helping families **complete** a complex aid form (pre-filled from tax data, done on the spot) raised application filing, college enrolment and aid received; giving the **same information alone**, without help with the form, had **no significant effect**. | Bettinger, Long, Oreopoulos & Sanbonmatsu, *QJE* 127(3) (2012), randomized field experiment with H&R Block | Strong: large field RCT | Remove or do the steps; telling people does not substitute for it |
| Across 200+ studies, interventions that change the **decision structure** (defaults, effort, option arrangement) consistently outperform interventions that change only the **description** (framing, information). | Mertens, Herberz, Hahnel & Brosch, *PNAS* (2022) | Meta-analysis; see §5 on its bias | Prefer structural changes over copy changes |
| People accept defaults overwhelmingly; switching a default changes outcomes at population scale. | Johnson & Goldstein, *Science* (2003); Steffel et al. review | Strong, replicated | A recommended next step is a default — keep it honest and overridable |
| Forming an **if–then plan** ("when X, I will do Y, at Z") adds a medium-to-large effect on goal attainment over a goal intention alone (d ≈ 0.65, 94 tests, >8,000 people); it works when the goal itself is held. | Gollwitzer (1999); Gollwitzer & Sheeran, *Adv. Exp. Soc. Psychol.* 38 (2006) | Meta-analysis | The next step names what, when and where — "Call Ana today before 17:00", not "Follow up" |
| Reminders raise follow-through when they are **specific** — they make a particular goal or expense salient; generic reminders had no significant effect. | Karlan, McConnell, Mullainathan & Zinman, *Management Science* 62(12) (2016), three field experiments | Strong: field RCTs | Prompts name the specific item and action, and arrive when the action is possible |
| What is **visible at the moment of choice** drives behavior: posting tax-inclusive prices on shelf tags cut demand ~8%, about what an equivalent price rise would do — shoppers do not account for costs that are not shown. | Chetty, Looney & Kroft, *AER* 99(4) (2009), field experiment | Strong: field experiment | Show the consequence and the full cost at the decision point, not one screen later |

**Synthesis.** The strongest behavioral lever is not persuasion but **structure**: remove the
steps on the intended path, pre-fill what can be known, make the next step a concrete if–then
action, and put the consequence where the decision is made. Copy, framing and generic prompts are
the weakest levers.

## 3. Making a number mean something

| Finding | Source | Strength | Used as |
|---|---|---|---|
| **Evaluability**: an attribute that is hard to evaluate on its own (a raw score, an unfamiliar quantity) is under-weighted when seen alone and becomes decisive only beside a comparison; easy-to-evaluate attributes win by default even when less important. | Hsee, *OBHDP* 67(3) (1996); Hsee, Loewenstein, Blount & Bazerman (1999) review; Hsee (1998) "less is better" | Strong, replicated | Hard-to-evaluate numbers get a reference *and* an evaluative label |
| **Less is more** in decision displays: with less information, people better understood the important cost and quality data and chose higher-quality options; making only the important measure easier to evaluate improved choices; a consistent "higher is better" direction improved comprehension. | Peters, Dieckmann, Dixon, Hibbard & Mertz, *Medical Care Research and Review* 64(2) (2007), three experiments | Peer-reviewed experiments | Cut low-importance data; label the important measure; keep one direction of "better" |

**Synthesis.** Showing a number with its comparison (already in UX-INFO-01) is necessary but not
sufficient: when the person cannot judge the scale, also say what the value *means* ("at risk",
"on track") and keep "better" pointing the same way across the screen. Unimportant numbers are not
harmless filler — they pull weight away from the important ones.

## 4. Presenting risk and probability

| Finding | Source | Strength | Used as |
|---|---|---|---|
| People reason far better about probabilities stated as **natural frequencies** ("3 in 100") than as percentages or conditional probabilities. | Gigerenzer & Hoffrage, *Psychological Review* 102 (1995) | Strong, replicated; benefit concentrated in more numerate people (Chapman & Liu 2009) | State risks as "N in M" |
| **Icon arrays** improved risk-comprehension accuracy for both low- and high-numeracy people, even beside transparent numbers. | Galesic, Garcia-Retamero & Gigerenzer, *Health Psychology* (2009) | Peer-reviewed experiment | For audiences of mixed numeracy, add an icon array to the number |

## 5. Correction on effect sizes — what to expect

| Finding | Source | Implication |
|---|---|---|
| Academic nudge studies report an average +8.7 percentage points; the same kind of interventions run at scale by two government nudge units (126 RCTs, 23 million people) average **+1.4 points**. Selective publication and low power explain most of the gap. | DellaVigna & Linos, *Econometrica* (2022) | Expect small effects from behavioral tweaks; they do not replace fixing the flow |
| The Mertens et al. meta-analytic mean (d ≈ 0.45) may fall close to zero after correcting for publication bias; effects are heterogeneous — some nudges work, the average is unreliable. | Maier et al., *PNAS* 119(31) (2022); Szaszi & Higney commentary | Measure each change; do not cite a generic "nudges work" effect |

**Consequence for the rule base:** behavioral levers are framed as **structure first, measure
always**. Removing a step, pre-filling, and moving the consequence to the decision point are
preferred over messages, badges and framing.

## 6. Rejected — do not ground rules in these

| Popular claim | Status | Source |
|---|---|---|
| **Ego depletion** / "willpower is a draining resource" | Multi-lab preregistered replication (23 labs, N = 2,141) found an effect close to zero | Hagger et al., *Perspectives on Psychological Science* (2016) |
| **Decision fatigue** from the "hungry judges" parole study | Likely an artifact of case ordering; panel composition misdescribed | Danziger et al. (2011); critiques by Weinshall-Margel & Shapard (2011), Glöckner (2016) |
| **Zeigarnik** memory advantage for unfinished tasks | Weak replication; the base uses Ovsiankina resumption and endowed progress instead (UX-ECON-01) | see UX-ECON-01 |
| **Choice overload** as a universal law ("fewer options always better") | Mean effect near zero; real only under specific moderators | Scheibehenne et al. (2010); Chernev et al. (2015) |
| **Scarcity / bandwidth tax** as a precise design parameter | Robustness contested (O'Donnell et al. 2021 audit vs Shah et al. reply) | Mani et al., *Science* (2013) |
| Large average **nudge effects** | Inflated by publication bias | DellaVigna & Linos (2022); Maier et al. (2022) |

## 7. Sources

* Bettinger, E. P., Long, B. T., Oreopoulos, P., & Sanbonmatsu, L. (2012). The role of application assistance and information in college decisions. *QJE*, 127(3), 1205–1242.
* Chetty, R., Looney, A., & Kroft, K. (2009). Salience and taxation: Theory and evidence. *AER*, 99(4), 1145–1177.
* DellaVigna, S., & Linos, E. (2022). RCTs to scale: Comprehensive evidence from two nudge units. *Econometrica*, 90(1), 81–116.
* Galesic, M., Garcia-Retamero, R., & Gigerenzer, G. (2009). Using icon arrays to communicate medical risks: Overcoming low numeracy. *Health Psychology*, 28(2), 210–216.
* Gigerenzer, G., & Hoffrage, U. (1995). How to improve Bayesian reasoning without instruction: Frequency formats. *Psychological Review*, 102, 684–704.
* Gollwitzer, P. M., & Sheeran, P. (2006). Implementation intentions and goal achievement: A meta-analysis. *Advances in Experimental Social Psychology*, 38, 69–119.
* Hagger, M. S., et al. (2016). A multilab preregistered replication of the ego-depletion effect. *Perspectives on Psychological Science*, 11(4), 546–573.
* Hsee, C. K. (1996). The evaluability hypothesis. *OBHDP*, 67(3), 247–257.
* Johnson, E. J., & Goldstein, D. (2003). Do defaults save lives? *Science*, 302, 1338–1339.
* Karlan, D., McConnell, M., Mullainathan, S., & Zinman, J. (2016). Getting to the top of mind: How reminders increase saving. *Management Science*, 62(12), 3393–3411.
* Maier, M., et al. (2022). No evidence for nudging after adjusting for publication bias. *PNAS*, 119(31).
* Mertens, S., Herberz, M., Hahnel, U. J. J., & Brosch, T. (2022). The effectiveness of nudging. *PNAS*, 119(1).
* Peters, E., Dieckmann, N., Dixon, A., Hibbard, J. H., & Mertz, C. K. (2007). Less is more in presenting quality information to consumers. *Medical Care Research and Review*, 64(2), 169–190.
