// =========================================================================
// Phi, √2 and the Plastic Ratio: 
// Irrational Proportions in Fractal Swing
// 
// Conference paper for JIAM Pirineus 2026, Puigcerdà, 26 April 2026
// Malcolm Braff — Musik-Akademie Basel / FHNW
// =========================================================================
#import "@preview/lilaq:0.4.0" as lq
#set page(paper: "a4", margin: 2.5cm)

#set text(font: "TeX Gyre Pagella", size: 11pt, lang: "en", hyphenate: true)
#set par(justify: true, leading: 0.7em, first-line-indent: 0pt)
#show heading: set block(above: 1.6em, below: 0.8em)

#align(center)[
  #text(size: 18pt, weight: "bold")[
    Phi, $sqrt(2)$ and the Plastic Ratio:\
    Irrational Swing Proportions in Fractal Swing
  ]

  #v(0.5em)

  #text(size: 12pt)[
    Malcolm Braff
  ]

  #text(size: 10pt, style: "italic")[
    Musik-Akademie Basel, FHNW University of Applied Sciences and Arts Northwestern Switzerland\
    Jazz Campus Basel\
    ORCID: 0009-0007-0699-0737
  ]

  #v(0.3em)

  #text(size: 10pt)[
    _Prepared for the VII Jornadas en investigación artística en música de los Pirineos_\
    _Puigcerdà, 26 April 2026_
  ]
]

#v(1em)

= Abstract

Swung rhythmic subdivisions have long been described in terms of their liminal character: jazz swing occupies a perceivable space between binary and ternary feels, and analogous phenomena have been documented in West African, Afro-Brazilian, and Afro-Cuban rhythmic traditions. This paper takes the bridge-like nature of swing as its theoretical starting point and proposes a systematic framework in which swing extends into higher-order, self-similar rhythmic structures. I show that when the mechanism producing a swung subdivision is iterated upon its own output, a small number of irrational proportions emerge as the only values compatible with a consistent swing character at every level of iteration. Specifically, three such proportions arise from three distinct structural constraints: $sqrt(2)$ from a binary rule that preserves mirror consistency; the golden ratio $phi.alt$ from a binary rule that propagates swing homogeneously across iteration levels; and the plastic ratio $rho$ from the corresponding ternary rule. Each proportion is the unique solution to a consistency equation internal to its rule, and not a value fitted to empirical data. The resulting phenomenon — sequences whose internal proportions replicate at every scale of observation, within the range $1<r<2$ that characterises swing — is introduced under the term _fractal swing_. I examine the properties that distinguish fractal swing as a structural category, situate the framework against existing work on fractal music and on the combinatorics of words, and close by discussing the perceptual limits that bound the depth of iteration musically accessible to a performer. The accompanying concert _Morph Congas_, for piano and live electronics, is conceived as a practical realisation of the mirror effect examined in this paper. 

#v(0.5em)

*Keywords*: swing, fractal swing, substitution rules, irrational proportions, golden ratio, plastic number, mirror effect, Sturmian words.

#pagebreak()

= 1. Introduction

This paper takes swing — the rhythmic phenomenon characteristic of jazz, but also of many African, Afro-Brazilian, and Afro-Cuban traditions — as its point of departure, and asks what happens when its generative mechanism is pushed beyond the single-level organisation in which it is usually described#footnote[
  For a critical analysis of the author's broader approach to rhythm, including its grounding in West African and Afro-Brazilian musical traditions, see @huguenin2014temperament and @dewet2017braff.
]. At one level of subdivision, swing is the familiar departure from equal durations: a duplet of long and short, with a ratio that leans somewhere between the straight 1:1 and the maximal 2:1. This local distortion has been extensively studied in the literature on microrhythm, timing, and groove, and its musical functions — groove depth, phrasing, harmonic synchronicity, tempering — have received considerable empirical and theoretical attention. What happens, however, if the mechanism that produces a swung subdivision is _iterated_ upon its own output? If the long–short pattern obtained by applying a swing rule to a pulse is itself treated as a sequence of symbols to which the same kind of rule can be applied a second time, and then a third, and so on indefinitely? The resulting phenomenon — sequences whose internal structure reproduces itself at every scale of observation, within the range $1<r<2$ that defines the domain of swing — is what I shall term _fractal swing_, and it is the subject of the present paper. 

This shift of viewpoint is not merely quantitative. A single-level swung subdivision is a finite object characterised by a position on a continuous parameter — the long–short ratio, or equivalently the swing percentage. A fractal swing structure is an infinite sequence whose local structure determines, and is determined by, its global structure; its analysis draws on the combinatorics of infinite words and on the theory of substitution morphisms and their fixed points — a body of mathematics whose application to music theory has been developed principally through work on Sturmian words and well-formed scales#footnote[See for example @noll2008sturmian, @clampittnoll2018naming, and @nollclampitt2018kaleidoscope. A survey of the relevant literature is given in Section 7 below.]. The central observation that motivates this paper is that the requirement of preserving a coherent swing through iteration — of propagating the long–short character from one level of subdivision to the next — imposes a sharp constraint on the proportions that can govern the iteration. Specifically, only certain irrational ratios can do so, and they are few in number.

The paper defends two claims. First, fractal swing constitutes a well-defined structural category. It is generated by substitution rules acting on finite alphabets of durations — typically two letters, L and S, or three letters, S, M, and L — and its asymptotic structure is governed by the fixed points of those rules under iteration, restricted to the swing domain. Three such fixed points will be shown to arise from three distinct structural constraints: $sqrt(2)$ from a binary rule preserving mirror consistency, the golden ratio $phi.alt$ from a binary rule preserving the swing character at every level, and the plastic ratio $rho$ from a ternary rule satisfying the analogous requirement. Each of these three irrational numbers encodes a specific structural property of the rhythmic object it generates, and the three together form a structured family within the space of admissible swing proportions. Second, the mechanism that generates fractal swing is the same mechanism that generates local swing. The application of unequal durations to a subdivision — what we call swing — appears in two regimes: a pointwise regime, in which the rule is applied once and the resulting long–short pattern characterises a single pulse cycle; and a recursive regime, in which the rule is applied to its own output and the resulting pattern characterises every scale of the rhythmic object simultaneously. Local and fractal swing are not two distinct phenomena connected by analogy; they are the same phenomenon observed at different levels of iteration. Among other consequences, this observation brings the _mirror effect_#footnote[
@braff2016kyma. First software implementation of the concept by the author; the process is there termed _inversion_. The reframing of the mirror effect as a substitution rule, developed in Section 2, is presented in this paper.
]

  

  
  
  known from paired subdivisions — the complementarity between a swung duplet at $x %$ and a swung triplet at $(100 - x) %$ — into direct relation with the global structure of fractal swing. Reframed in the present paper as a substitution rule, the mirror effect becomes the first and simplest case of fractal swing examined below. 

The paper proceeds in seven sections. Section 2 develops the substitution framework in its simplest form: it reframes the mirror effect as a substitution rule, examines the failure mode — the progressive clustering of longs and shorts under straightforward iteration — that motivates the central construction, and extracts from this failure the consistency condition that will recur in the following sections. Section 3 corrects the failure by introducing what I call the _swinging substitution_: a rule in which each long is replaced not by two straight shorts but by a swung pair, propagating the swing character to every level of iteration. The consistency condition of this rule selects a unique irrational proportion — the golden ratio $phi.alt$ — and the rule itself turns out to be the canonical Fibonacci morphism of the combinatorial literature on Sturmian words. Section 4 returns to $sqrt(2)$ via a second binary rule that preserves the swing character as Fibonacci does, and then extends the framework to the ternary case with a substitution rule whose consistency condition selects the plastic ratio $rho$ and whose iterated output matches a rhythmic pattern associated with Afro-Brazilian samba. Section 5 situates the resulting triad of irrational proportions as a structured family in the space of substitution rules, rather than a coincidental collection of three special numbers. Section 6 discusses the perceptual limits that bound the depth to which iteration can be carried musically: fractal swing is mathematically an infinite construction, but musically a structure realised at a finite number of iteration levels, constrained by the groove window.  Section 7 gives a definition of fractal swing as a structural category, examines the properties that follow from the definition, and reviews the position of the framework within the existing literature on fractal music, musical self-similarity, and combinatorial rhythm.  The paper closes with a brief conclusion and a transition to the concert that follows.

A word on the status of the musical examples used throughout. The substitution rules examined here produce patterns that bear recognisable resemblance to rhythmic figures found in several musical traditions — binary long–short patterns characteristic of jazz phrasing, ternary $S$-$M$-$L$ patterns audible in certain Afro-Brazilian and Afro-Cuban grooves. I will occasionally invoke such resemblances as illustration, and I will use terms such as "samba pattern" as convenient shorthand for specific ternary configurations whose surface structure matches a rhythmic figure heard in that repertoire. These invocations are not claims about the traditions themselves, nor about the provenance of the mathematical structures involved. The mathematical argument stands on its own, and the resemblances to particular traditions are observations to be treated with the same caution as any cross-cultural comparison: the present paper is a theoretical essay in rhythm, not an ethnomusicological account.

The concert that concludes the session — _Morph Congas_ #cite(<braff2020morphcongas>) for piano and live electronics, in its current updated version — is conceived as a practical realisation of the mirror effect examined in this paper.

#pagebreak()

= 2. From Swing to Substitution: The Mirror Rule

Before the substitution framework can be developed, a brief detour is needed through what is meant by _swing_ at a single level of subdivision. The argument that follows takes the local distortion of duration as its starting point and then shows that this distortion, applied across paired subdivisions, can be reread as a symbolic operation — a substitution rule. The detour serves to make this rereading visible, and to explain why the rule that emerges is not posited but extracted.

== 2.1 Swing as Time Distortion

Rather than treating swing as a shift in the positions of subdivision points along a fixed time axis, I take swing to be a distortion of time itself: "an alternation of expansion and compression" #cite(<braff2015groovebalance>), recurring at the rate of the pulse. This distortion can be made precise as a transfer function $f: [0,1] arrow.r [0,1]$ that maps absolute (clock) time to functional (musical) time. For a straight subdivision, $f$ is the identity. For a swung subdivision, $f$ departs from the identity in a way that is continuous, monotonically increasing, and cyclic with the pulse. At 100% swing, for instance, the two eighth notes of a duplet $S L$ — at functional positions $0$ and $1 slash 2$ — correspond to absolute times $0$ and $1 slash 3$, so $f(1 slash 3) = 1 slash 2$.

A distortion applied to the pulse cycle does not act in isolation on the level at which it is defined. The duplet mentioned above, when subjected to $f$, acquires a swung configuration $S L$ — a short followed by a long, with $L$ twice the length of $S$. The total length of this configuration, measured in absolute units with $L = 2$ and $S = 1$, is $3$. This means that the duplet swung at 100% coincides, at the absolute-time level, with a 3-subdivision of the same pulse. The triplet emerges from the duplet by the very structure of binary words under the 2:1 ratio constraint, and this emergent triplet does not remain untouched by the distortion of the duplet. It is subjected to a paired, structurally coupled distortion: a function $g$ whose action on the triplet is complementary to the action of $f$ on the duplet — indeed, on a simple reading, $g = f^(-1)$.


#include "plots/transfer.typ"


The two figures are swung with _opposite_ swing amounts. When for example a duplet is swung at high percentages, the triplet emergent from it will be swung at low percentages, mirrored from $100 - x$: the two subdivisions are coupled by an inversion of their respective swing percentages#footnote[
  We notate the swing type by adding a secondary notation layer above the subdivision structure of the beat. In this added layer, longs are represented by a quaver (eighth note) and shorts by a semiquaver (sixteenth note). The amount of swing is indicated as a percentage, where 0% corresponds to the straight subdivision and 100% to the fully swung subdivision with a 2:1 long–short ratio (hence the quaver vs. semiquaver notation)
]. 

#figure(
  image("Figures/mirror2.png"),
)

The decisive property of this pairing is not any particular value of swing at which the two subdivisions meet, but the persistence of rhythmic synchronicity across the entire morphing range: at every swing percentage in the range $0% <= x <= 100%$, the two layers align at a shared set of onsets, and their coupled distortion preserves a coherent perceptual relation. Moreover, the two swings carry opposite weight distributions within the beat cycle, a quality I have termed _GrooveBalance_ #cite(<braff2015groovebalance>). This property of sustained synchronicity under paired swing, exemplified here by the duplet/triplet case, is the _mirror effect_ #cite(<braff2016kyma>), and it is the empirical phenomenon to which the substitution framework of this section gives a symbolic reading.
// TODO-FIGURE: Reuse from Hamburg slides — the figure showing the duplet at 0% 
// paired with the triplet at 100%, and the duplet at 100% paired with the 
// triplet at 0%, with the morphing arrows. (Slide 9 of the Hamburg deck.)

== 2.2 The Mirror as a Substitution Rule

The mirror effect, read symbolically, is a rule that takes one binary word to another. Consider the duplet swung at 100% — the word $S L$, of total absolute length $3$. The triplet inscribed in the same pulse, swung to its mirror position, is the word $L S S$, of total absolute length $4$#footnote[The asymmetry of absolute lengths — $3$ for the duplet, $4$ for the triplet — reflects the fact that the duplet at 100% swing coincides at the absolute-time level with a 3-subdivision, while the mirrored triplet at its 100% position (i.e. 0% in mirror reading) coincides with a 4-subdivision. The two words are paired not by equal length but by structural correspondence under the coupling of $f$ and $g$.]. The two words share their onsets at three points: the beginning of the pulse, the internal boundary where the short of the duplet meets the long, and the end of the pulse. The swinging of each layer is tied structurally to the swinging of the other through the coupling of $f$ and $g$. Read letter by letter, the correspondence between $S L$ and $L S S$ is the rule

$
S arrow.r L, quad L arrow.r S S.
$

This rule is not posited; it is the symbolic notation of the mirror effect, now written as an operation that takes one word to another. Applied to $S L$, it produces $L dot S S = L S S$, precisely the mirror-swung triplet.

// TODO-FIGURE: Reuse from Hamburg slides — the figure displaying the rule 
// L → SS, S → L with the corresponding swung pattern visualisation. 
// (Slide 26 of the Hamburg deck.)

== 2.3 Iteration and the Failure of the Mirror

Having extracted the rule, the natural question is whether it can be _iterated_ — whether applying it again and again to its own output produces a coherent infinite structure, a case of fractal swing in the sense outlined in the introduction.  The answer is negative, and the failure is immediately visible. Iterating the rule starting from $L S$ produces a sequence of words n which the letters bunch together, all the $L$s on one side and all the $S$s on the other:

#v(10pt)
#figure(
  grid(
    columns: (1fr, 1fr),
    row-gutter: 1em,
    column-gutter: 1em,
    align: (right + horizon, left + horizon),
    
    image("Fichier 2.png", width: 12%),
    [$L S$],
    
    image("Fichier 1.png", width: 16%),
    [$S S L$],
    
    image("Fichier 3.png", width: 18%),
    [$L L S S$],
    
    image("Fichier 4.png", width: 30%),
    [$S S S S L L$],
  ),
  caption: [Clustering with the mirror substitution rule],
) <fig:mon-tableau>
#v(10pt)

The word $S S S S L L$ is not a rhythm in any meaningful sense; it is a block of four compressed pulses followed by a block of two expanded pulses, with no interleaving whatsoever. The rule has no mechanism for mixing the two letters within a single substitution step: wherever there is an $L$, it becomes $S S$ — a cluster of two identical shorts; wherever there is an $S$, it becomes $L$ — a single long, which will itself cluster at the next iteration. Structurally, the rule operates with only two states, and the iteration is a permanent oscillation between them.



A second observation deserves mention before the diagnosis closes. In absolute units with $L = 2$ and $S = 1$, the successive words $L S, S S L, L L S S, S S S S L L, dots$ have lengths $3, 4, 6, 8, 12, 16, dots$, with consecutive ratios alternating strictly between $3:2$ and $4:3$. The iteration confines itself to the Pythagorean region of rhythmic proportion — octaves, fifths, fourths — and never accesses any ratio involving higher primes. The mirror rule shares this harmonic impoverishment with the elementary substitution $L arrow.r L L$, $S arrow.r S S$ that generates the nested doublings of the Western note-value system. Both rules preserve inequality (for the mirror) or equality (for the elementary substitution) at every level, but neither escapes a narrow harmonic corridor. The mirror is one step above the elementary substitution — it does introduce inequality — but the step is small.

The failure to interleave has a precise theoretical reading. In the well-formedness framework developed by @london2012hearing, a non-isochronous metric cycle is perceivable as a coherent meter only if its long and short elements satisfy a principle of _maximal evenness_ — the requirement that the two pulse classes be distributed as uniformly as possible across the cycle. The iterates of the mirror rule progressively violate this constraint: words like $S S L L$, $L L S S S S$, and $S S S S L L L L$ move monotonically away from maximal evenness, concentrating each letter class into clustered blocks rather than distributing them. On London's account, such a rhythmic structure cannot support metric perception, and the aesthetic inertness identified above has a structural correlate in the theory of non-isochronous meter. The mirror rule, in this sense, does not simply produce unmusical results; it produces sequences that fall below the threshold of metric well-formedness after a bounded number of iterations.

This clustering can be made precise through an informal notion of _entropy_: the degree to which the two letters are interleaved across the word. A word with alternating letters, such as $S L S L dots$, has maximal entropy; a word with all shorts preceding all longs has minimal entropy. The iterations of the mirror rule drive the entropy of their output monotonically toward its minimum.

== 2.4 The Consistency Condition

The diagnosis of the mirror's failure is sobering, but it is also structurally productive. The mirror rule is musically perfect at a single level: it generates the swung triplet from the swung duplet and preserves synchronicity across the entire morphing range. It satisfies a structural requirement that I shall call the _consistency condition_: the requirement that the long-to-short ratio $r = L slash S$ be preserved by a single application of the rule. For the mirror rule, this condition reads $r = 2 slash r$, with positive solution

$
r = sqrt(2).
$

The irrational proportion $sqrt(2)$ emerges, then, from the mirror rule itself, as the unique ratio for which one application of the substitution preserves the long-to-short proportion. It corresponds, in functional terms, to the 50% swing position: the meantone of the rhythmic continuum, the balanced midpoint between the straight 1:1 and the maximal 2:1#footnote[The identification of $sqrt(2)$ with the 50% swing position depends on the logarithmic mapping between linear swing percentage and ratio: $"swing" % = log_2(r) times 100 %$. This mapping is consistent with the Weber–Fechner law of logarithmic perception. See @huguenin2014temperament for a development of the tempering analogy between rhythmic swing and pitch tempering.]. The rule and the proportion are two readings of the same structural fact.

But the rule, iterated, does not _manifest_ this proportion in the distribution of its output. The words it produces have the right asymptotic counts of $L$s and $S$s, but the letters are clustered rather than interleaved. The mirror rule has the right ratio but not the right distribution. It is not, in the sense to be developed below, a rule that generates fractal swing. Iterated, it collapses into clustered blocks whose internal structure is harmonically poor and rhythmically inert.

If the programme outlined in the introduction is to succeed — a substitution rule that preserves the swing feel under indefinite iteration, producing genuine fractal swing at every scale — a different rule is needed. One that breaks out of the harmonic neighbourhood to which the mirror is confined, and whose consistency condition selects an irrational ratio with the structural depth to govern indefinite subdivision. What such a rule must look like, and what irrational proportion emerges from it, is the subject of the next section.


#pagebreak()

= 3. The Swinging Substitution and the Golden Ratio

The mirror rule of Section 2 produced an irrational proportion — $sqrt(2)$ — but in the wrong register: the rule satisfied the consistency condition at the level of counts, yet drove the distribution of letters away from the uniformity required for metric well-formedness. The present section corrects this defect. It introduces a variant of the mirror substitution whose replacement words are themselves swung patterns rather than blocks of identical letters, and examines what follows from this modification. The consistency condition of the modified rule selects a different irrational proportion — the golden ratio — and the rule turns out to coincide with the canonical Fibonacci morphism of the combinatorial literature on Sturmian words.The section closes by showing that the emergence of Fibonacci from a swing-consistency requirement is not accidental: the property of preserving swing at every level of iteration is equivalent, for binary substitution rules, to the property of producing a Sturmian word, which is in turn equivalent to satisfying London's maximal evenness constraint across every finite iteration.

== 3.1 Swinging the Split

The defect of the mirror rule has a clear diagnosis. The rule $L arrow.r S S$ replaces each long by a cluster of two identical shorts. Between those two shorts, there is no swing: the subdivision that emerges at the next level is straight, not swung. The mirror preserves the ratio $L slash S = sqrt(2)$ across one application, but does so by replacing swung content with non-swung content, and the defect compounds with each iteration until only clusters remain.

This slip is a conceptual lapse: a residue of the habitual reflex by which the Western notation system treats subdivision as bisection into equal parts. In the framework of the present paper, however, the object of study is precisely the swing — the unequal subdivision. A subdivision must be swung by default; a straight split is not a neutral baseline but a departure from the domain being explored. The remedy is to replace each long not by two equal shorts but by a swung pair — a long followed by a short. The modified rule reads:

$
L arrow.r L S, quad S arrow.r L.
$

In the new rule, each long resolves into a swung duplet — a long followed by a short — and each short advances to the role of a long at the next level. The substitution carries the swing forward at every application: wherever a long appears in the word, the next iteration replaces it with a local $L S$ pair that is itself a swung duplet in miniature. The straight cluster $S S$ that characterised the mirror's output never appears. The rule swings its own splits.

== 3.2 The Fibonacci Substitution

Applied to the seed $L$, the modified rule produces the sequence:

$
L arrow.r L S arrow.r L S L arrow.r L S L L S arrow.r L S L L S L S L arrow.r L S L L S L S L L S L L S arrow.r dots
$

Two observations. First, the lengths of successive words form the sequence $1, 2, 3, 5, 8, 13, 21, dots$ — the Fibonacci numbers — with ratios $2 slash 1, 3 slash 2, 5 slash 3, 8 slash 5, 13 slash 8, dots$ converging to the golden ratio. Second, the letters interleave rather than cluster: at every iteration, longs and shorts alternate in a pattern that remains rhythmically alive, with no long block of identical letters forming as the word grows. The contrast with the mirror rule is immediate: where the mirror drove its output toward the extreme configuration $S S S S L L L L$, the Fibonacci rule produces an infinite word whose finite prefixes remain interleaved at every scale.

// TODO-FIGURE: Reuse from Hamburg slides — the figure "Iterating the Swinging 
// Substitution" showing Steps 0 through 4 with musical notation (duplet, 
// triplet, quintuplet, octuplet, 13-tuplet) paired with L/S block 
// representation and the caption on Fibonacci-sequence word lengths. 
// (Slide 37 or later of the Hamburg deck.)

Under the identification $L arrow.r a$, $S arrow.r b$, this rule is the canonical Fibonacci morphism $a arrow.r a b$, $b arrow.r a$ of the combinatorial literature on words @noll2008sturmian. The infinite word it generates from the seed $a$ is the Fibonacci word — the paradigmatic example of a Sturmian word, the best-studied class of aperiodic binary sequences in combinatorics on words. The identification of the swing-preserving substitution with the Fibonacci morphism is not a structural coincidence but a formal identity: any binary substitution rule that preserves the inequality $L > S$ and replaces each long by a swung pair $L S$ and each short by a single long is, letter for letter, the Fibonacci morphism.

== 3.3 The Consistency Condition: The Golden Ratio

The same structural reasoning that yielded $sqrt(2)$ for the mirror rule applies here. For the modified rule to generate a consistent swing at every level of iteration, the long-to-short ratio $r = L slash S$ must be preserved by a single application of the rule. Applied to $L$ and $S$ individually: the rule replaces $L$ by $L S$, of total absolute length $L + S$; and replaces $S$ by $L$, of absolute length $L$. For the ratio between these two new durations to equal the original ratio $r$, the equation

$
r = (L + S) slash L = 1 + 1 slash r
$

must hold. Rearranging gives $r^2 = r + 1$, whose positive solution is

$
r = phi.alt = (1 + sqrt(5)) slash 2 approx 1.618.
$

The golden ratio emerges from the swinging substitution as $sqrt(2)$ emerged from the mirror: as the unique irrational proportion that satisfies the rule's consistency condition. It is not an empirical value, nor a limit reached asymptotically, but a structural constant imposed by the requirement of self-similar swing across iteration. The rule and the proportion are two readings of the same structural fact.

Translated onto the logarithmic swing axis established in Section 2.4, the golden ratio sits at $log_2(phi.alt) approx 0.694$, or approximately 69.4% swing — a determinate position between the 50% meantone ($sqrt(2)$) and the 100% maximum.

// TODO-FIGURE: A simple number-line or curve showing the three ratio 
// positions in the logarithmic swing range: $sqrt(2)$ at 50% (the mirror), 
// $phi.alt$ at 69.4% (the Fibonacci swing), and, looking ahead, the position 
// of the plastic ratio $rho$ at $log_2(rho) approx 0.405$ or approximately 
// 40.5% (the ternary case, Section 4). Adaptable from the relevant Hamburg 
// slides.

== 3.4 Maximal Evenness and Sturmian Words

The contrast with the mirror rule extends beyond the distribution of letters at a few finite steps. It is a theorem of combinatorics on words that the Fibonacci word has _maximal entropy_ among all infinite binary sequences generated by primitive substitution rules: its letters are distributed as evenly as possible, subject to the constraint of aperiodicity. Equivalently, the Fibonacci word is _Sturmian_ — it satisfies a precise uniformity property that makes it the paradigm of even distribution on a two-letter alphabet @berthe2008christoffel.

The connection with the well-formedness framework of Section 2.3 is direct. London's maximal evenness constraint requires the long and short elements of a non-isochronous metric cycle to be distributed as uniformly as possible across the cycle. For binary words, the class of sequences that satisfy this constraint at every length coincides exactly with the Sturmian class @clampittnoll2018naming @nollclampitt2018kaleidoscope. The Fibonacci rule is precisely the substitution that generates a Sturmian infinite word as the fixed point of its iteration. Therefore, where the mirror rule violates London's constraint after a bounded number of iterations, the Fibonacci rule satisfies it at every finite prefix and in the infinite limit.

Three conclusions follow. First, the Fibonacci rule is not merely an improvement over the mirror in the specific sense of avoiding clusters. Among binary rules with the simplest possible substitution for $S$ — a single letter, $S arrow.r L$ — Fibonacci is the unique rule that preserves maximal evenness under iteration. Whether other binary rules with longer replacements can also preserve evenness while selecting different proportions is the question of the next section. Second, the irrational proportion $phi.alt$ is not arbitrary: it is the unique ratio compatible with the evenness requirement on a binary alphabet, given the constraint just stated. Third — and this is the structural claim of this paper — the coincidence between the Fibonacci rule of combinatorics on words, the golden-ratio proportion, and the principle of metric well-formedness is not a coincidence. The three are equivalent formulations of a single structural fact: the Fibonacci rule, the golden-ratio proportion, and the combinatorial maximal-evenness criterion coincide.

The swinging substitution is therefore the first genuine case of fractal swing established in this paper. It preserves the swing at every level of iteration; it satisfies a consistency condition that selects a unique irrational proportion; it produces an infinite word of maximal evenness; and it occupies a harmonic neighbourhood distinct from the Pythagorean region in which the mirror is confined. Whether it is the only such rule on the binary alphabet — or whether other binary substitution rules satisfying analogous consistency conditions can be found, with what irrational proportions they would select — is the question of the next section.








#pagebreak()

= 4. A Second Binary Rule for √2, and the Ternary Case

The Fibonacci rule of Section 3 was introduced as a correction to the mirror: where the mirror failed to propagate the swing beyond one level of iteration, the swinging substitution passed the swing character forward indefinitely, and its consistency condition selected the golden ratio $phi.alt$. Section 3 closed with a question: whether other binary rules, with longer replacements than the minimal $S arrow.r L$, could also preserve the swing and select different irrational proportions. The present section answers this question in two steps. First, it shows that a second binary rule exists, grounded in the proportion $sqrt(2)$ already associated with the mirror, but producing that proportion in the correct distributional register — with a self-similar swung structure at every level of iteration. Second, it extends the substitution framework from binary to ternary alphabets, and shows that a ternary swinging substitution exists whose consistency condition selects the plastic ratio $rho$ — an irrational proportion whose iterated output coincides, under a suitable reading, with a well-known rhythmic pattern of Afro-Brazilian samba.

== 4.1 A Second Binary Rule for √2

The mirror rule produced the ratio $sqrt(2)$, but in the wrong register: the iterations clustered, the swing character dissolved from one level to the next, and the proportion was preserved only as an asymptotic count of letters, not as a property of the rhythmic object at every scale. The Fibonacci rule of the preceding section escaped this fate by swinging its subdivisions — ensuring that the swing character propagated through every level of iteration. The question of Section 3 was whether the same manoeuvre could be applied to the mirror: is there a binary rule, still grounded in the ratio $sqrt(2)$, that preserves the swing character under iteration as Fibonacci does for $phi.alt$?

The answer is yes, and the rule is:

$
S arrow.r S L, quad L arrow.r S S L.
$

This rule differs from the mirror in the same way that Fibonacci differs from the elementary substitution: each replacement word is itself a swung pattern, not a block of identical letters. A short resolves into a swung duplet $S L$; a long resolves into a swung triplet $S S L$. The swing does not stop at one level; it descends through the hierarchy, carrying the ratio forward at every iteration.

The consistency condition is established as before. Applied to $L$, the rule produces $S S L$, of total length $2 S + L$; applied to $S$, it produces $S L$, of total length $S + L$. For the ratio between these two new durations to equal the original ratio $r = L slash S$, we require $(2 S + L) slash (S + L) = r$. Rearranging — with $L = r S$ — gives $r^2 = 2$, whose positive solution is once again

$
r = sqrt(2).
$

// TODO-FIGURE: First iterations of the rule $S arrow.r S L, L arrow.r S S L$ 
// in musical notation or L/S block form, starting from $L$: L → SSL → 
// SL SL SSL → SSL SL SL SL SL SSL → ..., showing the interleaving character 
// at each level. Adaptable from the corresponding Hamburg slide.

The rule produces the same ratio as the mirror — $L slash S = sqrt(2)$ at every level — but it differs from it in two respects of musical significance. First, the letters interleave rather than cluster. At every iteration, shorts and longs alternate in a pattern that is rhythmically alive, not blocked. The rule satisfies the consistency condition as the mirror does, but it satisfies it in a way that respects the distribution, not merely the counting. Second, the rule inflates more aggressively: where the mirror doubled the word length at each step (with inflation factor $sqrt(2)$ between successive absolute lengths), this rule inflates by a factor of $1 + sqrt(2) approx 2.414$. Musically, the subdivisions thin out faster: to reach a given number of subdivision levels, the performer needs either a slower base tempo or a shallower recursion.

The observation that the same ratio $sqrt(2)$ admits two distinct substitution realisations — one clustering and compact, one interleaving and dense — is the first indication that the landscape of admissible swing proportions is richer than a naive one-ratio-per-rule reading would suggest. It is not enough to know which irrational a rule converges to; one must also know how it produces it, because the how determines whether the rule is iterable, whether the swing character is preserved, and whether the fractal structure survives across iteration levels.

== 4.2 Extending to Three Letters

The binary framework has carried the argument as far as it can. Two rules on the alphabet ${S, L}$ have been examined: the mirror rule, which fails to propagate the swing; and two rules that do propagate it — the Fibonacci rule selecting $phi.alt$, and the second-$sqrt(2)$ rule just established. A natural question emerges: does the framework extend beyond binary to richer alphabets, and if so, does a third irrational proportion emerge as the consistency condition of a rule on three letters?

The transition from two letters to three is not a mere formal generalisation. It introduces a new structural constraint absent from the binary case: the three durations must themselves stand in a geometric progression, with a common ratio $r$. That is, if the three letters are $S$, $M$, $L$ in increasing order of duration, then $M = r S$ and $L = r^2 S$ for some $r > 1$. This geometric requirement mirrors the single-ratio constraint of the binary case — where $L = r S$ — but imposed across two intervals rather than one. A substitution rule on ${S, M, L}$ that preserves this geometric progression across every application is the ternary analogue of the swinging substitution.

// TODO-FIGURE: Slide or figure showing the three-duration alphabet 
// $S < M < L$ with the geometric progression $M = r S$, $L = r^2 S$. 
// Adaptable from the "Three Durations: S, M, L" slide of the Hamburg deck.

Two comments on this step. First, the geometric-progression constraint is the least restrictive assumption that preserves the swing character in a ternary setting: it is the natural generalisation of the binary $L slash S = r$. Other ternary structures are conceivable — alphabets where $M$ stands in arithmetic or logarithmic rather than geometric relation to $S$ and $L$ — but they do not preserve the self-similar scaling property that makes the swing framework work. Second, the extension to three letters is not a departure from the swing domain as defined in Section 1: the common ratio $r$ remains in the interval $1 < r < 2$, since the three durations must all be distinct yet comparable at the perceptual level. The ternary case is a refinement of the binary framework, not a break from it.

== 4.3 The Samba Pattern and the Plastic Ratio

The ternary swinging substitution is:

$
S arrow.r M, quad M arrow.r L, quad L arrow.r S M.
$

Applied to the seed $L$, the rule produces the sequence:

$
L arrow.r S M arrow.r M L arrow.r L S M arrow.r S M L S M arrow.r M L S M L S M arrow.r dots
$

Two observations parallel to the binary case. First, each replacement word is a swung pattern in the three-letter alphabet — $L$ resolves into the pair $S M$, a miniature swung duplet on the subscale $S M$; $M$ advances to $L$; $S$ advances to $M$. Every long becomes, at the next level, an internal swung structure, and the ternary swing propagates through every iteration. Second, the lengths of successive words follow the Padovan sequence $1, 1, 2, 2, 3, 4, 5, 7, 9, 12, dots$, defined by the recursion $P(n) = P(n-2) + P(n-3)$ — a ternary analogue of Fibonacci's $F(n) = F(n-1) + F(n-2)$.

// TODO-FIGURE: Reuse from Hamburg slides — "The Samba Pattern" figure 
// showing the iteration $L arrow.r S M$ and the derived patterns, with 
// the consistency condition $r = B/A = C/D = F/E = G/F = rho approx 1.3247$. 
// (Slides 43-53 of the Hamburg deck.)

The second iteration of the rule, starting from $L$, produces the word $M S M L$ — a ternary rhythmic pattern whose internal structure bears a striking resemblance to the _partido alto_ clave of Afro-Brazilian samba, where the subdivisions of a beat are distributed as three unequal durations in a short–medium–long progression. Without making ethnomusicological claims about the provenance of this correspondence, the pattern $M S M L$ serves throughout this paper as shorthand for the ternary configurations produced by the plastic-ratio rule — a figure whose surface structure matches a rhythmic pattern audible in that repertoire.

The consistency condition follows the binary template, adjusted for the geometric-progression constraint. The rule produces new durations whose ratios must preserve the common ratio $r$: the substitution $L arrow.r S M$ yields a new duration $S + M = S + r S = S(1 + r)$, which must bear to $L = r^2 S$ the ratio expected of the level's new long. Working out the algebra carefully — using the constraints $M = r S$ and $L = r^2 S$ together with the consistency requirement across all three substitutions — gives the cubic equation

$
r^3 = r + 1.
$

The positive real solution is the plastic ratio:

$
r = rho approx 1.3247.
$

The plastic ratio $rho$ emerges from the ternary swinging substitution as $phi.alt$ emerged from its binary counterpart: as the unique real proportion at which the rule's consistency condition is satisfied at every level of iteration. Translated onto the logarithmic swing axis, $rho$ sits at $log_2(rho) approx 0.405$, or approximately 40.5% swing — below the 50% meantone of the mirror's $sqrt(2)$, in a region of the swing continuum corresponding to relatively light, quick unequal subdivisions. The ternary rule therefore occupies a position on the swing axis distinct from both $sqrt(2)$ (50%) and $phi.alt$ (69.4%), completing the triad of irrational proportions that emerge from the framework developed in this paper.

== 4.4 The Three Irrational Proportions: First View

The three rules examined so far — Fibonacci binary, second-$sqrt(2)$ binary, and the ternary plastic — establish three distinct irrational proportions as consistency conditions of substitution rules on the swing alphabet. Viewed together, these three ratios form a structured family in the space of admissible swing proportions:

$
rho approx 1.3247 space (40.5%), quad sqrt(2) approx 1.4142 space (50%), quad phi.alt approx 1.618 space (69.4%).
$

Each ratio is the unique positive real solution of a polynomial equation of degree at most three — $r^3 = r + 1$, $r^2 = 2$, $r^2 = r + 1$ respectively — and each equation arises, not by empirical fitting or heuristic choice, but from the structural requirement that a particular substitution rule preserve its swing character across iteration. The rules are binary or ternary; the irrationals are algebraic of low degree; and the proportions they select partition the logarithmic swing axis into three positions separated by intervals that are themselves meaningful — between the plastic ratio and $sqrt(2)$, between $sqrt(2)$ and $phi.alt$.

// TODO-FIGURE: Summary diagram showing the three ratio positions on 
// the logarithmic swing axis: $rho$ at 40.5%, $sqrt(2)$ at 50%, 
// $phi.alt$ at 69.4%. The diagram can also indicate the rule that 
// selects each proportion. Adaptable from the relevant Hamburg 
// summary slide.

This structured family is the subject of Section 5. Before taking it up, however, one more observation about the second-$sqrt(2)$ rule and its relation to the mirror deserves mention. The existence of two distinct substitution rules for the same ratio $sqrt(2)$ — one clustering (the mirror) and one interleaving (the second rule introduced above) — shows that the correspondence between rules and proportions is not one-to-one. A given irrational may arise from more than one substitution, each with its own iterative behaviour. This is the first indication that the landscape of admissible rules is more intricate than a simple bijection with the irrational proportions would suggest; the structured-family view developed in the next section takes up this observation as its starting point.







#pagebreak()

#bibliography("references.bib", style: "american-anthropological-association")