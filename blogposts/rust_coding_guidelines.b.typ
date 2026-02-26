#import "@preview/frame-it:2.0.0": *

#let (rule,) = frames(
  kind: "rule",
  rule: ("Rule", rgb(220, 220, 220)),
)

#let (example,) = frames(
  kind: "example",
  example: ("Example", rgb(100, 100, 100)),
)

#let (note,) = frames(
  kind: "notes",
  note: "Note",
)

#show: frame-style(kind: "rule", styles.boxy)
#show: frame-style(kind: "example", styles.hint)
#show: frame-style(kind: "notes", styles.thmbox)

#show raw.where(block: true): it => block(
  fill: rgb(254, 254, 250), // Very light grey background
  stroke: 0.2pt + rgb(200, 200, 200), // Subtle border
  width: 100%,
  inset: 10pt, // Padding inside the frame
  radius: 2pt, // Rounded corners for a modern look
  it,
)

#import "../template.typ": blogpost

#show: blogpost.with(
  title: [Rust coding standards],
  subtitle: [Ideas to write better rust code],
  authors: (
    (name: "BuzzY_", link: "https://github.com/BuzzYbis/article.web"),
  ),
)

= Introduction

This document specifies the Rust coding standards I use for projects of a certain size in need of strong safety guarantees. Those guidelines are not absolute truth and I am eager to take into account comment you might have while reading this.

#note(numbering: none)[
  Coding standards allows to improve code quality and maintainability. A regular and consistent form for the production of code benefits, to the author, the maintainer and the user of the code that can learn APIs in a predictable manner.
]

This coding standards are organised the following way:
- Rules that define, require or recommend. They are fromatted as:
  #rule(numbering: none)[Rule formatting][Can have tag][And looks like that.]
  Unlike this one, rules will be numbered independently.
- Examples that provide a visual representation our certain rules, they are not normative and are not part of the rule per say, this is why they are not numbered:
  #example(numbering: none)[Example formatting][Can have tags too][
    And look like that:
    ```rust
    let example = "can have some code blocks.";
    ```
  ]

To signify the meaning of a rule, we will use specific key word. In particular,

#pad(
  left: 15mm, // Indent from the left
  right: 15mm, // Indent from the right
)[
  #quote()[
    The key words "MUST", "MUST NOT", "REQUIRED", "SHALL", "SHALL
    NOT", "SHOULD", "SHOULD NOT", "RECOMMENDED", "NOT RECOMMENDED",
    "MAY", and "OPTIONAL" in this document are to be interpreted as
    described in BCP 14 [RFC2119] [RFC8174] when, and only when, they
    appear in all capitals, as shown here.
  ]
]

This document is made from my personnal experience working with both in personal and professional projects, but it also include knowledge comming from other sources. Those sources are provided in the end of this document and are referenced as number during the course of this article as numbered citations.

This writting has been heavily influenced by the BDE team at Bloomberg and their "C++ Coding Standards" @BCECPP. Especially concerning the rigor and ideas that are languages agnostic.

= General rules

= Writting the code

// Coding rules -> use of unsafe ...

// Formating information

= Testing the code

= Documenting the code

// Released code
// Public API / used by main
// Internals

// Test code

#bibliography("rust_coding_guidelines_bib.yml")
