== Potential Energy

One of the key concepts of the present rhythm approach is what we call the
*potential energy* of a given pattern or _swung_ subdivisions system. By
potential energy we mean how 'uneven' a pattern still is: the farther its hits
are from perfect spacing in a bar, the more potential energy it carries. From
that, we can also talk about the work it would take to morph the pattern
smoothly into an even grid and vice versa.

#figure(
  image("../Figures/potential energy 1.png", width: 60%),
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

  [(1)], image("../Figures/potential1.png"), $E_1 approx 2.45$,
  [(2)], image("../Figures/potential2.png"), $E_2 approx 0.3$,
  [(3)], image("../Figures/potential3.png"), $E_3 approx 0.2$,
)

#v(10pt)
We notice that two factors minimize the potential energy $E$: *even
distribution* and *symmetry.* Pattern (1) differs from (2) and (3) in the
sense that it presents a less ideal distribution. Patterns (2) and (3) are
rotations from each other, but pattern (3) presents symmetry over the middle
of the cycle.