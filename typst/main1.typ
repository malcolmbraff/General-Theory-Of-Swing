#include "title.typ"
#set heading(numbering: (..nums) => {
  let n = nums.pos()
  if n.len() == 1 { none }
  else { numbering("1.1.", ..n.slice(1)) }
})

// ── TABLE OF CONTENTS ─────────────────────────────────────────────────────



#text(size: 16pt, weight: "bold")[Table of Contents]
#v(2em)

//-------------------
// Foreword et Introduction — sans mise en page Book
//-------------------

#outline(
  title: none,
  depth: 4,
  target: selector(heading).before(<book1>),
)

#v(1.5em)

//-------------------
// BOOK 1
//-------------------

#align(center)[
  #v(0.5em)
  #text(size: 9pt, tracking: 3pt, fill: luma(150))[BOOK I]
  #v(0.3em)
  #text(size: 12pt, weight: "bold")[Theory]
  #v(0.5em)
]

#outline(
  title: none,
  depth: 4,
  target: selector(heading).after(<book1>).before(<book2>),
)

#v(1.5em)

//-------------------
// BOOK 2
//-------------------

#align(center)[
  #v(0.5em)
  #text(size: 9pt, tracking: 3pt, fill: luma(150))[BOOK II]
  #v(0.3em)
  #text(size: 12pt, weight: "bold")[Practice]
  #v(0.5em)
]
#outline(
  title: none,
  depth: 4,
  target: selector(heading).after(<book2>).before(<book3>),
)


//-------------------
// BOOK 3
//-------------------

#align(center)[
  #v(0.5em)
  #text(size: 9pt, tracking: 3pt, fill: luma(150))[BOOK III]
  #v(0.3em)
  #text(size: 12pt, weight: "bold")[Exercices]
  #v(0.5em)
]

#outline(
  title: none,
  depth: 4,
  target: selector(heading).after(<book3>).before(<book4>),
)

#v(1.5em)


//-------------------
// BOOK 4
//-------------------

#align(center)[
  #v(0.5em)
  #text(size: 9pt, tracking: 3pt, fill: luma(150))[BOOK IV]
  #v(0.3em)
  #text(size: 12pt, weight: "bold")[Math]
  #v(0.5em)
]

#outline(
  title: none,
  depth: 4,
  target: selector(heading).after(<book4>).before(<annexes>),
)

#v(1.5em)


//-------------------
// ANNEXES
//-------------------

#align(center)[
  #v(0.5em)
  #text(size: 9pt, tracking: 3pt, fill: luma(150))[ANNEXES]
  #v(0.3em)
  
  #v(0.5em)
]

#outline(
  title: none,
  depth: 4,
  target: selector(heading).after(<annexes>)
)

#v(1.5em)



// ── CONTENU ───────────────────────────────────────────────────────────────
//-------------------
// Intro and Foreword
//-------------------

#pagebreak()

#include "foreword.typ"
#pagebreak()
#include "introduction.typ" 


//-------------------
// BOOK 1
//-------------------
#pagebreak()
#page[
  #align(center + horizon)[
    #text(size: 9pt, tracking: 3pt, fill: luma(150))[BOOK I]
    #v(0.5em)
    #text(size: 28pt, weight: "bold")[Theory]
  ]
] <book1>

#counter(heading).update((0,))

#pagebreak()
#include "book1.typ"
#pagebreak()


//-------------------
// BOOK 2
//-------------------
#page[
  #align(center + horizon)[
    #text(size: 9pt, tracking: 3pt, fill: luma(150))[BOOK II]
    #v(0.5em)
    #text(size: 28pt, weight: "bold")[Practice]
  ]
] <book2>

#counter(heading).update((0,))

#pagebreak()
#include "book2.typ"
#pagebreak()


//-------------------
// BOOK 3
//-------------------
#page[
  #align(center + horizon)[
    #text(size: 9pt, tracking: 3pt, fill: luma(150))[BOOK III]
    #v(0.5em)
    #text(size: 28pt, weight: "bold")[Exercices]
  ]
] <book3>

#counter(heading).update((0,))

#pagebreak()
#include "book3.typ"
#pagebreak()


//-------------------
// BOOK 4
//-------------------
#page[
  #align(center + horizon)[
    #text(size: 9pt, tracking: 3pt, fill: luma(150))[BOOK IV]
    #v(0.5em)
    #text(size: 28pt, weight: "bold")[Math]
  ]
] <book4>
#counter(heading).update((0,))

#pagebreak()
#include "book4.typ"
#pagebreak()


//-------------------
// ANNEXES
//-------------------
#page[
  #align(center + horizon)[
    #v(0.5em)
    #text(size: 28pt, weight: "bold")[Annexes]
  ]
] <annexes>
#counter(heading).update((0,))

#pagebreak()
#include "annexes.typ"
#pagebreak()