= Potential Energy

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


= Even Distribution and Euclidean Rhythms — Introducing Quplets

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

// ── Section 3 ────────────────────────────────────────────────────────────────

= Collection of Patterns

We build an extensive collection of swing patterns composed of different
combinations of longs and shorts. This collection can be organized according to
four distinct properties:

+ *Tuplet size* — the number of elements in the pattern. \
  Example: both long–short–long and long–short–short have a _tuplet size_ of 3
  (they are "triplets").

+ *Absolute size* — the size of the grid to which the swung subdivisions align
  when the swing amount reaches 100% and one long equals two shorts. \
  Example: the _absolute size_ of long–short–long is 5.

+ *Groove balance* — as discussed earlier in this course, this measures the
  amount of pull or push embedded in a swinging subdivision system.

+ *Potential energy* — as described above, this expresses the degree of tension
  or deviation from an even (straight) distribution.

// ── Section 4 ────────────────────────────────────────────────────────────────

= Pattern vs Swing

Each element of the collection can be considered either as a specific swing of
$n$ subdivisions (the _tuplet-size_) or as a pattern consisting of $n$ accents
within a duration of $d$ (_absolute size_).

Hereunder an exercise where I use two patterns (a) and (b), both as pattern and
swing. 

#grid(
  columns: (150pt,150pt),
  rows: (auto,auto),
  row-gutter: 10pt,
  align: center,
  image("Figures/triplet1.png"),
  image("Figures/triplet5.png"),
  [(a)], [(b)]
)


The idea is to apply a certain pattern over a certain swinging
subdivision grid, so with (a) and (b) we get (a)x(a), (b)x(a), (a)x(b) and (b)x(b):

#figure(image("Figures/assignment w6.png"))
