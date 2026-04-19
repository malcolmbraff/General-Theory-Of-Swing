=== Gravitational properties
==== Groove Effect and Beat Depth
#v(15pt)
The groove effect and the depth of the beat are two closely related phenomena that together illuminate how swing shapes the listener's perception of pulse. We first examine the groove effect: the observation that swinging a subdivision system does not merely alter its internal spacing, but actively enforces a single, unambiguous interpretation of the beat. Where an even subdivision stream leaves the grouping structure open to arbitrary interpretation by the listener's brain, a swung stream makes the beat cycle unavoidable — audible even at audio rate as a sub-harmonic of the subdivision frequency. We then turn to the related but distinct concept of beat depth: the idea that the strength of the pulse, as a perceptual phenomenon, is itself a parameter that can be consciously modulated. Drawing on observations from performance practice, we argue that musicians can learn to adjust the amplitude of their inner pulse feel — shifting between a deep, vertical, wave-like sense of the beat and a more surface-level, horizontal, narrative perception of time. This capacity is central for example to performing rhythm modulations.

#heading(level: 5, numbering: none, outlined: true)[The Unavoidable Pulse]

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


#heading(level: 5, numbering: none, outlined: true)[Beat Depth]

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

#heading(level: 5, numbering: none, outlined: true)[Phrasing]

Another important aspect of rhythmic feel is rhythmical phrasing. Musical motives can be grouped into two broad categories depending on how they relate to the beat:

- Motives that aim toward the beat and resolve on it.  



#figure(
  image("Figures/phrasing 2.png"),
  caption: [landing motives],

)


- Motives that start on the beat and launch away from it.

 #figure(
  image("Figures/phrasing 1.png"),
  caption: [take-off motives],
)

In landing motives, the notes that fall between two beats are generally perceived as belonging to the next beat, since the motion is directed toward that arrival point.
In take-off motives, by contrast, the notes between beats are felt as belonging to the previous beat, functioning like an echo of that attack.

This distinction shapes how subdivisions are grouped in perception: the same sequence of notes can feel different depending on whether the listener or performer interprets them as falling into the beat or emerging from it. Phrasing is thus not only a matter of timing, but also of orientation and directionality in rhythm.

#heading(level: 5, numbering: none, outlined: true)[Groove Balance]

This phrasing distinction also applies directly to swinging subdivisions.

In jazz eighth-note swing, the energy is concentrated in the second half of the beat cycle. The short note drives forward into the following beat, so the subdivision is perceptually grouped toward the beat rather than away from it. In other words, swing eighths are experienced as landing motives: the long note sets up a trajectory, and the short note pushes into the beat that follows.

This functional reality is unfortunately contradicted by standard notation, where eighth notes are almost always grouped in pairs starting from the beat. On paper, swing looks like a take-off motive, but in practice it is felt as a landing motive.

This mismatch between notation and perception again underlines the gap between the functional feel of rhythm and the way it is represented on the page.

We can therefore assign a simple measure of groove balance:
- Landing-type swinging subdivisions → positive groove balance
- Take-off-type swinging subdivisions → negative groove balance

As morphing starts, some figures get out of balance, gravity force is applied (vertical axis) and we can imagine that this results in the circle wanting to roll like a wheel to the right (positive groove balance) or to the left (negative groove balance). 

In the case of the square in the example above, swing (morphing) produces a figure that remains balanced with respect to the vertical axis. The positive groove balance in the first half of the beat cycle is offset by the negative groove balance in the second half, yielding an overall neutral groove balance.

==== Potential Energy

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