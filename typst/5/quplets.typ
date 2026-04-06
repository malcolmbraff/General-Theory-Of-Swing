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

  image("../Figures/bjorklund1.png"),[$ 1111111,00000 $],

  image("../Figures/bjorklund2.png"),[$ 10,10, 10,10,10,1,1 $],

  image("../Figures/bjorklund3.png"),[$ 101,101,10,10,10 $],

  image("../Figures/bjorklund4.png"),[$ 10110,10110,10 $],

  image("../Figures/bjorklund5.png"),[$ 10110,10,10110 $],

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