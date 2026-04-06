== Collection of Patterns

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

=== Pattern vs Swing

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
  image("../Figures/triplet1.png"),
  image("../Figures/triplet5.png"),
  [(a)], [(b)]
)


The idea is to apply a certain pattern over a certain swinging
subdivision grid, so with (a) and (b) we get (a)x(a), (b)x(a), (a)x(b) and (b)x(b):

#figure(image("../Figures/assignment w6.png"))
