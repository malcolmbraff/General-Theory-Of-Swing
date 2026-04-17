//= Book I: Theory

== What is Swing?

#v(15pt)
Swing is often described in music education as something you feel rather than something you can explain — a quality that musicians develop intuitively through years of listening and imitation. This course takes a different approach. We define swing not as a stylistic characteristic, but as a precise structural property: swing occurs whenever the subdivisions of a beat become unequal. From this simple starting point, we build a complete theoretical framework — describing subdivision patterns as sequences of long and short values, measuring swing as a continuous parameter, and examining how tempo affects the range of possible swing feels. We also draw a careful distinction between what is written on the page and what is actually happening in performance. This chapter establishes the basic vocabulary and concepts that underpin everything that follows in the course.
#v(15pt)


=== Unequal subdivisions
Swing feel arises whenever the subdivision grid of the beat is distorted, so that the subdivisions are no longer equal. In the familiar case of eighth notes, this is the contrast between straight and swinging eighths. 

=== Ratios of LONG and short
To make this more precise, we can describe swing feel in terms of the ratio between _LONGS_ and _shorts_:
- At one extreme, a 1:1 ratio corresponds to straight subdivisions with no swing at all (0% swing).
- At the other extreme, a 2:1 ratio represents the most common version of swing (100% swing), where the _LONG_ is exactly twice the _short_.

In this course, we’ll define swing as lying strictly between these two extremes: 
in the interval \]0%, 100%[

#figure(
  image("Figures/2.jpg")
)
  
We exclude the endpoints because:
- At 0% swing, the rhythm is simply straight.
- Beyond 100%, _LONGS_ can always be re-expressed as combinations of shorts, meaning we’ve shifted to a higher subdivision grid rather than deepened swing feel itself.

In other words, swing lives in the space where subdivision is unequal but not reducible—a continuum of expressive ratios between straightness and re-subdivision.

=== Tempo and Swing
Swing is not independent of tempo. It can only be performed within a certain range of tempi, and its character changes as the tempo shifts.

In American jazz swing, the slower the tempo, the closer the feel comes to 100% swing (long–short in a near 2:1 ratio). At very slow speeds, however, it becomes almost impossible to sustain swing, and musicians will instead shift toward a triplet feel.

Conversely, as the tempo increases, the swing ratio tends to flatten toward 0%, approaching straight eighths. At very fast tempi, swing effectively vanishes, and performers will simply play straight subdivisions.

Thus, swing should be understood as tempo-dependent, living in a flexible zone between triplets at the slow end and straight eighths at the fast end.

=== Swing is Irrational




== Generalization of Swing




=== Extending to other subdivision systems
The same principle applies far beyond two subdivisions: any beat can be subdivided unequally, producing characteristic patterns of _LONGS_ and _shorts_. For the sake of clarity, we’ll mostly work with just two categories—_LONG_ and _short_ notes—though in theory, subdivisions could also produce richer contrasts such as _short–Medium–LONG_.

=== Restriction to Binary Words

Although swinging subdivisions with more than two distinct durations (e.g., the 4-subdivision samba swing better modeled with medium-short–medium–long (M–S–M–L)) are of great interest, we restrict ourselves to binary words only—strings made from L (long) and S (short). 
Given the 2:1 ratio limit described above, we encode these as combinations of 2s (L) and 1s (S).

This yields a finite (though exponentially growing) set of possibilities for a given number of subdivisions. For example, for a triplet subdivision (length 3), the six distinct swings are:

$[2,1,1], [1,2,1], [1,1,2], [2,2,1], [2,1,2], "and" [1,2,2]$.

#v(10pt)

  #image("Figures/triplet swings.png") 

  #v(10pt)
  #image("Figures/triplet swings.png")

=== Circle representation

We represent beat subdivisions with a polygon inscribed in a circle. The circle is the beat cycle, taken clockwise. To align with gravity-based analogies, the downbeat is placed at 6 o’clock (bottom). Each vertex of the polygon corresponds to a moment in the beat cycle. Thus, a triplet subdivision is an equilateral triangle, a 4-subdivision a square, and so on. Notice that each figure is balanced, in the sense that it is symmetrical along a vertical axis.


#v(10pt)

#figure(
  image("Figures/Figure 1.png"),
)

#v(10pt)

=== Morphing

We can depict the morphing from a straight (regular) polygon to a distorted (or swung at 100%) one obtained by combining 2:1 long–short ratios.


Below:
- morphings from the straight triplet to $[2,1,1]$ and $[1,1,2]$;
- a straight 4-subdivision (square) to $[2,1,1,2]$;
- a straight quintuplet (pentagon) to $[2,1,1,2,1]$.

#v(10pt)

#figure(
  image("Figures/Figure 2.png"),
)

#v(10pt)

=== Notation

We can notate the swing type by adding a secondary notation layer above the subdivision structure of the beat. For example, in the case of a quarter-note beat, the subdivision system may consist of two eighth notes, three eighth-note triplets, or four sixteenth notes, and so on.

In this added layer, longs are represented by a quaver (eighth note) and shorts by a semiquaver (sixteenth note). The amount of swing is indicated as a percentage, where 0% corresponds to the straight subdivision and 100% to the fully swung subdivision with a 2:1 long–short ratio (hence the quaver vs. semiquaver notation):


#v(10pt)

  #image("Figures/notation swing.png") 

  #v(10pt)




Morphing is indicated by a hairpin symbol < or >, indicating crescendo or decrescendo of the amount of swing:

#v(10pt)

  #image("Figures/notation morphing.png") 

  #v(20pt)


== Properties of Swing



// *****************************************************
// ************** GROOVE EFFECT ***********************
// *****************************************************

=== Gravitational properties
==== Groove Effect and Beat Depth
#v(15pt)
The groove effect and the depth of the beat are two closely related phenomena that together illuminate how swing shapes the listener's perception of pulse. We first examine the groove effect: the observation that swinging a subdivision system does not merely alter its internal spacing, but actively enforces a single, unambiguous interpretation of the beat. Where an even subdivision stream leaves the grouping structure open to arbitrary interpretation by the listener's brain, a swung stream makes the beat cycle unavoidable — audible even at audio rate as a sub-harmonic of the subdivision frequency. We then turn to the related but distinct concept of beat depth: the idea that the strength of the pulse, as a perceptual phenomenon, is itself a parameter that can be consciously modulated. Drawing on observations from performance practice, we argue that musicians can learn to adjust the amplitude of their inner pulse feel — shifting between a deep, vertical, wave-like sense of the beat and a more surface-level, horizontal, narrative perception of time. This capacity is central for example to performing rhythm modulations.

===== The Unavoidable Pulse

If we ignore accents and pitch cues (such as strong beats being emphasized or
low notes played on the beat), the ear is simply unable to identify the beat
from a perfectly even and isochronous stream of subdivisions. The brain
certainly perceives the rate, but it must arbitrarily decide how many
subdivisions there are. It needs to group the subdivisions in order to make a
sub-harmonic of that subdivision frequency emerge. In general, the brain opts
for the largest consonance: it tends to interpret the subdivision as binary
(groups of 2 or 4, depending on the tempo). But this default interpretation
masks other subdivision possibilities — especially odd-numbered divisions (3,
5, 7) — which the brain does not readily detect without additional cues.

#image("Figures/grooveEffect1.svg")

This ambiguity in evenly spaced subdivisions — where the stream could represent
any grouping — is by the way extremely useful for applying rhythmic modulation.
We can simply regroup the same subdivisions differently, creating new metric
feels or tuplets without changing the underlying pulse.

On the contrary, when subdivisions are swung, they reveal and enforce a single
interpretation. The subdivision system becomes clearly perceivable, and as a
result the beat (or pulse) becomes unavoidable. This can even be tested at
audio rate. A regular pulse train at any fixed frequency produces a steady
pitch corresponding to the pulse rate. But as soon as the time intervals begin
to vary — even by an infinitesimal swing between long and short — the ear
starts to audiate the root tone or sub-harmonic that corresponds to the
grouping implied by the swing pattern. In other words, the beat cycle becomes
audible and prominent simply because the subdivisions are swung. We can call
this the *Groove Effect* and it is probably one of the most important
properties of swing.

#image("Figures/grooveEffect2.svg")

===== Beat Depth

Musical time is a flow. It is a continuum rather than a sequence of discretely
measured points, and it is felt and experienced before it can be objectified or
analyzed. In that sense, musical time is analog, not digital: it moves in waves
with their own shapes, amplitudes, and periodicities. When we speak of swing,
it may be more accurate to say that it is the flow of time itself that is being
swung, rather than simply the beat subdivisions. Swing alters the very fabric
of musical time, independently of the written material — motifs, phrases, or
patterns.

#image("Figures/waves.svg")

Swing emphasizes the felt pulse. It gives the beat cycle a distinct shape or
color, and in doing so makes it more clearly perceptible. Even more, it deepens
that perception: swing anchors, reinforces, and roots the beat, giving it
weight and presence.

The beat cycle, understood as a wave, also carries its own intensity or
amplitude. We often underestimate the fact that the strength of the beat —
perceptually, not sonically — can itself be modulated. The beat can feel deeper
or more vertical and "harmonic," or more surface-level, horizontal, and
"modal." In other words, we can consciously learn to shape how deeply we
perceive the beat, adjusting its amplitude just as we would adjust a musical
parameter.

We can observe this ability in action when watching musicians perform, for
instance in a big band setting. When they encounter more syncopated, complex,
or cross-rhythmic passages, many players naturally lighten or de-deepen their
sense of the pulse. They shift toward a more horizontal or modal — almost
narrative — perception of time, momentarily detaching the rhythmic phrases from
their tight functional connection to the beat or bar cycle. Once the beat
becomes "audible" again in their inner perception, they can re-deepen their
pulse feel and reconnect fully with the vertical sense of time.

Without making overly quick generalizations, we can still observe that this
more surface-level, more horizontal sense of time tends to appear more often in
classical music than in groove-based music or jazz. In a classical context,
time — the beat — is frequently perceived as a discrete instant, a position
within the horizontal flow of the score, rather than as a recurring wave that
carries the music. The beat often feels like a _tic_, a punctual marker,
whereas in jazz or groove-based styles it becomes closer to a _wham–woosh_: a
continuous, deep, and enveloping pulse.

// *****************************************************
// ************** GROOVE BALANCE ***********************
// *****************************************************

==== Phrasing and Groove Balance
#v(15pt)

Knowing the ratio of long and short values in a subdivision pattern is not enough to fully characterize its rhythmic feel. Every swinging subdivision also has a directional quality — a sense of whether its energy pushes toward the next beat or pulls away from the previous one. This property, which we call groove balance, has a direct and immediate effect on how a rhythm is perceived and experienced: it shapes the weight, momentum, and phrasing character of a rhythmic line. This chapter develops the tools needed to describe and measure groove balance. Starting from the distinction between landing and take-off motives in rhythmic phrasing, we derive a simple measure of groove balance and introduce a geometric representation of beat subdivisions that makes this property visually intuitive. We then turn to the question of notation, establishing the conventions and formal constraints that will be used throughout the rest of the course.

===== Phrasing
Another important aspect of rhythmic feel is rhythmical phrasing. Musical motives can be grouped into two broad categories depending on how they relate to the beat:

- Landing motives: motives that aim toward the beat and resolve on it.  

 #box(
  height: 40pt,
  image("Figures/phrasing 2.png")
)




- Take-off motives: motives that start on the beat and launch away from it.

 #box(
  height: 40pt,
  image("Figures/phrasing 1.png")
)








In landing motives, the notes that fall between two beats are generally perceived as belonging to the next beat, since the motion is directed toward that arrival point.
In take-off motives, by contrast, the notes between beats are felt as belonging to the previous beat, functioning like an echo of that attack.

This distinction shapes how subdivisions are grouped in perception: the same sequence of notes can feel different depending on whether the listener or performer interprets them as falling into the beat or emerging from it. Phrasing is thus not only a matter of timing, but also of orientation and directionality in rhythm.


===== Groove Balance
This phrasing distinction also applies directly to swinging subdivisions.

In jazz eighth-note swing, the energy is concentrated in the second half of the beat cycle. The short note drives forward into the following beat, so the subdivision is perceptually grouped toward the beat rather than away from it. In other words, swing eighths are experienced as landing motives: the long note sets up a trajectory, and the short note pushes into the beat that follows.

This functional reality is unfortunately contradicted by standard notation, where eighth notes are almost always grouped in pairs starting from the beat. On paper, swing looks like a take-off motive, but in practice it is felt as a landing motive.

This mismatch between notation and perception again underlines the gap between the functional feel of rhythm and the way it is represented on the page.

We can therefore assign a simple measure of groove balance:
- Landing-type swinging subdivisions → positive groove balance
- Take-off-type swinging subdivisions → negative groove balance







As morphing starts, some figures get out of balance, gravity force is applied (vertical axis) and we can imagine that this results in the circle wanting to roll like a wheel to the right (positive groove balance) or to the left (negative groove balance). 

In the case of the square in the example above, swing (morphing) produces a figure that remains balanced with respect to the vertical axis. The positive groove balance in the first half of the beat cycle is offset by the negative groove balance in the second half, yielding an overall neutral groove balance.


=== Harmonic properties

==== Consonance and Synchronicity

The consonance between two frequencies can be understood in terms of how often
their phases align. When two periodic signals have a simple frequency ratio,
their waveforms regularly coincide, producing a sense of stability and unity.

Consonance is therefore proportional to how frequently phase alignment occurs
when viewed from both perspectives — that of the lower and the higher frequency.

For example:

- In a 3:1 ratio (the third harmonic), the two waves meet every cycle of the
  higher frequency and every third cycle of the lower. The alignment is frequent
  and perfectly regular.

- In a 3:2 ratio (the perfect fifth), the alignments occur less frequently —
  every two cycles of the higher and every three of the lower — but still
  regularly enough to sound consonant.

- In a 4:3 ratio (the perfect fourth), alignments are even less frequent,
  producing slightly more tension.

As the ratio becomes more complex (e.g. 5:4, 7:5, 9:8), the alignments occur
less often, and the interval feels increasingly dissonant.

Thus, consonance can be viewed as a measure of synchronization frequency — how
often two oscillations find themselves in phase, reinforcing one another rather
than interfering.

The same principle applies to rhythm. Just as two frequencies create musical
intervals through the ratio of their cycles, two rhythmic layers can form
rhythmic intervals through the ratio of their periodicities.

When the beat cycles of two rhythms realign frequently — i.e., when their ratio
is simple (2:1, 3:2, 4:3…) — the result feels consonant or harmonic. As the
ratio becomes more complex, their phase coincidences become rarer, and the
rhythm feels more dissonant or tensional.

==== Increasing Rhythmic Synchronicity through Swing

We can increase the synchronicity — or the harmonic feel — between two distinct
and co-prime subdivision systems by applying swing to each of them.

By subtly distorting the internal spacing of their subdivisions, we can shift
certain accents so that they approach one another or even become perfectly
aligned.

In other words, swing can serve as a tuning mechanism between rhythmic cycles:
two otherwise unrelated subdivisions can achieve moments of phase coincidence,
enhancing their sense of rhythmic consonance.

==== Mirror Effect in Paired Swinging Systems

Some paired (two-sided) swinging subdivision systems can maintain this increased
synchronicity across the entire swing range (0%–100%), morphing through what I
call the mirror effect, where applying swing to each side preserves or enhances
phase alignment throughout the morph.
Prominent examples include West African triplet–duplet pairings and Brazilian
triplets–sixteenths,#footnote[disclaimer: When I refer to culturally specific
materials (e.g., West African or Brazilian rhythms), I am not claiming to
represent their full reality. My approach is to describe patterns and functions
as they inspire me, with the hope that this lens offers a workable approximation
and practical orientation — so I can interact with these traditions in a creative
and respectful way.] 

#v(20pt)
 #figure(
     image("Figures/mirror.png"))

#v(20pt)

Note that the two parts of the system have opposite groove balances and that
their swing amount is also inverted and therefore will go in pairs:
0%–100%, 20%–80%, 30%–70%, 50%–50%.

 #figure(
  image("Figures/mirror2.png")
)



#v(20pt)



==== Rhythmic meantone and the logarithmic feel
In paired swinging subdivisions systems, we can assume that 50% of swing constitutes the midpoint, where both sides of the paired system have an equal swing amount. 

This implies tha the ratio $r="LONG"/"SHORT
"$ is the same for both systems.

Solving the equation
$ r=L/S=(2S)/L $
we obtain $ r = sqrt(2) $

The result suggests that the perception of the amount of swing is logaritmic, which is consistent with the Weber-Fechner law #footnote[Fechner, G.T. (1860). Elemente der Psychophysik. Leipzig: Breitkopf und Härtel.]. 

=== Potential Energy

One of the key concepts of the present rhythm approach is what we call the
*potential energy* of a given pattern or _swung_ subdivisions system. By
potential energy we mean how 'uneven' a pattern still is: the farther its hits
are from perfect spacing in a bar, the more potential energy it carries. From
that, we can also talk about the work it would take to morph the pattern
smoothly into an even grid and vice versa.

#figure(
  image("Figures/potential energy 1.png", width: 60%),
)

In the two examples above, the distance between the patterns and the straight
3-plet can be expressed as proportions to the quarter note duration (the beat).

So pattern (1) has a distance of

$ abs(1/4 - 1/3) + abs(3/4 - 2/3) = abs(-1/12) + abs(1/12) = 2/12 = bold(1/6) $

and pattern (2) has a distance of

$ abs(1/2 - 1/3) + abs(3/4 - 2/3) = abs(1/6) + abs(1/12) = (2+1)/12 = bold(1/4) $

We can observe that pattern (1) has the smallest distance to the regular
triplet. This means that between the two patterns (1) and (2), (1) will take
the least effort to morph to a straight triplet.

In terms of potential energy, we use the concept of *quadratic energy* in math
and physics, which is proportional to the square of the distance.

So we have the general formula for potential energy $E$:

#text(size: 14pt)[$ E = sum_(i=1)^n abs(X_i - T_i)^2 $]

Where $X_i$ correspond to the positions of elements of $n$-pattern
$X_n = (X_0, dots, X_n)$

and $T_i$ to the positions of elements of the straight $n$-tuplet
$T_n = (T_0, dots, T_n)$

Below, some 5-element patterns and their respective potential energy (the cycle
period is normalized to 5, hence larger numbers):

#grid(
  columns: (auto, auto, auto),
  rows: (auto, auto, auto),
  gutter: 1em,
  align: horizon,

  [(1)], image("Figures/potential1.png"), $E_1 approx 2.45$,
  [(2)], image("Figures/potential2.png"), $E_2 approx 0.3$,
  [(3)], image("Figures/potential3.png"), $E_3 approx 0.2$,
)

#v(10pt)
We notice that two factors minimize the potential energy $E$: *even
distribution* and *symmetry.* Pattern (1) differs from (2) and (3) in the
sense that it presents a less ideal distribution. Patterns (2) and (3) are
rotations from each other, but pattern (3) presents symmetry over the middle
of the cycle.

== Even Distribution and Euclidean Rhythms — Introducing Quplets

For the optimal placement of $n$ beats over $d$ steps (even distribution),
Toussaint's \*Euclidean rhythms#footnote[Godfried T. Toussaint, "The Euclidean
algorithm generates traditional musical rhythms" (2005)] are the first thing
that comes to mind. A Euclidean rhythm notated $E(n, d)$ corresponds to the
optimal distribution of $n$ pulses over $d$ beats. In his paper Toussaint
claims that Euclidean rhythms can be found in many folk music across the globe,
such as _bembé, bossa nova, afro cuban patterns_, etc.

To produce his Euclidean rhythms, Toussaint uses Björklund's
algorithm,#footnote[E. Bjorklund, "The theory of rep-rate pattern generation
in the SNS timing system." (2003)] which is derived from Euclides division
algorithm. Originally Björklund distributes binary numbers 0 and 1 (computer
science).

Hereunder I give an example of a distribution of 7 across 12 steps, translated
into music notation. 8-notes stand for 1-s and rests stand for 0-s:

#grid(
  columns: (auto, auto),
  rows: (auto, auto, auto,auto, auto),
  gutter: 1em,
  align: horizon,

  image("Figures/bjorklund1.png"),[$ 1111111,00000 $],

  image("Figures/bjorklund2.png"),[$ 10,10, 10,10,10,1,1 $],

  image("Figures/bjorklund3.png"),[$ 101,101,10,10,10 $],

  image("Figures/bjorklund4.png"),[$ 10110,10110,10 $],

  image("Figures/bjorklund5.png"),[$ 10110,10,10110 $],

)
#v(10pt)

For each step of the algorithm, the repeating structure to the right is
distributed across the structure on the left. Toussaint and Björklund actually
stop the algorithm one step before the last step presented in the example,
because the last step only yields a rotation of the previous step.

Notice that a rotation starting on the forelast beat of the last step
corresponds to the afro 12/8 bell pattern, 2212221, which also corresponds to
the major scale when counting tones (2) and semitones (1). And indeed the seven
tone diatonic modes are an ideal distribution of 7 tones across 12 steps.

Our last step's rotation is the 7-pattern across 12 steps that is the closest
to a straight 7-tuplet over the period of 12. It has the least potential
energy, or maximal entropy. Similarly, we can say that the dorian mode
(2122212) is the flattest of the 7 modes derived from the major scale. It is
the one that presents the least tension towards the root tone.

While Toussaint following Björklund defines all rotations of a Euclidean rhythm
as valid Euclidean rhythms (they represent the same _necklace_), there is a
unique rotation that maximizes entropy or minimizes energy as described above.

We name that unique rotation of $E(n, d)$ the *Quplet* $Q(n, d)$.