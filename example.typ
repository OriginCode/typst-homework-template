#import "template.typ": *

// #show: project.with(
//   title: "Hello",
//   authors: (
//     "Test",
//   ),
// )

#question("Hello")[
  This is a test.

  #part[
    This is a part
  ]

  #part[
    This is another part
  ]
]
