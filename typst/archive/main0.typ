#include "title.typ"

#set heading(numbering: (..nums) => {
  let n = nums.pos()
  // Ne numérote pas le niveau 1 (Books)
  if n.len() == 1 { none }
  // Numérote à partir du niveau 2
  else { numbering("1.1.", ..n.slice(1)) }
})

#outline(title: [Table of Contents], depth: 4)
#pagebreak()
#include "foreword.typ"
#pagebreak()

// Intro
#include "introduction.typ"


// Theory
#include "book1.typ"

// Practice
#include "book2.typ"

// Exercices
#include "book3.typ"




