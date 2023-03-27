#let project(title: "", authors: (), body) = {
  // Set the document's basic properties.
  set document(author: authors, title: title)
  set page(paper: "us-letter")
  set text(11pt, font: "Linux Libertine", lang: "en")

  // Title row.
  align(center)[
    #block(text(weight: 700, 1.75em, title))
  ]
  
  // Author information.
  pad(
    top: 0.5em,
    bottom: 0.5em,
    x: 2em,
    grid(
      columns: (1fr,) * calc.min(3, authors.len()),
      gutter: 1em,
      ..authors.map(author => align(center, strong(author))),
    ),
  )
  
  // Main body.
  set par(justify: true)

  body
}

#let question_counter = counter("question_counter")
#let part_counter = counter("part_counter")
#let display_question_counter = false

#let problem(title, body) = {
  set align(left)
  set text(11pt, weight: "bold")

  move(dy: .4em, line(length: 100%))
  if display_question_counter [#question_counter.display("1. ")]
  title
  move(dy: -.4em, line(length: 100%))

  set text(12pt, weight: "regular")
  body

  part_counter.update(1)
  question_counter.step()
  pagebreak(weak: true)
}

#let part(body) = move(dx: .10in, 
  block[
    #part_counter.display("(a)") #body
    #part_counter.step()
  ]
)
