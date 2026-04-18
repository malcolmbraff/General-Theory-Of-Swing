== Tuplet Notation

A few remarks about tuplet notation:

Usually we consider tuplets as subdivisions with a ratio and therefore we are
used to the number of unit durations corresponding to the tuplet number, as for
example  #box(baseline: 40%, image("../Figures/Fichier2.png", height: 24pt)) or #box(baseline: 40%, image("../Figures/Fichier1.png", height: 24pt)), with the implicit ratios
#box(baseline: 40%, image("../Figures/Fichier7.png", height: 24pt)) and #box(baseline: 40%, image("../Figures/Fichier4.png", height: 24pt)).


But we can also accept tuplet notation applied to patterns or rhythmic figures,
as for example a 5:3 bracket over a quarter note followed by a dotted eighth:

#figure(image("../Figures/Fichier5.png"))

What is then understood is that the figure under the tuplet brackets is meant
to happen at the specified ratio to the regular (no tuplet) notation. So in the
above example the figure must be performed at the rate it would take to perform
the figure 5 times while it would normally (no tuplet) be performed 3 times:

#figure(image("../Figures/Fichier6.png"))

Although not very common, this notation shortcut will be useful later in this
course.