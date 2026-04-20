// Figure — Transfer functions f and g = f^(-1)
// Piecewise linear model with corner at (2/3, 1/2).

#import "@preview/lilaq:0.4.0" as lq

#set text(font: "New Computer Modern", size: 10pt)
#v(10pt)
#figure(
  lq.diagram(
    width: 8cm,
    height: 8cm,
    xlim: (0, 1),
    ylim: (0, 1),
    xlabel: [absolute time $t$],
    ylabel: [functional time],

    // Custom ticks: only the structurally meaningful values
    xaxis: (
      ticks: (
        (0, [$0$]),
        (1/2, [$1 slash 2$]),
        (1/3, [$1 slash 3$]),
        (1, [$1$]),
      ),
    ),
    yaxis: (
      ticks: (
        (0, [$0$]),
        (1/2, [$1 slash 2$]),
        (1/3, [$1 slash 3$]),
        (1, [$1$]),
      ),
    ),

    legend: (position: bottom + right),

    // identity reference
    lq.plot(
      (0, 1), (0, 1),
      stroke: (paint: gray, thickness: 0.5pt, dash: "dashed"),
      mark: none,
      label: [identity],
    ),

    // dashed guides: (2/3, 0) -> (2/3, 1/2) -> (0, 1/2)
    lq.plot(
      (1/3, 1/3, 0), (0, 1/2, 1/2),
      stroke: (paint: rgb("#1f5fa8").transparentize(60%),
               thickness: 0.5pt, dash: "dotted"),
      mark: none,
    ),

    // dashed guides: (1/2, 0) -> (1/2, 2/3) -> (0, 2/3)
    lq.plot(
      (1/2, 1/2, 0), (0, 1/3, 1/3),
      stroke: (paint: rgb("#c23b22").transparentize(60%),
               thickness: 0.5pt, dash: "dotted"),
      mark: none,
    ),

    // f: piecewise linear
    lq.plot(
      (0, 1/3, 1), (0, 1/2, 1),
      stroke: (paint: rgb("#1f5fa8"), thickness: 1.4pt),
      mark: none,
      label: $f$,
    ),

    // g = f^(-1)
    lq.plot(
      (0, 1/2, 1), (0, 1/3, 1),
      stroke: (paint: rgb("#c23b22"), thickness: 1.4pt),
      mark: none,
      label: $g = f^(-1)$,
    ),

    // highlight corners
    lq.scatter((1/3,), (1/2,), color: rgb("#1f5fa8"), size: 6pt),
    lq.scatter((1/2,), (1/3,), color: rgb("#c23b22"), size: 6pt),
  ),
  
  caption: [
    Transfer functions at 100% binary swing. Slopes encode the
    $L:S = 2:1$ ratio.
  ],
) <fig:transfer-functions>

#v(10pt)