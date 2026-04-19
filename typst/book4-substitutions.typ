== Substitution Rules, Fixed Points, and Perceptual Viability

=== Introduction

Section 4.5 of Book I introduced three substitution rules and associated each
with an irrational ratio: the mirror rule $S arrow.r L, L arrow.r S S$ with
$sqrt(2)$; the Fibonacci-type swinging substitution $S arrow.r L, L arrow.r L S$
with $phi.alt$; and a ternary rule, there only announced, associated with the
plastic number $rho$. The treatment in Book I emphasised the musical
derivation of each rule: the consistency conditions that select the irrational
ratio, the failure mode of the mirror, the entropy-preserving virtue of the
swinging substitution. The mathematical apparatus was kept implicit, and the
ternary case — the one that introduces three distinct durations, and the
plastic ratio — was deferred to the present Book.

This chapter develops the mathematical framework that supports those results
and extends it in two directions. First, it establishes the general setting in
which substitution rules are to be analysed: morphisms on finite alphabets,
their incidence matrices, the eigenvalue–eigenvector structure that determines
both inflation and duration ratio, and the Pisot condition that governs
dynamical stability. Second, it introduces a perceptual viability framework —
a set of constraints derived from the psychoacoustic limits of rhythmic
perception — that acts as a filter on the space of mathematically admissible
rules. The combination of mathematical admissibility and perceptual
viability, applied to binary and ternary substitutions under the additional
requirement $L slash S < 2$, isolates a small family of rules. Within this
family, the triad ${sqrt(2), phi.alt, rho}$ announced in Section 4.5 appears
not as a choice among many candidates, but as a structurally determined set
of optima under complementary constraints.

The chapter is organised as follows. Section @sec:formal-setup establishes
notation and recalls the Perron–Frobenius framework. Section @sec:ratio-equation
derives the quadratic that governs the duration ratio in the binary case, and
its ternary analogue. Section @sec:pisot-condition introduces the Pisot
condition as a criterion of dynamical stability and exhibits the two faces of
$sqrt(2)$ — the same ratio appearing in both a Pisot and a non-Pisot rule.
Section @sec:perceptual-viability develops the perceptual viability framework,
deriving a rule-specific formula for the maximum tempo at which two iteration
levels coexist within the groove window. Section @sec:hierarchy applies the
combined filter — Pisot plus $L slash S < 2$ plus admissible tempo — to the
space of minimal substitutions, and identifies the resulting hierarchy.
Section @sec:synthesis synthesises the results and situates the triad
${sqrt(2), phi.alt, rho}$ within it.

=== Formal setup <sec:formal-setup>

==== Alphabets and morphisms

Let $A$ be a finite alphabet. A _substitution_ (or morphism) $sigma : A^* arrow.r A^*$
is a map assigning to each letter $a in A$ a finite word $sigma(a) in A^*$,
extended to words by concatenation: $sigma(w_1 w_2 dots w_n) = sigma(w_1) sigma(w_2) dots sigma(w_n)$.
The substitutions examined in this chapter act on binary alphabets
$A = {S, L}$ or ternary alphabets $A = {S, M, L}$, with the letters ordered
so that the duration associated with $L$ is the largest, $S$ the smallest, and
$M$ (when present) intermediate.

The _incidence matrix_ of $sigma$ is the matrix $M_sigma$ whose entry at row
$b$, column $a$ counts the occurrences of the letter $b$ in the word $sigma(a)$:
$ (M_sigma)_(b,a) = abs(sigma(a))_b $
where $abs(w)_b$ denotes the number of $b$-letters in $w$. For the binary
substitution $sigma(S) = S L, sigma(L) = S S L$, for instance, the incidence
matrix is
$ M_sigma = mat(1, 2; 1, 1). $

==== Primitivity

A substitution $sigma$ is _primitive_ if some power $M_sigma^k$ has all
entries strictly positive. Primitivity is the standard sufficient condition
for the Perron–Frobenius theorem to apply to $M_sigma$: under primitivity,
$M_sigma$ admits a unique (up to scale) positive eigenvector $v$ associated
with a positive eigenvalue $lambda$ that strictly dominates all other
eigenvalues in modulus. This eigenvalue $lambda$ is called the _inflation
factor_ of the substitution; the eigenvector $v$ determines the relative
frequencies of letters in the limit word.

All substitutions examined in this chapter are primitive. Non-primitive
substitutions produce degenerate behaviour — asymptotic dominance of a single
letter, or decomposition into independent sub-systems — that disqualifies them
from the class of fractal rhythms in the sense of Book I.

==== Two distinct irrationals

A point that deserves emphasis, and that is the source of frequent confusion,
is that two distinct irrational numbers are associated with a primitive
substitution, and that they play different musical roles.

The _inflation factor_ $lambda$ is the dominant eigenvalue of $M_sigma$. It
governs how the total absolute duration of a word is multiplied under one
application of the substitution: if $w$ has total duration $T$ (computed with
the letter-durations assigned by the eigenvector of $M_sigma^T$), then
$sigma(w)$ has total duration $lambda T$. Musically, $lambda$ measures the
rate at which the substitution subdivides: a larger $lambda$ produces more
onsets per unit time at each iteration.

The _duration ratio_ $r$ is a ratio of components of the eigenvector of
$M_sigma^T$. For a binary substitution, $r = L slash S$ is the ratio of the
duration assigned to the long letter over the duration assigned to the short.
This is the quantity that characterises the swing feel of the rule: $r = 1$
is straight, $r = 2$ is a shuffle or maximally swung duplet, and the swing
zone of interest lies strictly between these values.

The two irrationals coincide in certain cases — for the Fibonacci morphism,
both $lambda$ and $r$ equal $phi.alt$ — but they can differ substantially. For
the substitution $sigma(S) = S L, sigma(L) = S S L$, the inflation is
$lambda = 1 + sqrt(2) approx 2.414$, while the duration ratio is $r = sqrt(2) approx 1.414$.
This distinction is central to the results that follow: the musical character
of a rule depends on $r$ (the swing feel at a single level) and on $lambda$
(the depth of subdivision available), and these two parameters vary
independently.

=== The ratio equation <sec:ratio-equation>

==== Binary case

For a binary substitution with incidence matrix
$ M_sigma = mat(a, b; c, d), $
the characteristic polynomial is $lambda^2 - (a+d) lambda + (a d - b c) = 0$.
The inflation $lambda$ is the positive root. The duration ratio $r = L slash S$
is obtained from the left eigenvector of $M_sigma$ — equivalently, the right
eigenvector of $M_sigma^T$.

From $M_sigma^T v = lambda v$ with $v = (v_S, v_L)^T$, the first row gives
$a v_S + c v_L = lambda v_S$, so $v_L slash v_S = (lambda - a) slash c$ whenever
$c != 0$. Substituting $lambda = a + c r$ into the characteristic polynomial
and expanding:

$ c^2 r^2 + c(a - d) r + (a^2 - (a+d) a + (a d - b c)) = 0. $

The constant term simplifies to $-b c$, so after dividing by $c$ (assumed
positive for primitivity), one obtains the _binary ratio equation_:

#math.equation(block: true, numbering: "(1)", $
c dot r^2 + (a - d) r - b = 0.
$) <eq:binary-ratio>

This is the quadratic that Book I solved for specific cases. The positive
root is
$ r = (d - a + sqrt((a-d)^2 + 4 b c)) / (2 c). $

==== Verification on known cases

The three rules of Section 4.5 correspond to specific coefficient vectors
$(a, b, c, d)$:

#table(
  columns: 4,
  align: left,
  table.header([Rule], [$(a, b, c, d)$], [Equation @eq:binary-ratio], [Ratio $r$]),
  [Mirror $S arrow.r L, L arrow.r S S$], [$(0, 2, 1, 0)$], [$r^2 - 2 = 0$], [$sqrt(2)$],
  [Fibonacci $S arrow.r L, L arrow.r L S$], [$(0, 1, 1, 1)$], [$r^2 - r - 1 = 0$], [$phi.alt$],
  [Swinging $S arrow.r S L, L arrow.r S S L$], [$(1, 2, 1, 1)$], [$r^2 - 2 = 0$], [$sqrt(2)$],
)

Both the mirror rule and the swinging $S arrow.r S L, L arrow.r S S L$ yield
$r = sqrt(2)$, but their inflations differ: $sqrt(2)$ for the mirror, $1 + sqrt(2)$
for the swinging rule. This structural difference — same ratio, different
inflation — is the starting point of Section @sec:pisot-condition.

==== A catalogue of minimal rules

Restricting coefficients to ${0, 1, 2}$ and retaining primitive matrices with
$r > 1$ yields a finite catalogue of binary rules.

#table(
  columns: 5,
  align: left,
  table.header([$a$], [$b$], [$c$], [$d$], [$r = L slash S$]),
  [0], [1], [1], [1], [$phi.alt approx 1.618$],
  [0], [2], [1], [0], [$sqrt(2) approx 1.414$],
  [0], [2], [1], [1], [$2$ (rational)],
  [0], [2], [1], [2], [$1 + sqrt(3) approx 2.732$],
  [1], [2], [1], [1], [$sqrt(2) approx 1.414$],
  [0], [1], [2], [2], [$(1 + sqrt(3)) slash 2 approx 1.366$],
)

The ratios that appear at this level of coefficient economy form a small
discrete set: $phi.alt$, $sqrt(2)$, $2$, $1 + sqrt(3)$, $(1 + sqrt(3)) slash 2$.
Extending the coefficient range to ${0, 1, 2, 3}$ introduces additional
ratios — notably $sqrt(3)$ and further members of the metallic family
$delta_n = (n + sqrt(n^2 + 4)) slash 2$ — but the structure remains
recognisable: every ratio obtained from @eq:binary-ratio is a quadratic
irrational (or, exceptionally, a rational when the discriminant is a perfect
square).

==== Ternary case

For a ternary substitution with three-dimensional incidence matrix $M_sigma$,
the characteristic polynomial is cubic. Under primitivity, the dominant
eigenvalue $lambda$ is the inflation, and the duration ratios $r_M = M slash S$
and $r_L = L slash S$ are obtained from the eigenvector.

The particular case of _geometric_ eigenvectors $(1, lambda, lambda^2)$
arises whenever the three letters form a cyclic chain under $sigma$ — for
instance $S arrow.r M, M arrow.r L, L arrow.r dots$ — where each letter's
image contributes proportionally to the next. For such substitutions:

$ r_M = lambda, quad r_L = lambda^2. $

The constraint $r_L < 2$ then becomes $lambda^2 < 2$, i.e. $lambda < sqrt(2)$.
Among the substitutions encountered below, the plastic substitution
$sigma(S) = M, sigma(M) = L, sigma(L) = S M$ yields $lambda = rho approx 1.3247$
and satisfies $lambda < sqrt(2)$, while the supergolden substitution yields
$lambda = psi approx 1.4656$ which satisfies $lambda < sqrt(2)$ numerically
but for which $r_L = psi^2 approx 2.148$ exceeds $2$ — the constraint is on
$r_L$, not on $lambda$, and the two do not always agree.

=== The Pisot condition <sec:pisot-condition>

==== Definition

A real algebraic integer $lambda > 1$ is a _Pisot number_ (or
Pisot–Vijayaraghavan number) if all its Galois conjugates have modulus
strictly less than $1$. Equivalently, the monic integer polynomial of which
$lambda$ is a root has all other roots inside the open unit disk.

For a primitive substitution with dominant eigenvalue $lambda$, the Pisot
condition has a direct dynamical interpretation. Decompose the duration
vector as $v = v^* + epsilon$, where $v^*$ is the Perron eigenvector
(the consistent duration ratio) and $epsilon$ is a perturbation. Under
iteration, $epsilon$ evolves according to the non-dominant eigenvalues of
$M_sigma$:
$ epsilon^((k)) = M_sigma^k epsilon. $
Components along the Perron eigenvector rescale globally — they simply
dilate all durations by $lambda^k$ and leave the ratio unchanged.
Components along the other eigenvectors decay at rate $|lambda_i|$ where
$lambda_i$ are the non-dominant eigenvalues. If all $|lambda_i| < 1$ —
precisely the Pisot condition — the perturbation decays exponentially and
the substitution is _self-correcting_: small errors in the duration ratio
are damped out by iteration.

If instead some $|lambda_i| >= 1$, perturbations persist or grow, and the
substitution has no such self-correcting property. The duration ratio is
still well-defined mathematically, but it is not dynamically stable: the
same rule applied with slightly imperfect durations produces output whose
ratio drifts away from the consistent value.

==== The two faces of $sqrt(2)$

The two binary rules that select $r = sqrt(2)$ provide a striking
illustration of the Pisot distinction.

_The mirror rule_ $sigma(S) = L, sigma(L) = S S$ has incidence matrix
$mat(0, 2; 1, 0)$, characteristic polynomial $lambda^2 - 2 = 0$, roots
$plus.minus sqrt(2)$. The conjugate of $sqrt(2)$ is $-sqrt(2)$, of modulus
$sqrt(2) > 1$. The rule is _not_ Pisot. Perturbations of the duration
ratio neither decay nor grow consistently — they oscillate in sign,
amplified at each iteration by the modulus of the conjugate.

_The swinging rule_ $sigma(S) = S L, sigma(L) = S S L$ has incidence matrix
$mat(1, 2; 1, 1)$, characteristic polynomial $lambda^2 - 2 lambda - 1 = 0$,
roots $1 plus.minus sqrt(2)$. The inflation is $1 + sqrt(2) approx 2.414$;
the conjugate is $1 - sqrt(2) approx -0.414$, of modulus $approx 0.414 < 1$.
The rule _is_ Pisot. Under iteration, perturbations of the duration ratio
are multiplied by $|1 - sqrt(2)|^k approx (0.414)^k$: after five
iterations, a perturbation of $10%$ has been reduced to approximately
$0.12%$ — perceptually invisible.

Both rules converge to the same asymptotic ratio $sqrt(2)$, but only the
second converges robustly. A performer who executes the mirror rule with
imperfect timing will see the error accumulate; one who executes the
swinging rule will see the structure correct itself. This distinction is
invisible at the level of the ratio equation, and emerges only from the
fuller spectral picture.

==== The Pisot gap and the uniqueness of $rho$

The set of Pisot numbers is closed and well-ordered from below (Siegel
1944). Its first few elements are:

$ rho approx 1.3247 quad
psi approx 1.4656 quad
phi.alt approx 1.618 quad
1 + sqrt(2) approx 2.414 quad dots $

Here $rho$ is the plastic number, the real root of $x^3 - x - 1 = 0$, and
is the smallest Pisot number absolutely. It is a cubic Pisot. $psi$, the
supergolden ratio, is the next Pisot cubic, root of $x^3 - x^2 - 1 = 0$.
$phi.alt$ is the smallest Pisot quadratic. Between $rho$ and $psi$, no Pisot
number exists — this is the "Pisot gap" that is crucial for the uniqueness
result below.

For a primitive ternary substitution with geometric eigenvector $(1, lambda, lambda^2)$,
the constraint $L slash S < 2$ requires $lambda < sqrt(2) approx 1.414$.
Combined with the Pisot requirement, $lambda$ must be Pisot and less than
$sqrt(2)$. Inspection of the list above shows that $rho approx 1.3247$ is
the only such number.

This observation yields a sharp uniqueness result:

#block(
  fill: luma(240),
  inset: 10pt,
  radius: 4pt,
  [*Proposition.* Up to conjugation and renaming of symbols, the plastic
  substitution is the unique primitive ternary substitution with geometric
  eigenvector that is both Pisot and satisfies $L slash S < 2$.]
)

The plastic ratio is not one ternary irrational among many. It is the only
one compatible with the joint requirements of dynamical stability (Pisot)
and swing containment ($L slash S < 2$) within the class of substitutions
that produce self-similar durations. This uniqueness is a structural fact
about the distribution of small Pisot numbers, not an artefact of the
specific coefficient range explored.

The analogous statement for binary substitutions is weaker: both $phi.alt$
and $sqrt(2)$ (in its Pisot incarnation) pass the joint filter, along with
$(1 + sqrt(3)) slash 2$ and a further discrete set of admissible ratios.
The binary case does not exhibit the isolating sharpness of the ternary
case — a structural asymmetry to which Section @sec:hierarchy returns.

=== Perceptual viability <sec:perceptual-viability>

The mathematical admissibility developed above selects a subset of
substitution rules on strictly algebraic grounds. Musical use of these
rules, however, is subject to further constraints: a rule is musically
viable only if its output, at the tempi at which it is performed, falls
within the perceptual window in which rhythm is heard _as_ rhythm. The
present section develops a framework for this additional filter, leading
to a rule-specific formula for the maximum tempo at which two iteration
levels can coexist perceptually.

==== The groove window

The functional range of rhythmic perception, as discussed in Section 3.3,
is bounded below by the beat-level threshold (approximately $1 thin $Hz
for sustained metric coherence, corresponding to $60 thin $BPM) and above
by the resolution limit of discrete-pulse perception (approximately $10 thin $Hz,
corresponding to an inter-onset interval of $100 thin $ms). The
psychological literature places the upper limit near $100 thin $ms for
stable metric entrainment (London 2004; Repp 2003), though empirical
studies of enculturated performance (Polak 2017) document subdivisions as
short as $80 thin $ms — suggesting that the limit is not a fixed cognitive
invariant but admits cultural variation.

Taking the conservative figure $T_(min) = 100 thin $ms as the lower bound
of perceptible duration, and $T_(max) = 1 thin $s as the upper bound of
sustained pulse, the groove window is the interval
$[T_(min), T_(max)] = [100 thin "ms", 1 thin "s"]$
with span $R = T_(max) slash T_(min) = 10$.

==== Two-level coexistence

A substitution rule becomes musically pertinent when at least two
iteration levels can be perceived simultaneously. The base level provides
the characteristic swing pattern — the word $L S$ (or $S M L$ for
ternary) in its swung form — and the first iterated level provides the
fractal substructure that reveals the rule's self-similarity.

For this coexistence to be perceptually real, the shortest duration at
the iterated level must remain above $T_(min)$. Normalising the base
period $L + S = T$ (binary case) to $1$ second (corresponding to the
reference tempo of $60 thin $BPM), the base-level durations are
$ S_0 = 1 slash (1 + r), quad L_0 = r slash (1 + r). $
After one application of $sigma$, the word expands by the inflation
factor: the same base period now contains onsets at a finer scale, with
shortest duration
$ S_1 = S_0 slash lambda = 1 slash (lambda (1 + r)). $
The constraint $S_1 >= T_(min)$, applied after rescaling the base period
to a general tempo $f$ (in Hz), yields:

#math.equation(block: true, numbering: "(1)", $
f_(max) = S_1^((60)) / T_(min) = 10 / (lambda (1 + r)) " Hz",
$) <eq:fmax-binary>

where the factor $10$ reflects $T_(min) = 0.1 thin $s.

This formula expresses a direct proportionality between the maximum
admissible tempo and the duration that the rule leaves for the shortest
iterated element when the base period is one second. A rule with a small
inflation — one that subdivides gently — permits a higher maximum tempo,
because the iterated element has more room before hitting the $100 thin $ms
floor. A rule with large inflation subdivides aggressively and runs out
of room quickly.

==== Application to the binary catalogue

Evaluating @eq:fmax-binary for the minimal binary rules with $r < 2$:

#table(
  columns: 6,
  align: (left, center, center, center, center, center),
  table.header([Rule], [$r$], [$lambda$], [$lambda(1+r)$], [$f_(max)$ (Hz)], [BPM]),
  [$S arrow.r L, L arrow.r S S$], [$sqrt(2)$], [$sqrt(2)$], [$2 + sqrt(2) approx 3.41$], [$2.93$], [$176$],
  [$S arrow.r L, L arrow.r S L$ (Fibonacci)], [$phi.alt$], [$phi.alt$], [$phi.alt^3 approx 4.24$], [$2.36$], [$142$],
  [$S arrow.r S L, L arrow.r S S L$], [$sqrt(2)$], [$1 + sqrt(2)$], [$3 + 2 sqrt(2) approx 5.83$], [$1.72$], [$103$],
  [$S arrow.r L L, L arrow.r S L L$], [$(1+sqrt(3)) slash 2$], [$1 + sqrt(3)$], [$3 + 2 sqrt(3) approx 6.46$], [$1.55$], [$93$],
)

The ordering by admissible tempo reveals a structural feature: the rules
split into two regimes. The mirror rule and Fibonacci, with inflation
equal to their ratio, permit tempi well above the middle of the groove
window; the Pisot swinging rule and the $(1 + sqrt(3)) slash 2$ rule,
with inflation strictly greater than their ratio, sit near the lower end.
The Pisot swinging rule at $103 thin $BPM coincides remarkably with the
empirical centre of the jazz medium-swing zone.

==== Ternary extension

For a ternary substitution with base motif $S M L$ and geometric
eigenvector, the normalisation $S_0 + M_0 + L_0 = 1 thin "s"$ gives
$S_0 = 1 slash (1 + lambda + lambda^2)$, and the iterated shortest
duration is
$ S_1 = S_0 slash lambda = 1 / (lambda (1 + lambda + lambda^2)). $
The ternary tempo formula is therefore:

#math.equation(block: true, numbering: "(1)", $
f_(max) = 10 / (lambda(1 + lambda + lambda^2)) " Hz".
$) <eq:fmax-ternary>

For the plastic substitution with $lambda = rho$, using the identity
$rho^3 = rho + 1$:
$ lambda(1 + lambda + lambda^2) = rho + rho^2 + rho^3 = 1 + 2 rho + rho^2 approx 5.40. $
This yields $f_(max) approx 1.85 thin $Hz $approx 111 thin $BPM. The
plastic substitution is therefore musically viable across a broad
medium-tempo range, with upper limit $111 thin $BPM when two full
iteration levels must coexist at or above the $100 thin $ms threshold.

For the supergolden substitution, the analogous calculation yields
$f_(max) approx 89 thin $BPM, but the rule fails the $L slash S < 2$
constraint ($r_L = psi^2 approx 2.148$) and is therefore excluded on
separate grounds.

==== Fractal depth

The two-level constraint extends naturally to $k$-level coexistence. The
shortest duration at level $k$ is $S_k = S_0 slash lambda^k$, and the
constraint $S_k >= T_(min)$, at base tempo $f$, requires
$ lambda^k (1 + r) f T_(min) <= 1, quad " i.e. " quad lambda^k <= R slash (1+r). $

Defining the _fractal depth_ of a rule as the largest integer $k$ such that
$k$ iteration levels coexist within the groove window at a reference
tempo of $60 thin $BPM:

$ k_(max) = floor(log(1 slash ((1+r) T_(min))) / log(lambda)). $

This measure ranks the rules by their capacity to support multiple
simultaneous levels of subdivision — a capacity directly relevant to the
perception of fractal self-similarity. For the base tempo $60 thin $BPM
and $T_(min) = 100 thin "ms"$:

#table(
  columns: 3,
  align: (left, center, center),
  table.header([Rule], [$lambda$], [$k_(max)$]),
  [$S arrow.r L, L arrow.r S S$ (non-Pisot $sqrt(2)$)], [$sqrt(2)$], [$4$],
  [Plastic ternary], [$rho$], [$3$],
  [Fibonacci], [$phi.alt$], [$2$],
  [$S arrow.r S L, L arrow.r S S L$ (Pisot $sqrt(2)$)], [$1 + sqrt(2)$], [$1$],
)

A pattern emerges: the rules that maximise fractal depth are those with
the smallest inflation, regardless of whether they satisfy the Pisot
condition. The mirror rule (non-Pisot) and the plastic substitution
(Pisot) both offer substantial depth; the Pisot $sqrt(2)$ rule, despite
its dynamical stability, offers the least.

=== A hierarchy of admissible substitutions <sec:hierarchy>

==== The joint filter

Combining the criteria developed above:

#block(
  fill: luma(240),
  inset: 10pt,
  radius: 4pt,
  [A substitution rule is _admissible_ in the sense of this chapter if it
  satisfies:
  + _Primitivity_: some power of the incidence matrix is strictly positive.
  + _Contained ratio_: $L slash S < 2$ (binary) or $L slash S < 2$ (ternary).
  + _Groove-window compatibility_: $f_(max) >= 60 thin "BPM"$, ensuring that
    at least two iteration levels coexist at a musically plausible base tempo.

  A rule is _Pisot-admissible_ if it is admissible and its inflation is a
  Pisot number.]
)

Primitivity is a technical requirement of the framework. The ratio bound
excludes rules that have escaped the swing zone into the territory of
re-subdivision (cf. Book I, Section 1.2). The tempo bound excludes rules
whose inflation is so large that the iterated level disappears below the
perceptual threshold at any playable tempo.

==== Binary admissible rules

Applying the filter to the binary catalogue with coefficients $<= 2$:

#table(
  columns: 5,
  align: (left, center, center, center, center),
  table.header([Rule], [$r$], [Pisot?], [$f_(max)$ BPM], [Admissible?]),
  [$S arrow.r L, L arrow.r S S$], [$sqrt(2)$], [no], [$176$], [yes (non-Pisot)],
  [$S arrow.r L, L arrow.r S L$], [$phi.alt$], [yes], [$142$], [yes (Pisot)],
  [$S arrow.r S L, L arrow.r S S L$], [$sqrt(2)$], [yes], [$103$], [yes (Pisot)],
  [$S arrow.r L L, L arrow.r S L L$], [$(1+sqrt(3)) slash 2$], [yes], [$93$], [yes (Pisot)],
  [$S arrow.r L, L arrow.r S L L$], [$1 + sqrt(3)$], [yes], [$59$], [marginal],
)

Five binary rules pass the filter, representing four distinct ratios:
$sqrt(2)$ (in two incarnations, Pisot and non-Pisot), $phi.alt$,
$(1 + sqrt(3)) slash 2$, and (marginally) $1 + sqrt(3)$. The binary case
is structurally plural: the filter does not isolate a unique admissible
rule.

==== Ternary admissible rules

Applying the filter to the ternary catalogue with geometric eigenvectors:

#table(
  columns: 5,
  align: (left, center, center, center, center),
  table.header([Rule], [$lambda$], [$L slash S$], [Pisot?], [$f_(max)$ BPM]),
  [Plastic $sigma(S) = M, sigma(M) = L, sigma(L) = S M$], [$rho approx 1.325$], [$rho^2 approx 1.755$], [yes], [$111$],
  [Cube root of $2$: $sigma(S) = L L, sigma(M) = S, sigma(L) = M$], [$root(3, 2) approx 1.260$], [$root(3, 4) approx 1.587$], [no], [$124$],
  [Supergolden $sigma(S) = L, sigma(M) = S, sigma(L) = L M$], [$psi approx 1.466$], [$psi^2 approx 2.148$], [yes], [(excluded)],
  [Tribonacci], [$tau approx 1.839$], [$tau^2 approx 3.383$], [yes], [(excluded)],
)

Only the plastic substitution and the cube-root-of-$2$ substitution pass
the full filter. The supergolden and tribonacci, while Pisot, violate the
ratio constraint $L slash S < 2$. The plastic is the unique Pisot-admissible
ternary rule; the cube root of $2$ offers a non-Pisot alternative at
slightly faster tempo ($124$ BPM vs $111$ BPM).

==== The Pisot-depth diagram

Plotting all admissible rules in the plane $(r, lambda)$ reveals their
mutual relationships:

- Points on the diagonal $lambda = r$ correspond to binary rules with
  $r = lambda$, of which Fibonacci is the canonical example.
- Points on the curve $lambda = sqrt(r)$ or more precisely
  $lambda^(n-1) = r$ (where $n$ is the number of symbols) correspond to
  rules with geometric duration progression.
- The Pisot region — where $lambda$ is Pisot and non-trivial — is
  bounded from below by $lambda = rho$ (the Pisot minimum) and intersects
  the $L slash S < 2$ half-plane in a region containing ${rho, phi.alt, sqrt(2) "Pisot"}$.

The triad ${sqrt(2), phi.alt, rho}$ of Book I occupies distinguished
positions in this diagram: $rho$ is the Pisot minimum (lowest $lambda$
among admissible Pisot rules, giving maximum fractal depth among stable
ternary rules); $phi.alt$ is the smallest Pisot quadratic, the binary
analogue of $rho$; $sqrt(2)$ is the unique ratio that admits both a
non-Pisot incarnation (minimising inflation at the cost of stability) and
a Pisot one (preserving stability at the cost of inflation).

=== Synthesis <sec:synthesis>

==== The triad as optima under distinct constraints

The analysis of the preceding sections converts the triad ${sqrt(2), phi.alt, rho}$
announced in Book I from a collection of irrational ratios into a structured
set of optima. Each member occupies a position of distinguished admissibility
under complementary constraints:

_The plastic ratio $rho$_ is the unique Pisot-admissible ternary ratio with
$L slash S < 2$ among substitutions with geometric durations. It is the only
ternary irrational that combines three mathematically independent virtues:
dynamical stability (Pisot), containment (ratio below the shuffle threshold),
and minimum inflation (maximum fractal depth among stable cubic rules).
The Pisot gap between $rho$ and $psi$ — a sharp fact of algebraic number
theory — makes this uniqueness structural rather than contingent on
coefficient range.

_The golden ratio $phi.alt$_ is the smallest Pisot quadratic, and the Fibonacci
substitution $S arrow.r L, L arrow.r L S$ is the minimal primitive binary
rule that realises it. Both the ratio $r$ and the inflation $lambda$ equal
$phi.alt$, giving the rule a self-similarity that other binary Pisot rules do
not share. Among binary Pisot-admissible rules, Fibonacci offers the best
fractal depth.

_The ratio $sqrt(2)$_ appears in two distinct rules — the mirror (non-Pisot,
inflation $sqrt(2)$) and the swinging rule $S arrow.r S L, L arrow.r S S L$
(Pisot, inflation $1 + sqrt(2)$) — that together exhibit the trade-off
between stability and depth. The non-Pisot form maximises fractal depth
among binary rules; the Pisot form ensures stability at the cost of a
more aggressive inflation and a lower maximum tempo. The musician's
choice between these two rules is, in effect, a choice between
self-correcting stability and dense subdivision.

==== The binary–ternary asymmetry

A striking structural feature revealed by this framework is that the
binary and ternary cases behave asymmetrically under the joint filter.

In the binary case, multiple admissible rules exist. The tension between
stability and depth manifests as a genuine choice among distinct rules:
Fibonacci for the Pisot balance, $S arrow.r L, L arrow.r S S$ for maximum
depth at the cost of stability, $S arrow.r S L, L arrow.r S S L$ for
stability at ratio $sqrt(2)$. No single binary rule occupies every
optimum at once.

In the ternary case, the plastic substitution occupies every optimum at
once. It is Pisot, it satisfies $L slash S < 2$, it has the minimum
inflation among Pisot cubic rules, and it produces three distinct
durations in geometric progression. This simultaneous optimality is
unique to the ternary case and is a direct consequence of the Pisot gap:
the absence of Pisot numbers between $rho$ and $psi$ eliminates the
competitors that would, in a richer spectral region, have produced the
same kind of plurality as the binary case.

The move from binary to ternary is therefore not a quantitative extension
of the same framework but a qualitative consolidation. Properties that
must be distributed across several binary rules coalesce into a single
ternary rule. In this sense, the plastic substitution is not merely
"the ternary analogue of Fibonacci" — it is the unique resolution, in the
ternary setting, of a tension that binary substitutions cannot resolve
within a single rule.

==== The non-Pisot option

The admissible non-Pisot substitutions — the mirror rule
$S arrow.r L, L arrow.r S S$ and the cube-root-of-$2$ ternary rule — are
not disqualified by their lack of self-correction. They remain
mathematically well-defined and produce characteristic ratios ($sqrt(2)$
and $root(3, 4)$ respectively) with musically plausible perceptual
profiles. What they lack is dynamical robustness: their ratio is
consistent only when produced exactly, and perturbations do not decay.

This is not necessarily a disadvantage in practice. A performer working
with external references — a metronome, an accompanying voice playing a
fixed pulse — need not rely on the substitution's internal stability;
stability is imposed from outside. In such contexts, the non-Pisot rules
offer access to denser fractal structure than their Pisot counterparts.
The mirror rule, in particular, achieves the maximum fractal depth among
binary rules in the groove window, and its position as the rule that
generates the $sqrt(2)$ meantone of the rhythmic domain (Section 3.2.3)
gives it a theoretical centrality that transcends its lack of
self-correction.

The ternary cube-root-of-$2$ rule is the structural analogue: non-Pisot,
with a denser subdivision than the plastic, and a ratio ($root(3, 4) approx 1.587$)
that places it in the swing zone near the jazz medium. Its durations are
in geometric progression of ratio $root(3, 2)$ — the cubic root of the
octave of rhythm — a position that mirrors the equal-tempered division
of the musical octave into three parts (major third).

==== Open questions

Three directions extend this framework beyond the present chapter.

_Quaternary substitutions._ The Pisot spectrum contains further elements
below $sqrt(2)$ when one moves to quartic polynomials — notably the root
of $x^4 = x + 1$ at approximately $1.221$. A primitive quaternary
substitution realising this ratio would admit $L slash S = lambda^3 approx 1.820 < 2$
and pass the joint filter. Whether such a rule has musical utility —
four distinct durations differing by factors of $approx 1.22$ — depends
on the just-noticeable-difference for duration discrimination, which sits
near $10%$ for durations in the relevant range. The quaternary case is
therefore at the margin of perceptual admissibility; its exploration
would clarify whether the binary–ternary asymmetry extends to higher
arities or terminates at three.

_Empirical testing._ The framework makes testable predictions. Performers
working in styles associated with each admissible ratio should produce
durations clustering near the theoretical value: $r approx sqrt(2)$ for
mirror-swing traditions (West African triplet–duplet, Brazilian
triplet–sixteenth), $r approx phi.alt$ for medium-swing jazz, $r approx rho^2$
for samba and related $S M L$ grooves. The Pisot-depth analysis
further predicts that performers should vary the base tempo in
accordance with the fractal depth they deploy — slower tempi
correlating with deeper iteration.

_Non-geometric ternary rules._ The uniqueness of $rho$ within the
ternary admissibility class assumes geometric eigenvectors. Substitutions
whose three durations do not stand in geometric progression — those with
eigenvectors of the form $(a, b, c)$ where $c slash b != b slash a$ —
are in principle available, and could in some cases combine a small
inflation with a ratio $L slash S < 2$ without requiring Pisot inflation
below $sqrt(2)$. Whether any such rule is admissible in the joint sense
of this chapter, and what irrational (or rational) ratio it would
select, remains open.

==== Closing remark

The mathematical framework of this chapter confirms and sharpens the
structural claims advanced on musical grounds in Book I. The three
irrational proportions ${sqrt(2), phi.alt, rho}$ are not arbitrary
mathematical objects imported into a musical discussion; they are the
fixed points selected by substitution rules whose admissibility under
the combined constraints of dynamical stability, contained ratio, and
perceptual viability is structurally determined. The triad is not a
choice but a consequence.

That consequence depends, at its deepest level, on two facts: the
existence of the Pisot gap between $rho$ and $psi$, which isolates the
plastic as the unique admissible ternary ratio; and the coincidence of
the $100 thin $ms perceptual floor with the inflation of the Fibonacci
rule at a tempo of approximately $142 thin $BPM. The first is a theorem
of algebraic number theory; the second is an empirical fact about human
auditory perception. The convergence of the two — mathematics and
physiology — within the same narrow window is, perhaps, the most
surprising structural observation of the present investigation. The
musical objects identified in Book I occupy the intersection of what
algebra permits and what perception requires, and they occupy it by a
remarkably slim margin.
