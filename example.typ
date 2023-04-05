#import "template.typ": *

#show: project.with(
  title: "Hello",
  authors: (
    "Test",
  ),
  show_info: false,
)

#question("Hello")[
  This is a test.

  #part[
    This is a part
  ]

  #part[
    This is another part
  ]
]

#question("World")[
  #part[
    Code Example:
    ```rs
    fn main() {
      println!("Wow it can show my Rust code!")
    }
    ```
  ]
]
