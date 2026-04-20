== Properties of Swing
=== Swing as Time Distortion <sec:time-distortion>

Rather than seeing swing as resulting from a shift in the positions of the subdivisions on the time axis, I consider that time itself is distorted, alternating phases of expansion and compression. This shift of perspective has a direct consequence: the rhythmic features of the subdivided material are preserved. A half-pulse remains a half-pulse, a sub-subdivision retains its functional position within the pulse cycle, even within a swinging context. What changes is not the labels attached to events but the flow of time in which those events are embedded.

I take musical time to be cyclic, and the playing musician does not perceive it as linear. For them, time flows in waves. One could describe these waves as a cyclic time distortion, a succession of compression and expansion moments recurring at the rate of the pulse — a periodic deformation of the time axis itself.

This distortion can be made precise as a transfer function $f: [0,1] arrow.r [0,1]$ that maps absolute (clock) time to functional (musical) time. The horizontal axis carries the absolute time — what a chronometer would measure — and the vertical axis carries the functional time — what the musician perceives and articulates. For a straight subdivision, $f$ is the identity: absolute and functional time coincide. For a swung subdivision, $f$ departs from the identity in a way that is continuous, monotonically increasing, and cyclic with the pulse. At 100% binary swing, for instance, the two eighth notes of the duplet — at functional positions $0$ and $1/2$ — correspond to absolute times $0$ and $2/3$; so $f(2/3) = 1/2$.

A distortion applied to the pulse cycle does not act in isolation on the level at which it is defined. The duplet subdivision, when submitted to the function $f$, acquires a swung configuration $S L$ whose long is twice the short. The total length of this configuration, measured in absolute units with $L = 2$ and $S = 1$, is $3$ — and this means that the duplet swung at 100% coincides, at the absolute-time level, with a 3-subdivision of the same pulse. The triplet is not chosen as one example among others; it emerges from the duplet by the very structure of binary words under the 2:1 ratio constraint. And this emergent triplet does not remain untouched by the distortion of the duplet. It is subjected to a paired, structurally coupled distortion: a function $g$ whose action on the triplet is complementary to the action of $f$ on the duplet — indeed, on a simple reading, $g = f^(-1)$. The precise nature of this coupling — whether it can be understood as a bundle of transfer functions operating over multiple dimensions of subdivision — is a mathematical conjecture that exceeds the scope of the present chapter; it is developed further in @sec:transfer-function and will be taken up, in its topological form, in future work. For the purposes of what follows it is enough to note that a time distortion affecting the duplet co-induces a paired distortion on any other subdivision constrained by its structure, and that this coupled action on multiple subdivision levels is what opens the path from the local swing of the present chapter to the recursive structures examined in Chapter 4. The functional reading of time — as already introduced in the section _Functional vs. Absolute Time_ of the Introduction — takes its full significance here: the musician is not navigating a fixed temporal grid but a time whose very flow is distorted, and whose distortion propagates, in structured ways, across the hierarchy of subdivisions nested within the pulse.

Two complementary modes of rhythmic organisation can be read off this framework, and they will structure the properties examined in the remainder of this chapter. The gravitational properties — groove effect, beat depth, phrasing, groove balance, potential energy — treat rhythmic events as _particles_ arranged on the distorted time axis: their positions, their weights, their trajectories toward and away from the pulse. The harmonic properties — continuum with pitch, consonance and synchronicity, tempering, timbre — treat rhythmic layers as _waves_ whose phase relations, consonance, and frequency ratios can be analysed by the tools of harmonic theory. The analogy with wave–particle duality in physics is, of course, more metaphor than theorem, but it captures something real about the two complementary readings that swing, as a time-distortion phenomenon, makes available.

#include "gravitational properties.typ"
#include "harmonic properties.typ"

===  Taxonomy of Patterns 
<sec:taxonomy>
     [la taxonomie Huguenin 2014; axes de classification:
       - tuplet size (n)
       - absolute size (durée de pulsation)
       - groove balance (défini en ch. 3)
       - potential energy (définie en ch. 3 comme propriété 
         gravitationnelle: ∝ Σ(Δx_i)²)
      Placeholder renvoyant au chapitre sur la thèse Huguenin]


      