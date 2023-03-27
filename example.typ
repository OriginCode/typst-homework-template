#import "template.typ": *

// #show: project.with(
//   title: "Hello",
//   authors: (
//     "Test",
//   ),
// )

#problem("Hello")[
  This is a test.

  #part[
    This is a part
  ]

  #part[
    This is another part
  ]
]
