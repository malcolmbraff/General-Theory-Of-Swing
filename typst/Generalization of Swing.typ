== Generalization of Swing




=== Extending to other subdivision systems
The same principle applies far beyond two subdivisions: any beat can be subdivided unequally, producing characteristic patterns of _LONGS_ and _shorts_. For the sake of clarity, we’ll mostly work with just two categories—_LONG_ and _short_ notes—though in theory, subdivisions could also produce richer contrasts such as _short–Medium–LONG_.

=== Restriction to Binary Words

Although swinging subdivisions with more than two distinct durations (e.g., the 4-subdivision samba swing better modeled with medium-short–medium–long (M–S–M–L)) are of great interest, we restrict ourselves to binary words only—strings made from L (long) and S (short). 
Given the 2:1 ratio limit described above, we encode these as combinations of 2s (L) and 1s (S).

This yields a finite (though exponentially growing) set of possibilities for a given number of subdivisions. For example, for a triplet subdivision (length 3), the six distinct swings are:

$[2,1,1], [1,2,1], [1,1,2], [2,2,1], [2,1,2], "and" [1,2,2]$.



#figure(
  stack(
    dir: ttb,
    spacing: 10pt,
    image("Figures/triplet swings.png"),
    image("Figures/triplet swing 2.png"),
  ),
  caption: [swinging triplets],
) <fig:triplet-swings>

=== Circle representation

We represent beat subdivisions with a polygon inscribed in a circle. The circle is the beat cycle, taken clockwise. To align with gravity-based analogies, the downbeat is placed at 6 o’clock (bottom). Each vertex of the polygon corresponds to a moment in the beat cycle. Thus, a triplet subdivision is an equilateral triangle, a 4-subdivision a square, and so on. Notice that each figure is balanced, in the sense that it is symmetrical along a vertical axis.




#figure(
  image("Figures/Figure 1.png"),
)



=== Morphing

We can depict the morphing from a straight (regular) polygon to a distorted (or swung at 100%) one obtained by combining 2:1 long–short ratios.


Below:
- morphings from the straight triplet to $[2,1,1]$ and $[1,1,2]$;
- a straight 4-subdivision (square) to $[2,1,1,2]$;
- a straight quintuplet (pentagon) to $[2,1,1,2,1]$.



#figure(
  image("Figures/Figure 2.png"),
)



=== Notation

We can notate the swing type by adding a secondary notation layer above the subdivision structure of the beat. For example, in the case of a quarter-note beat, the subdivision system may consist of two eighth notes, three eighth-note triplets, or four sixteenth notes, and so on.

In this added layer, longs are represented by a quaver (eighth note) and shorts by a semiquaver (sixteenth note). The amount of swing is indicated as a percentage, where 0% corresponds to the straight subdivision and 100% to the fully swung subdivision with a 2:1 long–short ratio (hence the quaver vs. semiquaver notation):




  #figure(image("Figures/notation swing.png") )






Morphing is indicated by a hairpin symbol < or >, indicating crescendo or decrescendo of the amount of swing:



  #figure(image("Figures/notation morphing.png") )

