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
    Irrational Proportions in Fractal Swing
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

Swung rhythmic subdivisions have long been described in terms of their liminal character: jazz swing occupies a perceivable space between binary and ternary feels, and analogous phenomena have been documented in West African, Afro-Brazilian, and Afro-Cuban rhythmic traditions, among others. This paper takes the bridge-like nature of swing as its theoretical starting point and proposes a systematic framework in which swing extends into higher-order, self-similar rhythmic structures. I show that when the mechanism producing a swung subdivision is iterated upon its own output, a small number of irrational proportions emerge as the only values compatible with a consistent swing character at every level of iteration. Specifically, three such proportions arise from three substitution rules that propagate the swing character across iteration levels: the golden ratio $phi.alt$ from a binary rule with minimal replacements; $sqrt(2)$ from a binary rule with longer replacements; and the plastic ratio $rho$ from the corresponding ternary rule. Each proportion is the unique solution to a consistency equation internal to its rule, and not a value fitted to empirical data. The resulting phenomenon — sequences whose internal proportions replicate at every scale of observation, within the range $1<r<2$ that characterises swing — is introduced under the term _fractal swing_. I examine the properties that distinguish fractal swing as a structural category, discuss the perceptual limits that bound the depth of iteration musically accessible to a performer, and outline directions for future research. The accompanying concert _Morph Congas_, for piano and live electronics, is conceived as a practical realisation of the mirror effect mentioned in this paper. 

#v(0.5em)

*Keywords*: swing, fractal swing, substitution rules, irrational proportions, golden ratio, plastic number, mirror effect, Sturmian words.

#pagebreak()




#set heading(numbering: "1.1")
= Introduction <intro>

This paper takes swing — the rhythmic phenomenon characteristic of jazz, but also of many African, Afro-Brazilian, and Afro-Cuban traditions — as its point of departure, and asks what happens when its generative mechanism is pushed beyond the single-level organisation in which it is usually described. At one level of subdivision, swing is the familiar departure from equal durations: a duplet of long and short, with a ratio that leans somewhere between the straight 1:1 and the maximal 2:1. This local distortion has been extensively studied in the literature on microrhythm, timing, and groove. I have proposed elsewhere a set of theoretical concepts for articulating its musical functions — groove depth, phrasing, harmonic synchronicity, tempering — within a broader framework developed over the past two decades#footnote[
  For a critical analysis of the author's broader approach to rhythm, including its grounding in West African and Afro-Brazilian musical traditions, see @huguenin2014temperament and @dewet2017braff.
]. 
What happens, however, if the mechanism that produces a swung subdivision is _iterated_ upon its own output? If the long–short pattern obtained by applying a swing rule to a pulse is itself treated as a sequence of symbols to which the same kind of rule can be applied a second time, and then a third, and so on indefinitely? The resulting phenomenon — sequences whose internal structure reproduces itself at every scale of observation, within the range $1<r<2$ that defines the domain of swing — is what I shall term _fractal swing_, and it is the subject of the present paper. 

This shift of viewpoint is not merely quantitative. A single-level swung subdivision is a finite object characterised by a position on a continuous parameter — the long–short ratio, or equivalently the swing percentage. A fractal swing structure is an infinite sequence whose local structure determines, and is determined by, its global structure; its analysis draws on the combinatorics of infinite words and on the theory of substitution morphisms and their fixed points — a body of mathematics whose application to music theory has been developed principally through work on Sturmian words and well-formed scales#footnote[See for example @noll2008sturmian.]. 
The central observation that motivates this paper is that the requirement of preserving a coherent swing through iteration — of propagating the long–short character from one level of subdivision to the next — imposes a sharp constraint on the proportions that can govern the iteration. Specifically, only certain irrational ratios can do so, and they are few in number.

The paper defends two claims. First, fractal swing constitutes a well-defined structural category. It is generated by substitution rules acting on finite alphabets of durations — typically two letters, L and S, or three letters, S, M, and L — and its asymptotic structure is governed by the fixed points of those rules under iteration, restricted to the swing domain. Three such fixed points will be shown to arise from three distinct substitution rules, each propagating the swing character across iteration levels: the golden ratio $phi.alt$ from a binary rule with minimal replacements, $sqrt(2)$ from a binary rule with longer replacements, and the plastic ratio $rho$ from the corresponding ternary rule. Each of these three irrational numbers encodes a specific structural property of the rhythmic object it generates, and the three together form a structured family within the space of admissible swing proportions. Second, the mechanism that generates fractal swing is the same mechanism that generates local swing. The application of unequal durations to a subdivision — what we call swing — appears in two regimes: a pointwise regime, in which the rule is applied once and the resulting long–short pattern characterises a single pulse cycle; and a recursive regime, in which the rule is applied to its own output and the resulting pattern characterises every scale of the rhythmic object simultaneously. Local and fractal swing are not two distinct phenomena connected by analogy; they are the same phenomenon observed at different levels of iteration. Among other consequences, this observation brings the _mirror effect_#footnote[
@braff2016kyma. First software implementation of the mirror effect by the author; the process is there termed _inversion_. The reframing of the mirror effect as a substitution rule, developed in @mirror, is presented in this paper.
] 
known from paired subdivisions — the complementarity between a swung duplet at $x %$ and a swung triplet at $(100 - x) %$, among other pairings — into direct relation with the substitution framework of fractal swing. The mirror rule was the author's first attempt at extending swing beyond a single level of subdivision; its analysis in @mirror motivates the substitution framework but also identifies the defect that requires moving beyond the mirror itself. 

The paper proceeds in seven sections following this introduction. @mirror reframes the _mirror effect_ as a substitution rule, diagnoses its failure under iteration, and extracts the consistency condition that will structure the analysis throughout. @phi corrects this failure with a _swinging substitution_ whose consistency condition selects the golden ratio $phi.alt$ — the canonical Fibonacci morphism of the combinatorial literature on Sturmian words. @rho returns to $sqrt(2)$ via a second binary rule, then extends the framework to a ternary alphabet with a rule whose consistency condition selects the plastic ratio $rho$ and whose iterated output matches a pattern found in traditional Brazilian rhythms. @perception examines the perceptual limits that bound how deeply fractal swing can be realised in performance, and shows that these limits act as a structural selector among the substitution rules admissible in principle. Section 6 gathers these results to establish the triad ${rho, sqrt(2), phi.alt}$ as a structured family rather than a coincidental collection of three special numbers. Section 7 defines fractal swing as a structural category, outlines directions for future research, and introduces the concert _Morph Congas_ as a practical realisation of the framework. @conclusion concludes and transitions to the concert that follows.

A word on the status of the musical examples used throughout. The substitution rules examined here produce patterns that bear recognisable resemblance to rhythmic figures found in several musical traditions — binary long–short patterns characteristic of jazz phrasing, ternary $S$-$M$-$L$ patterns audible in certain African and Afro-rooted traditions. I will occasionally invoke such resemblances as illustration, and I will use terms such as "samba pattern" as convenient shorthand for specific ternary configurations whose surface structure matches a rhythmic figure heard in that repertoire. These invocations are not claims about the traditions themselves, nor about the provenance of the mathematical structures involved. The mathematical argument stands on its own, and the resemblances to particular traditions are observations to be treated with the same caution as any cross-cultural comparison: the present paper is a theoretical essay in rhythm, not an ethnomusicological account.

The concert that concludes the session — _Morph Congas_ #cite(<braff2020morphcongas>) for piano and live electronics, in its current updated version — is conceived as a practical realisation of the mirror effect examined in this paper.




= From Swing to Substitution: The Mirror Rule<mirror>

Before the substitution framework can be developed, a brief detour is needed through what is meant by _swing_ at a single level of subdivision. The argument that follows takes the local distortion of duration as its starting point and then shows that this distortion, applied across paired subdivisions, can be reread as a symbolic operation — a substitution rule. The detour serves to make this rereading visible, and to explain why the rule that emerges is not posited but extracted.

== Swing as Time Distortion 

Rather than treating swing as a shift in the positions of subdivision points along a fixed time axis, I take swing to be a distortion of time itself: "an alternation of expansion and compression" #cite(<braff2015groovebalance>), recurring at the rate of the pulse. This distortion can be made precise as a transfer function $f: [0,1] arrow.r [0,1]$ that maps absolute (clock) time to functional (musical) time. For a straight subdivision, $f$ is the identity. For a swung subdivision, $f$ departs from the identity in a way that is continuous, monotonically increasing, and cyclic with the pulse. At 100% swing, for instance, the two eighth notes of a duplet $S L$ — at functional positions $0$ and $1 slash 2$ — correspond to absolute times $0$ and $1 slash 3$, so $f(1 slash 3) = 1 slash 2$ (see @fig:transfer-functions).

A distortion applied to the pulse cycle does not act in isolation on the level at which it is defined. The duplet mentioned above, when subjected to $f$, acquires a swung configuration $S L$ — a short followed by a long, with $L$ twice the length of $S$. The total length of this configuration, measured in absolute units with $L = 2$ and $S = 1$, is $3$. This means that the duplet swung at 100% coincides, at the absolute-time level, with a 3-subdivision of the same pulse. The triplet emerges from the duplet by the very structure of binary words under the 2:1 ratio constraint, and this emergent triplet does not remain untouched by the distortion of the duplet. It is subjected to a paired, structurally coupled distortion: a function $g$ whose action on the triplet is complementary to the action of $f$ on the duplet — indeed, on a simple reading, $g = f^(-1)$:


#include "plots/transfer.typ"


The two figures below are swung with _opposite_ swing amounts. When the duplet is swung at high percentages, the triplet emergent from it will be swung at low percentages, mirrored from $100 - x$: the two subdivisions are coupled by an inversion of their respective swing percentages#footnote[
  We notate the swing type by adding a secondary notation layer above the subdivision structure of the beat. In this added layer, longs are represented by a quaver (eighth note) and shorts by a semiquaver (sixteenth note). The amount of swing is indicated as a percentage, where 0% corresponds to the straight subdivision and 100% to the fully swung subdivision with a 2:1 long–short ratio (hence the quaver vs. semiquaver notation)
]. 

#figure(
  image("Figures/mirror2.png"),
caption: [Synchronicity in mirror-paired swings]
)<fig:morphing_pair>

The two figures above are swung with _opposite_ swing amounts. When the duplet is swung at high percentages, the triplet emergent from it will be swung at low percentages, mirrored from $100 - x$: the two subdivisions are coupled by an inversion of their respective swing percentages.#footnote[
  We notate the swing type by adding a secondary notation layer above the subdivision structure of the beat. In this added layer, longs are represented by a quaver (eighth note) and shorts by a semiquaver (sixteenth note). The amount of swing is indicated as a percentage, where 0% corresponds to the straight subdivision and 100% to the fully swung subdivision with a 2:1 long–short ratio (hence the quaver vs. semiquaver notation)
] 

The decisive property of this pairing is not any particular value of swing at which the two subdivisions meet, but the persistence of rhythmic synchronicity across the entire morphing range: at every swing percentage in the range $0% <= x <= 100%$, the two layers align at a shared set of onsets, and their coupled distortion preserves a coherent perceptual relation. Moreover, the two swings carry opposite weight distributions within the beat cycle, a quality I have termed _GrooveBalance_ #cite(<huguenin2014temperament>). This property of sustained synchronicity under paired swing, exemplified here by the duplet/triplet case, is the _mirror effect_ #cite(<braff2016kyma>), and it is the empirical phenomenon to which the substitution framework of this section gives a symbolic reading.
// TODO-FIGURE: Reuse from Hamburg slides — the figure showing the duplet at 0% 
// paired with the triplet at 100%, and the duplet at 100% paired with the 
// triplet at 0%, with the morphing arrows. (Slide 9 of the Hamburg deck.)

== The Mirror as a Substitution Rule

The mirror effect, read symbolically, is a rule that takes one binary word to another. Consider the duplet swung at 100% — the word $S L$, of total absolute length $3$. The triplet inscribed in the same pulse, swung to its mirror position, is the word $L S S$, of total absolute length $4$#footnote[The asymmetry of absolute lengths — $3$ for the duplet, $4$ for the triplet — reflects the fact that the duplet at 100% swing coincides at the absolute-time level with a 3-subdivision, while the mirrored triplet at its 100% position (i.e. 0% in mirror reading) coincides with a 4-subdivision. The two words are paired not by equal length but by structural correspondence under the coupling of $f$ and $g$.]. The two words share their onsets at two points: the beginning of the pulse and the internal boundary where the long of the duplet meets the first of the triplet's shorts. The swinging of each layer is tied structurally to the swinging of the other through the coupling of $f$ and $g$. Read letter by letter, the correspondence between $S L$ and $L S S$ is the rule

$
S arrow.r L, quad L arrow.r S S.
$

This rule is not posited; it is the symbolic notation of the mirror effect, now written as an operation that takes one word to another. Applied to $S L$, it produces $L dot S S = L S S$, precisely the mirror-swung triplet.

// TODO-FIGURE: Reuse from Hamburg slides — the figure displaying the rule 
// L → SS, S → L with the corresponding swung pattern visualisation. 
// (Slide 26 of the Hamburg deck.)

== Iteration and the Failure of the Mirror<failure>

Having extracted the rule, the natural question is whether it can be _iterated_ — whether applying it again and again to its own output produces a coherent infinite structure, a case of fractal swing in the sense outlined in the introduction.  The answer is negative, and the failure is immediately visible. Iterating the rule starting from $L S$ produces a sequence of words n which the letters bunch together, all the $L$s on one side and all the $S$s on the other:

#v(10pt)
#figure(
  grid(
    columns: (1fr, 1fr),
    row-gutter: 1em,
    column-gutter: 1em,
    align: (right + horizon, left + horizon),
    
    image("Figures/fractal/2.png", width: 12%),
    [$L S$],
    
    image("Figures/fractal/mirror3.png", width: 15%),
    [$S S L$],
    
    image("Figures/fractal/mirror4.png", width: 18%),
    [$L L S S$],
    
    image("Figures/fractal/mirror6.png", width: 35%),
    [$S S S S L L$],
  ),
  caption: [Clustering with the mirror substitution rule],
) <fig:mirrorsequence>
#v(10pt)

The word $S S S S L L$ is not a swinging figure in any meaningful sense; it is a block of four compressed pulses followed by a block of two expanded pulses, with no interleaving whatsoever. The rule has no mechanism for mixing the two letters within a single substitution step: wherever there is an $L$, it becomes $S S$ — a cluster of two identical shorts; wherever there is an $S$, it becomes $L$ — a single long, which will itself cluster at the next iteration. Structurally, the rule operates with only two states, and the iteration is a permanent oscillation between them.

A second observation deserves mention before the diagnosis closes. In absolute units with $L = 2$ and $S = 1$, the successive words $L S, S S L, L L S S, S S S S L L, dots$ have lengths $2, 3, 4, 6,  dots$, with consecutive ratios alternating strictly between $3:2$ and $4:3$. The iteration confines itself to the Pythagorean region of rhythmic proportion — octaves, fifths, fourths — and never accesses any ratio involving higher primes. The mirror rule shares this harmonic impoverishment with the elementary substitution $L arrow.r L L$, $S arrow.r S S$ that generates the nested doublings of the Western note-value system. Both rules preserve inequality (for the mirror) or equality (for the elementary substitution) at every level, but neither escapes a narrow harmonic corridor. The mirror is one step above the elementary substitution — it does introduce inequality — but the step is small.

The failure to interleave has a precise theoretical reading. In the well-formedness framework developed by @london2012hearing, a non-isochronous metric cycle is perceivable as a coherent meter only if its long and short elements satisfy a principle of _maximal evenness_ — the requirement that the two pulse classes be distributed as uniformly as possible across the cycle. The iterates of the mirror rule progressively violate this constraint: words like $S S L L$, $L L S S S S$, and $S S S S L L L L$ move monotonically away from maximal evenness, concentrating each letter class into clustered blocks rather than distributing them. On London's account, such a rhythmic structure cannot support metric perception, and the aesthetic inertness identified above has a structural correlate in the theory of non-isochronous meter. The mirror rule, in this sense, does not simply produce unmusical results; it produces sequences that fall below the threshold of metric well-formedness after a bounded number of iterations.

This clustering can be made precise through an informal notion of _entropy_: the distance between the positions of the word's onsets and the positions of a straight, evenly-subdivided tuplet of the same length#footnote[
A more formal treatment of this notion of rhythmic entropy, and of its behaviour under iteration of substitution rules, is the subject of ongoing mathematical work by the author.
]. A word whose letters alternate regularly, such as $S L S L dots$, has onsets close to the canonical positions of a regular tuplet, and therefore high entropy. A word whose letters are clustered — all shorts preceding all longs, for instance — has onsets far from those canonical positions, and therefore low entropy. The iterations of the mirror rule drive the entropy of their output monotonically toward its minimum: each application pushes the onsets further from the canonical tuplet positions, until the word degenerates into two uniform blocks.

== The Consistency Condition<logarithm>

The diagnosis of the mirror's failure is sobering, but it is also structurally productive. The mirror rule is musically perfect at a single level: it generates a swung high subdivision from a lower one and preserves synchronicity across the entire morphing range. It also allows for a structural requirement that I shall call the _consistency condition_: the requirement that the long-to-short ratio $r = L slash S$ be preserved by a single application of the rule. For the mirror rule, this condition reads $r = 2 slash r$, with positive solution

$
r = sqrt(2).
$

The irrational proportion $sqrt(2)$ emerges, then, from the mirror rule itself, as the unique ratio for which one application of the substitution preserves the long-to-short proportion. It corresponds, in functional terms, to the 50% swing position: the meantone of the rhythmic continuum, the balanced midpoint between the straight 1:1 and the maximal 2:1.#footnote[The identification of $sqrt(2)$ with the 50% swing position depends on the logarithmic mapping between linear swing percentage and ratio: $"swing" % = log_2(r) times 100 %$. This mapping is consistent with the Weber–Fechner law of logarithmic perception. See @huguenin2014temperament for a development of the tempering analogy between rhythmic swing and pitch tempering.] The rule and the proportion are two readings of the same structural fact.

But the rule, iterated, does not _manifest_ this proportion in the distribution of its output. The words it produces have the right asymptotic counts of $L$s and $S$s, but the letters are clustered rather than interleaved. The mirror rule has the right ratio but not the right distribution. It is not, in the sense to be developed below, a rule that generates fractal swing. Iterated, it collapses into clustered blocks whose internal structure is harmonically poor and rhythmically inert.

If the programme outlined in the introduction is to succeed — a substitution rule that preserves the swing feel under indefinite iteration, producing genuine fractal swing at every scale — a different rule is needed. One that breaks out of the harmonic neighbourhood to which the mirror is confined, and whose consistency condition selects an irrational ratio with the structural depth to govern indefinite subdivision. What such a rule must look like, and what irrational proportion emerges from it, is the subject of the next section.






= The Swinging Substitution and the Golden Ratio <phi>

The mirror rule of @mirror produced an irrational proportion — $sqrt(2)$ — but in the wrong register: the rule satisfied the consistency condition at the level of counts, yet drove the distribution of letters away from the uniformity required for metric well-formedness. The present section corrects this defect. It introduces a variant of the mirror substitution whose replacement words are themselves swung patterns rather than blocks of identical letters, and examines what follows from this modification. The consistency condition of the modified rule selects a different irrational proportion — the golden ratio — and the rule turns out to coincide with the canonical Fibonacci morphism of the combinatorial literature on Sturmian words.The section closes by showing that the emergence of Fibonacci from a swing-consistency requirement is not accidental: the property of preserving swing at every level of iteration is equivalent, for binary substitution rules, to the property of producing a Sturmian word, which is in turn equivalent to satisfying London's maximal evenness constraint across every finite iteration.

== Swinging the Split

The defect of the mirror rule has a clear diagnosis. The rule $L arrow.r S S$ replaces each long by a cluster of two identical shorts. Between those two shorts, there is no swing: the subdivision that emerges at the next level is straight, not swung. The mirror preserves the ratio $L slash S = sqrt(2)$ across one application, but does so by replacing swung content with non-swung content, and the defect compounds with each iteration until only clusters remain.

This slip is a conceptual lapse: a residue of the habitual reflex by which the Western notation system treats subdivision as bisection into equal parts. In the framework of the present paper, however, the object of study is precisely the swing — the unequal subdivision. A subdivision must be swung by default; a straight split is not a neutral baseline but a departure from the domain being explored. The remedy is to replace each long not by two equal shorts but by a swung pair consisting of a long and a short.#footnote[
The substitution rule $L arrow.r L S$, $S arrow.r L$ and its rotation $L arrow.r S L$, $S arrow.r L$ are structurally equivalent: the two rules generate cyclic rotations of one another's infinite fixed point and share the same inflation factor, the same letter frequencies, and the same consistency condition. The same observation holds for the other rules introduced later in this paper: $L arrow.r L S$ and $L arrow.r S L$ are interchangeable in the binary case; $L arrow.r L S S$, $L arrow.r S L S$, and $L arrow.r S S L$ are three rotations of the same substitution in the second-$sqrt(2)$ case; and $L arrow.r S M$ and $L arrow.r M S$ are the two rotations of the ternary Padovan rule. Throughout this paper, one rotation is chosen arbitrarily as representative of each equivalence class; the choice of rotation is a matter of taste and has no bearing on the structural results developed here.
]  The modified rule reads:

$
L arrow.r L S "or" S L, quad S arrow.r L.
$

In the new rule, each long resolves into a swung duplet — a long followed by a short — and each short advances to the role of a long at the next level. The substitution carries the swing forward at every application: wherever a long appears in the word, the next iteration replaces it with a local $L S$ pair that is itself a swung duplet in miniature. The straight cluster $S S$ that characterised the mirror's output never appears. The rule swings its own splits.

== The Fibonacci Substitution

Applied to the seed $L$, the modified rule produces the sequence:


#v(10pt)
#figure(
  grid(
    columns: (1fr, 1fr),
    row-gutter: 1em,
    column-gutter: 1em,
    align: (right + horizon, left + horizon),
    
    image("Figures/fractal/2.png", width: 12%),
    [$L S$],
    
    image("Figures/fractal/phi3.png", width: 18%),
    [$L S L$],
    
    image("Figures/fractal/phi5.png", width: 26%),
    [$L S L L S$],
    
    image("Figures/fractal/phi8.png", width: 46%),
    [$L S L L S L S L$],
    image("Figures/fractal/phi13.png", width: 68%),
    [$L S L L S L S L L S L L S$],
  ),
  caption: [Fibonacci substitution preserves well-formedness],
) <fig:phisequence>
#v(10pt)


Two observations. First, the lengths of successive words form the sequence $1, 2, 3, 5, 8, 13, 21, dots$ — the Fibonacci numbers — with ratios $2 slash 1, 3 slash 2, 5 slash 3, 8 slash 5, 13 slash 8, dots$ converging to the golden ratio. Second, the letters interleave rather than cluster: at every iteration, longs and shorts alternate in a pattern that remains rhythmically alive, with no long block of identical letters forming as the word grows. The contrast with the mirror rule is immediate: where the mirror drove its output toward the extreme configuration $S S S S L L $, the Fibonacci rule produces an infinite word whose finite prefixes remain interleaved at every scale.


Under the identification $L arrow.r a$, $S arrow.r b$, this rule is the canonical Fibonacci morphism $a arrow.r a b$, $b arrow.r a$ of the combinatorial literature on words @noll2008sturmian.

The infinite word it generates from the seed $a$ is the Fibonacci word — the paradigmatic example of a Sturmian word, the best-studied class of aperiodic binary sequences in combinatorics on words. The identification of the swing-preserving substitution with the Fibonacci morphism is not a structural coincidence but a formal identity: any binary substitution rule that preserves the inequality $L > S$ and replaces each long by a swung pair $L S$ and each short by a single long is, letter for letter, the Fibonacci morphism.

== The Consistency Condition: The Golden Ratio

The same structural reasoning that yielded $sqrt(2)$ for the mirror rule applies here. For the modified rule to generate a consistent swing at every level of iteration, the long-to-short ratio $r = L slash S$ must be preserved by a single application of the rule. Applied to $L$ and $S$ individually: the rule replaces $L$ by $L S$, of total absolute length $L + S$; and replaces $S$ by $L$, of absolute length $L$. For the ratio between these two new durations to equal the original ratio $r$, the equation

$
r = (L + S) / L = 1 + 1 / r
$

must hold. Rearranging gives $r^2 = r + 1$, whose positive solution is

$
r = phi.alt = (1 + sqrt(5)) / 2 approx 1.618.
$

The golden ratio emerges from the swinging substitution as $sqrt(2)$ emerged from the mirror: as the unique irrational proportion that satisfies the rule's consistency condition. It is not an empirical value, nor a limit reached asymptotically, but a structural constant imposed by the requirement of self-similar swing across iteration. The rule and the proportion are two readings of the same structural fact.

Translated onto the logarithmic swing axis established in @logarithm, the golden ratio sits at $log_2(phi.alt) approx 0.694$, or approximately 69.4% swing — a determinate position between the 50% meantone ($sqrt(2)$) and the 100% maximum.

== Maximal Evenness and Sturmian Words

The contrast with the mirror rule extends beyond the distribution of letters at a few finite steps. It is a theorem of combinatorics on words that the Fibonacci word is Sturmian: it satisfies a precise uniformity property that makes it the paradigm of even distribution on a two-letter alphabet @berthe2008christoffel.

The connection with the well-formedness framework of @failure is direct. London's maximal evenness constraint requires the long and short elements of a non-isochronous metric cycle to be distributed as uniformly as possible across the cycle. For binary words, the class of sequences that satisfy this constraint at every length coincides exactly with the Sturmian class @clampittnoll2018naming. The Fibonacci rule is precisely the substitution that generates a Sturmian infinite word as the fixed point of its iteration. Therefore, where the mirror rule violates London's constraint after a bounded number of iterations, the Fibonacci rule satisfies it at every finite prefix and in the infinite limit.

Two conclusions follow. First, the Fibonacci rule is not merely an improvement over the mirror in the specific sense of avoiding clusters. It establishes a structural template for admissible substitution rules: its consistency condition selects an irrational proportion within the swing domain; each of its replacement words is itself a swung pattern rather than a cluster of identical letters; and its iterates preserve maximal evenness at every scale of iteration. Whether other binary rules — with longer replacement words — can satisfy the same combination of requirements and select different proportions is the question of the next section. Second, the irrational proportion $phi.alt$ is not arbitrary: it is the value selected by the Fibonacci rule as the unique positive real solution of its consistency condition. The triple equivalence between the Fibonacci morphism, the golden ratio, and maximal evenness is a well-established result in combinatorics on words, which the present framework inherits and brings into direct relation with the musical phenomenon of swing.

The swinging substitution is therefore the first genuine case of fractal swing established in this paper, and it occupies a harmonic neighbourhood distinct from the Pythagorean region in which the mirror was confined.







= Second Binary Rule for √2, and the Ternary Case <rho>

The Fibonacci rule of @phi was introduced as a correction to the mirror: where the mirror failed to propagate the swing beyond one level of iteration, the swinging substitution passed the swing character forward indefinitely, and its consistency condition selected the golden ratio $phi.alt$. @phi closed with a question: whether other binary rules, with longer replacements than the minimal $S arrow.r L$, could also preserve the swing and select different irrational proportions. The present section answers this question in two steps. First, it shows that a second binary rule exists, grounded in the proportion $sqrt(2)$ already associated with the mirror, but producing that proportion in the correct distributional register — with a self-similar swung structure at every level of iteration. Second, it extends the substitution framework from binary to ternary alphabets, and shows that a ternary swinging substitution exists whose consistency condition selects the plastic ratio $rho$ — an irrational proportion whose iterated output coincides, under a suitable reading, with a well-known rhythmic feel of traditional Brazilian rhythms.


== A Second Binary Rule for √2 <sqrt>

The mirror rule produced the ratio $sqrt(2)$, and produced it consistently: at every level of iteration, the long-to-short proportion remained $sqrt(2)$, as required by the consistency condition. What the mirror failed to preserve was not the proportion itself but the _distribution_ of its letters. The iterations clustered, progressively departing from maximal evenness, until the word ceased to be perceivable as a swung rhythmic structure at all. The Fibonacci rule of the preceding section escaped this fate by swinging its subdivisions — ensuring not only that the ratio was preserved at every level, but that the letters continued to interleave so that the word remained metrically well-formed. The question of @phi was whether the same manoeuvre could be applied to the mirror: is there a binary rule, still grounded in the ratio $sqrt(2)$, that preserves both the proportion and the maximal-evenness distribution under iteration?


The answer is yes, and the rule is:

$
S arrow.r S L, quad L arrow.r S S L.
$

This rule differs from the mirror in the same way that Fibonacci differs from the elementary substitution: each replacement word is itself a swung pattern, not a block of identical letters. A short resolves into a swung duplet $S L$; a long resolves into a swung triplet $S S L$. The swing does not stop at one level; it descends through the hierarchy, carrying the ratio forward at every iteration.

The consistency condition is established as before. Applied to $L$, the rule produces $S S L$, of total length $2 S + L$; applied to $S$, it produces $S L$, of total length $S + L$. 

For the ratio between these two new durations to equal the original ratio $r = L slash S$, we require $ (2 S + L) / (S + L) = r $ Rearranging with $L = r S$ gives $r^2 = 2$, whose positive solution is once again

$
r = sqrt(2)
$

The rule produces the same ratio as the mirror $L slash S = sqrt(2)$ at every level, but it differs from it in two respects of musical significance. First, the letters interleave rather than cluster. At every iteration, shorts and longs alternate in a pattern that is rhythmically alive, not blocked. The rule satisfies the consistency condition as the mirror does, but it satisfies it in a way that respects the distribution, not merely the counting. Second, the rule inflates more aggressively: where the mirror doubled the word length at each step (with inflation factor $sqrt(2)$ between successive absolute lengths), this rule inflates by a factor of $1 + sqrt(2) approx 2.414$. Musically, the subdivisions thin out faster: to reach a given number of subdivision levels, the performer needs either a slower base tempo or a shallower recursion.
#v(10pt)
#figure(
  block[
    #stack(
      dir: ttb,
      spacing: 0.6em,
      $S L$,
      $S L S L S$,
      $S L S L S S L S L S S L$,
      $S L S L S S L S L S S L S L S L S S L S L S S L S L S L S$,
    )
    #v(0.8em)
  ],
  caption: [Iterations of the second $sqrt(2)$ rule ($S arrow.r S L$, $L arrow.r S L S$) starting from the seed $S L$.],
) <fig:sqrt2sequence>

#v(10pt)

The observation that the same ratio $sqrt(2)$ admits two distinct substitution realisations — one clustering and compact, one interleaving and dense — is the first indication that the landscape of admissible swing proportions is richer than a naive one-ratio-per-rule reading would suggest. It is not enough to know which irrational a rule converges to; one must also know how it produces it, because the how determines whether the rule is iterable, whether the swing character is preserved, and whether the fractal structure survives across iteration levels.

== The Brazilian Sixteenth and the Plastic Ratio<padovan>

Certain rhythmic traditions exhibit, at the level of beat subdivision, patterns that cannot be captured by a two-letter alphabet. A well-documented example is the characteristic unequal feel applied to four-subdivisions of the beat in traditional Brazilian rhythms, which Brazilian musicians refer to simply as _swing_. Measurements reported in the ethnomusicological literature consistently model the four durations as $M S M L$ — medium, short, medium, long — with three distinct duration values rather than four @gerischer2006swingue. A theory of fractal swing restricted to binary words leaves such patterns unexplained. The present section extends the substitution framework to a three-letter alphabet ${S, M, L}$ and shows that a single irrational proportion governs the resulting structures.

*Palindromic reading.* The four-element pattern $M S M L$ admits a natural decomposition into two halves: a first pair $M S$ and a second pair $M L$. In the first pair, $M > S$, so the pair reads as a _long–short_ configuration at the internal scale. In the second pair, $M < L$, so the pair reads as a _short–long_ configuration at the internal scale. We can therefore consider the pattern $M S M L$ as a distorsion of the pattern $L S S L$.

*Double swing modulation.* The palindromic structure of $M S M L$ arises from the superposition of two levels of swing. At the first, lower level, the mirror operation already established in @mirror gives the quadruplet $L S S L$ as the mirror of the triplet $S L S$, both swung at some ratio $r_2 = L slash S$. The asymmetry of $M S M L$ is then obtained by inserting an additional swing at a higher level — a construction I call _double swing modulation_:

#figure(
  image("Figures/fractal/samba.png", width: 15%),
  caption: [double swing modulation]
)<double-swing>

Reading the quadruplet $L S S L$ as two halves of equal total length $L + S$ each, we observe that these two halves can themselves be swung against one another at a ratio $r_1$. Since the structure $L S S L$ is the mirror descendent of the triplet $S L S$, the inner halves inherit opposite groove balances: the first half is long-short, the second half is short-long. Under the upper-level swing — a short-long swing applied to the duolet formed by the two halves — the first half contracts and the second half expands. The constraint that the resulting four-element pattern should contain exactly three distinct duration values, rather than four, requires the long of the first half to equal the short of the second half. Writing $M$ for this common value, the first half becomes $M S$ and the second half becomes $M L$, yielding the samba pattern $M S M L$.

// TODO-FIGURE: Reuse from Hamburg slides — "The Samba Pattern" slide 
// showing MSML decomposed as two pairs with self-similarity relation 
// B/A = C/D = F/E = G/F = rho. (Slides 43-53 of the Hamburg deck.)

*The plastic ratio.* The two levels of swing are coupled by the constraint $L_a = S_b = M$. Working through the algebra — the first half at ratio $r_2$ produces durations $M = r_2 dot "(max of first half)"$ and so on, coupled to the outer ratio $r_1$ by the requirement of three-duration reduction — one obtains a cubic equation:

$
r^3 = r + 1.
$

The positive real solution of this equation is the plastic ratio:

$
r = rho approx 1.3247.
$

The two swing ratios stand in a specific relation to $rho$: the inner ratio is $r_2 = rho$, and the outer ratio is $r_1 = rho^2 approx 1.7548$. The three durations $S$, $M$, $L$ stand in geometric progression with common ratio $rho$:

$
S : M : L = 1 : rho : rho^2.
$

The extreme ratio $L slash S = rho^2 approx 1.755$ remains below the threshold 2 that distinguishes a swung subdivision from a resubdivided rhythm. The plastic ratio emerges from the double swing modulation as the irrational proportion for which the two-level swing structure is self-consistent with three-duration reduction.

#figure(
  image("Figures/fractal/samba%.png", width: 35%),
  caption: [The double swing modulation yields the Plastic Ratio]
)<plasticsamba>
*The substitution rule.* With the three durations in the geometric progression $S : M : L = 1 : rho : rho^2$, the substitution rule that generates the pattern $M S M L$ under iteration, and which preserves the three-duration swing across every level, is:

$
S arrow.r M, quad M arrow.r L, quad L arrow.r S M "or" M S.
$

Each short symbol advances to a medium, each medium advances to a long, and each long unfolds into the swung pair $S M$ at the next finer level — the ternary analogue of the Fibonacci swinging substitution in which $L$ resolves into $L S "or" S L$. Starting from the seed $M L$, two iterations produce $M S M L$, and the hierarchy continues indefinitely downward, preserving the three-duration swing at every scale. This rule is the _Padovan morphism_ of the combinatorial literature, and the lengths of its successive words form the Padovan sequence $1, 1, 2, 2, 3, 4, 5, 7, 9, 12, dots$, defined by $P(n) = P(n - 2) + P(n - 3)$ — the ternary cousin of Fibonacci's $F(n) = F(n - 1) + F(n - 2)$.



#v(10pt)
#figure(
  block[
    #stack(
      dir: ttb,
      spacing: 0.6em,
      $M L$,
      $L S M$,
      $M S M L$,
      $L M L S M$,
      $S M L S M M L$,
      $M L S M M L L S M$
    )
    #v(0.8em)
  ],
  caption: [The Padovan sequence of ternary swings],
) <fig:rhosequence>
// TODO-FIGURE: Reuse from Hamburg slides — iterations of the Padovan 
// substitution showing the emergence of MSML at the appropriate level. 
// (From the "Fractal Samba" slide of the Hamburg deck.)

*Position on the swing axis.* Translated onto the logarithmic swing axis, the plastic ratio sits at $log_2(rho) approx 0.405$, or approximately 40.5% swing — below the 50% meantone of the mirror's $sqrt(2)$, in a region of the swing continuum corresponding to relatively light, quick unequal subdivisions. The ternary rule therefore occupies a position on the swing axis distinct from both $sqrt(2)$ (50%) and $phi.alt$ (69.4%), completing the triad of irrational proportions that emerge from the framework developed in this paper.

Translated onto the logarithmic swing axis, the three ratios occupy three distinct positions in the swing continuum $1 < r < 2$: $rho$ at approximately 40.5%, $sqrt(2)$ at the geometric midpoint of 50%, and $phi.alt$ at approximately 69.4%. None of the three sits near the extremes of the continuum, and the distribution, although not uniform, is structured — reflecting the algebraic origins of the three numbers.

#figure(
  table(
    columns: 6,
    align: left,
    table.header([Rule], [Alphabet], [Substitution], [Polynomial], [Ratio], [Swing]),
    [Padovan], [${S, M, L}$], [$S arrow.r M, space M arrow.r L, space L arrow.r S M$], [$r^3 = r + 1$], [$rho approx 1.3247$], [40.5%],
    [Second $sqrt(2)$], [${S, L}$], [$L arrow.r S L S, space S arrow.r S L$], [$r^2 = 2$], [$sqrt(2) approx 1.414$], [50.0%],
    [Fibonacci], [${S, L}$], [$L arrow.r L S, space S arrow.r L$], [$r^2 = r + 1$], [$phi.alt approx 1.618$], [69.4%],
    
    
  ),
  kind: image,
  supplement: [Figure],
  caption: [The three substitution rules and their irrational proportions.],
) <fig:three-rules>


Whether these three proportions together constitute a structurally privileged selection, and whether other rules could extend the list, depends on perceptual considerations that have not yet been introduced. This question is taken up in the next section.







= Perceptual Limits and Tempo Admissibility <perception>

Fractal swing, as developed in the preceding sections, is mathematically an infinite construction: each of the substitution rules examined generates an infinite word, and the self-similarity of the resulting structure extends indefinitely downward through ever-finer subdivisions. Musically, however, fractal swing is not infinite. A performer cannot articulate arbitrarily fine subdivisions, and a listener cannot distinguish durations shorter than the perceptual threshold of the auditory system. The mathematical object must be realised, in practice, at a finite number of iteration levels — a depth constrained by the psychoacoustic window within which rhythm remains perceptible as rhythm. This section examines the perceptual limits that bound fractal swing in performance, and shows that these limits act not only as practical constraints on its musical realisation but also as a structural selector among the substitution rules admissible in principle.

== The Groove Window

Between the briefest and the longest time intervals at which rhythmic events can be perceived as rhythm, there exists a bounded window of perceptual admissibility. Its _lower bound_ — the floor of the groove window — corresponds to the shortest inter-onset interval at which two successive events remain distinguishable as separate pulses rather than merging into a continuous flow. Classical estimates place this floor at approximately 100 ms per event @london2012hearing, though the threshold varies with training, context, and cultural background.

The _upper bound_ is more delicate. A common estimate in the literature places the general threshold of rhythmic perception at approximately 2 to 3 seconds per event @london2012hearing, beyond which successive events fail to connect into a single perceptual group. But this general threshold is not the one that matters for fractal swing. A stricter constraint applies: for the subdivision of a beat into a swung duplet to be perceived _as swung_ — that is, as an internal unequal articulation of a single beat rather than as two independent events — the beat itself cannot be arbitrarily slow. When the beat exceeds a certain duration, the two sub-durations of the duplet cease to be integrated as one swung event and are instead heard as two successive events marked by an unequal interval. The gestalt of swing dissolves.

The precise value of this stricter threshold — let us call it the _swingability ceiling_ — is difficult to establish with certainty. An intuitive estimate, pending systematic experimental investigation, places it in the neighbourhood of 60 beats per minute, corresponding to a beat duration of approximately one second. Below this tempo, a binary unequal subdivision of the beat may no longer be heard as a swung duplet but as two distinct rhythmic events. This estimate is explicitly provisional: the swingability ceiling is likely to vary with musical context, performer intention, cultural background of the listener, and the specific relation between the subdivision and the surrounding metric cycle. A more refined value would require empirical investigation across a range of styles and listeners — work that has, to my knowledge, not yet been systematically undertaken.

The swingability ceiling, as defined here, applies to the _beat that is subdivided into a swung duplet_, not to the full metric cycle in which that beat is embedded. A slow composite meter — a phrase of several beats arranged in an unequal grouping — can extend well beyond one second without violating the ceiling, provided that the individual beats subdivided by the substitution rule remain within it. This distinction matters for what might be called _compound swinging meter_, in which the fractal structure operates at the level of the beat while the overall phrase length is considerably longer. The constraint is on the duration of the units _internally_ swung, not on the outer container.

For the present paper, the groove window is therefore bounded below by the perceptual floor (~100 ms) and above by the swingability ceiling (~60 BPM, tentatively) _at the level of the swung beat_. Any fractal swing realised in performance must respect both bounds: the beat units being swung must fall below the swingability ceiling, and the finest subdivision produced by the substitution rule must remain above the floor. The existence of these two bounds imposes a ceiling on tempo and a ceiling on iteration depth — the two cannot both be pushed without violating one constraint or the other.

== Two-Level Coexistence

The simplest application of the perceptual constraint concerns the requirement that _two consecutive levels of subdivision_ remain simultaneously audible. A fractal swing in which only one level of the subdivision is perceptible is structurally indistinguishable from a standard swung subdivision: the fractal character only emerges when two or more levels coexist in the ear of the listener. Two-level coexistence is therefore the minimal musical realisation of fractal swing.

For two-level coexistence to hold, the finer of the two levels must still sit above the perceptual floor. If the base pulse produces $L$ and $S$ durations at some ratio $r$, then applying the rule one more time produces still finer durations, inflated by the rule's inflation factor $lambda$. The constraint is:

$
"finest IOI (inter-onset-interval)" > "perceptual floor" quad arrow.double quad T < T_"max" (lambda),
$

where $T_"max" (lambda)$ is the maximum admissible tempo for a rule with inflation $lambda$, given the perceptual floor. For each substitution rule examined in this paper, this maximum tempo is a specific numerical value depending on $lambda$ and on the assumed perceptual floor.

== Tempo Ceilings and Fractal Depths

Each of the three substitution rules admissible as fractal swing — the Fibonacci (@phi), the second $sqrt(2)$ (@sqrt), and the Padovan (@padovan) — has a distinct inflation factor $lambda$, and therefore a distinct ceiling on the tempo at which two-level coexistence can be realised. Taking the perceptual floor at 100 ms and a base beat of reasonable tempo, the constraint $T times lambda < T_"max" = 600$ (i.e. 100 ms at the fastest subdivision) yields the following numerical values:

*Fibonacci rule* (inflation $phi.alt approx 1.618$): tempo ceiling is approximately 142 BPM. Remarkably, this ceiling corresponds almost exactly to the inter-onset interval of 100 ms at 8th-note subdivisions — a coincidence in which the algebraic constant $phi.alt$ and the physiological constant of auditory discrimination appear to meet. At 60 BPM, the Fibonacci rule admits a maximum depth of four iterations.

*Second $sqrt(2)$ rule* (inflation $1 + sqrt(2) approx 2.414$): tempo ceiling is approximately 73 BPM. The aggressive inflation of this rule thins out the subdivisions faster than the Fibonacci rule, requiring a slower base tempo to keep the fastest subdivisions audible. At 60 BPM, the rule admits only two iterations before the finest subdivision falls below the floor — a severe constraint on its fractal depth.

*Padovan rule* (inflation $rho approx 1.3247$): tempo ceiling is approximately 111 BPM. The plastic ratio's modest inflation allows the Padovan rule to operate at moderate tempos characteristic of the Brazilian rhythms where the pattern $M S M L$ is found. At 60 BPM, the Padovan rule admits a maximum depth of eight iterations — the deepest fractal realisation of any of the three admissible rules.



#v(10pt)
#figure(
  table(
    columns: 4,
    align: (left, center, center, center),
    table.header(
      [Rule],
      [Inflation $lambda$],
      [Tempo ceiling (BPM)],
      [Max depth at 60 BPM],
    ),
    [Padovan], [$rho approx 1.325$], [~111], [8],
    [Fibonacci], [$phi.alt approx 1.618$], [~142], [4],
    [Second $sqrt(2)$], [$1 + sqrt(2) approx 2.414$], [~73], [2],
  ),
  kind: image,
  supplement: [Figure],
  caption: [Tempo ceiling and maximum fractal depth for each rule.],
) <fig:tempo-depth>

Two patterns emerge from these values. First, rules with low inflation (Padovan) admit greater fractal depth at any given tempo than rules with high inflation (Fibonacci and second $sqrt(2)$). The inflation factor is thus the principal determinant of how deeply a rule can be heard in performance. Second, the relation between tempo ceiling and iteration depth is reciprocal: a rule that can be played at a faster tempo before collapsing cannot be iterated as deeply at a slower tempo before collapsing. The rule's inflation governs both ends of the trade-off symmetrically.

The second $sqrt(2)$ rule occupies a particular position in this family: its aggressive inflation restricts it to two coexisting iterations at any musically usable tempo. The proportion $sqrt(2)$, selected by this rule, supports only a binary relation between levels — a two-to-five coupling between successive iterations — rather than a deep recursive structure. This observation resonates with the original mirror effect of @mirror, where $sqrt(2)$ also emerged as the ratio of a two-term symmetry. In both contexts, $sqrt(2)$ appears structurally associated with a two-term coupling rather than with recursive self-similarity.


== The Perceptual Window as Structural Selector

The perceptual constraints developed above impose more than practical limits on the realisation of fractal swing. They function as a _structural selector_ among the substitution rules that satisfy the formal requirements of self-similarity within the swing domain. A simple example illustrates the point.

Consider the binary substitution rule $S arrow.r L S L$, $L arrow.r S L S L$. This rule satisfies the consistency condition: solving the resulting equation $2 r^2 - r - 2 = 0$ for the long-to-short ratio $r$ yields the irrational proportion $(1 + sqrt(17)) slash 4 approx 1.281$, well within the swing domain $1 < r < 2$. Each of its replacement words contains a mix of $L$ and $S$ letters, satisfying the requirement that the substitution be swung at every step. By the formal criteria developed in Sections 2–4, the rule is admissible in principle, and its fixed point $(1 + sqrt(17)) slash 4$ corresponds to a swing position of approximately 35.7% on the logarithmic axis — a fourth determinate position, distinct from the three of the triad.

Yet the rule has inflation $lambda = (1 + sqrt(17)) slash 2 approx 3.56$. Applied at a base tempo of 60 BPM, two iterations produce a word whose finest subdivision falls below the 100 ms perceptual floor: the rule does not admit two-level coexistence at any musically usable tempo. Its tempo ceiling for two-level coexistence sits below the swingability threshold itself, leaving no usable tempo window. The proportion $(1 + sqrt(17)) slash 4$ is therefore not realisable as a fractal swing in performance, despite being algebraically well-defined and structurally admissible.

The same analysis extends to other binary substitution rules with longer replacement words: as the length of the replacement grows, so does the inflation factor, and the tempo window collapses. Only rules with sufficiently small inflation — Fibonacci ($lambda = phi.alt$), the second $sqrt(2)$ rule ($lambda = 1 + sqrt(2)$), and the ternary Padovan rule ($lambda = rho$) — admit usable tempo windows. The mirror rule has small inflation ($lambda = sqrt(2)$) and would admit a comfortable window in this respect, but it is excluded earlier by its failure to swing the replacement of $L$. What remains, after both filters apply, is the triad ${rho, sqrt(2), phi.alt}$.

The perceptual viability requirement is constitutive of the framework. It restricts the large space of substitution rules that satisfy formal self-similarity to the small space of rules that survive within the groove window. The triad of irrational proportions that emerges in this paper is the algebraic shadow of this perceptual selection.







= Fractal Swing: Definition and Future Developments <future>

== Definition

The analysis developed in the preceding sections converges on a working definition of _fractal swing_ as a structural category. A rhythmic structure is an instance of fractal swing when three conditions hold simultaneously:

*Conditions for fractal swing.* First, the structure is generated by a _substitution rule_ acting on a finite alphabet of duration symbols — typically two letters ${S, L}$ or three letters ${S, M, L}$. Second, the rule satisfies a _consistency condition_: the ratio between the fundamental durations is preserved by a single application of the rule, selecting a specific irrational proportion as the rule's fixed point. Third, the rule preserves _maximal evenness_ under iteration: the letters of the generated word interleave rather than cluster, and the resulting infinite word admits a coherent metric interpretation at every finite iteration depth.

Fractal swing, so defined, sits at the intersection of three theoretical traditions. It is grounded in the substitution framework of combinatorics on words (Sturmian sequences, Fibonacci and Padovan morphisms) and inherits from that literature its formal precision. It is grounded in the _well-formedness framework_ of rhythm theory (London's maximal evenness constraint) and inherits from it the criterion that distinguishes metrically coherent rhythmic structures from clustered ones. And it is grounded in the _tempering analogy_ with pitch (Huguenin 2014), which places the three irrational proportions on a logarithmic swing axis analogous to the logarithmic pitch axis of tuning theory. The framework is thus neither a formal construct imposed on music nor a musicological observation dressed up in mathematical notation; it is a point of convergence where three independently developed theoretical traditions meet.

== Future Developments

The framework as developed in this paper imposes a strict _consistency condition_: the long-to-short ratio is preserved exactly by each application of the substitution rule. This strictness is a theoretical strength — it is what allows the three irrational proportions to emerge as unique solutions — but it is also a performance constraint. As shown in @perception, the combination of constant ratio and perceptual floor sharply limits tempo and iteration depth. 

Empirical measurements of jazz performance suggest that musicians do not, in fact, maintain a constant swing ratio across tempos. On the contrary: as the tempo increases, the swing ratio tends to _decrease_ systematically — a pattern documented across multiple studies of jazz timing @friberg2002. One plausible interpretation is that this decrease is driven by the perceptual floor: as the tempo approaches the limit at which the short subdivision would fall below 100 ms, performers compensate by reducing the swing amount, keeping the short subdivision above the threshold of discrimination. Swing, in this view, is not a fixed ratio applied uniformly but a _locally adaptive_ distortion that adjusts to its tempo context.

This observation suggests a natural extension of the framework. Instead of requiring the ratio to be preserved exactly at every iteration level, one could require it to _decrease systematically_ as iteration deepens — most plausibly according to a logarithmic schedule, so that the swing amount at each level remains above the perceptual floor given the actual duration at that level. The consistency condition is relaxed: the rule is no longer strictly fractal in the mathematical sense of invariance under scaling, but _quasi-fractal_, with a controlled attenuation of swing across scales. The result is a class of _tempered fractal swings_ in which the perceptual window governs the depth of iteration through the ratio itself, not only through the tempo.

Several open questions attach to this direction. What is the optimal rate of attenuation — logarithmic, linear, or something more complex? Can this rate be derived from first principles (the perceptual floor, the swingability ceiling) rather than fitted empirically? Does the maximal evenness property survive when the ratio varies with depth, or is a weakened analogue required? Most importantly: can the _persistence of synchronicity_ that defines the mirror effect (@mirror) be preserved under tempered iteration, or does synchronicity become approximate as the ratio attenuates? These questions are beyond the scope of the present paper, but they outline a research programme in which the framework developed here meets the empirical reality of performed swing — a programme the author intends to pursue in subsequent work.

== A Practical Realisation: Morph Congas

The piece _Morph Congas_, presented in concert immediately following this paper, is conceived as a practical realisation of the mirror effect examined in @mirror and of the substitution framework developed thereafter#footnote[@braff2020morphcongas.]. The composition is written for piano and live electronics, in a current updated version, and explores the full morphing range of the mirror pairing — duplet and triplet subdivisions coupled through the transfer functions $f$ and $g$, sustained across the entire range $0% <= x <= 100%$ of swing amount. The electronic material is produced through a set of SuperCollider classes that implement the rhythmic functionalities first developed by the author in the Kyma environment in 2016, and that are currently being prepared for public release as a SuperCollider Quark.

The piece does not attempt deep fractal iteration — the constraints identified in @perception preclude it at performable tempos. It articulates instead the mirror effect at two levels: the beat-level swing pairing and its emergence as a rhythmic gesture at the phrase level. The theoretical analysis of the present paper and the practical realisation of the concert are not two separate exercises linked by illustration; they are two modes of presentation of the same research. The analysis develops the formal structure of the phenomenon; the concert makes that structure audible, embodied in piano performance and shaped by electronic processing. Each mode is necessary to the other: without the analysis, the concert is a rhythmic exploration without explicit theoretical articulation; without the concert, the analysis is a formal construction without practical testing. Together, they constitute a single piece of artistic research.






= Conclusion <conclusion>

This paper has developed a substitution framework for what I have called _fractal swing_: the extension of swing from a single-level unequal subdivision to a self-similar rhythmic structure that replicates its internal proportions across every scale of observation. Starting from the mirror effect between paired subdivisions — read symbolically as a substitution rule — the argument proceeded through a sequence of increasingly refined rules, each correcting a specific defect of its predecessor. The mirror rule preserves the ratio $sqrt(2)$ but clusters its letters under iteration, violating the well-formedness criterion that distinguishes metrically coherent rhythms from blocks of identical durations. The Fibonacci rule corrects the clustering by swinging its own splits, and its consistency condition selects the golden ratio $phi.alt$. A second binary rule, with longer replacements, recovers $sqrt(2)$ in a properly interleaved distribution. And a ternary rule, emerging from a double swing modulation of the mirror structure, selects the plastic ratio $rho$.

The three proportions ${rho, sqrt(2), phi.alt}$, taken together, constitute the triad that gives the paper its title. Each is the positive real solution of a polynomial equation of low degree; each emerges from a substitution rule under a self-similarity constraint internal to the swing domain; and each occupies a determinate position on the logarithmic swing axis, corresponding to $40.5%$, $50%$, and $69.4%$ respectively. The three proportions form a structured family by virtue of a shared generative principle: each is the proportion uniquely compatible with a particular structural requirement of fractal swing, within the constraints of the groove window in which rhythm is perceived.

The combination of formal requirements and perceptual constraints developed in this paper yields a sharply restricted space of admissible rules. The substitution framework admits, in principle, an infinite family of rules satisfying the consistency condition within the swing domain; the requirement that each replacement be itself a swung pattern excludes the mirror; and the further requirement that the rule permit two-level coexistence at musically usable tempos — the perceptual viability introduced in @perception — eliminates all binary rules with longer replacement words, leaving Fibonacci and the second $sqrt(2)$ rule as the only admissible binary cases. The ternary alphabet admits only the Padovan rule and its plastic ratio. The triad emerges as the structurally and perceptually admissible outcome of the framework.

This articulation between formal structure and perceptual reality is central to the argument. Fractal swing is mathematically an infinite construction but musically a bounded phenomenon: the three rules admit different tempo windows and different maximal iteration depths, and none of them can be realised at full self-similar depth in performable tempos. This bounded character reflects the coupling of the framework to the psychophysical constraints of actual music-making — a coupling that the tempered fractal swings outlined in @future may eventually allow to explore further, by relaxing the strict consistency condition in favour of a perceptually-adaptive attenuation of swing across iteration levels.

The concert that now follows — _Morph Congas_ for piano and live electronics — is the practical counterpart of this theoretical analysis. The analysis develops the formal structure of fractal swing; the concert makes that structure heard.





#pagebreak()

#bibliography("references.bib", style: "american-anthropological-association")