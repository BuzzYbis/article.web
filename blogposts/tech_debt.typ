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
  title: [Understanding technical debt],
  subtitle: [Comprehension using financial market],
  authors: (
    (name: "BuzzY_", link: "https://github.com/BuzzYbis/article.web"),
  ),
)

= Preliminaries: what is technical debt?

In this article, we talk about technical debt in software engineering --- even though it is a concept that can be applied to other field of engineering.

== Definition

Technical debt is a term introduced for the first time in @invention-td as 

== An immutable characteristic of complex systems

== Type of technical debt

== Consequences of technical debt


= How financial market can help us to understand technical debt?


= Conclusion

#bibliography("tech_debt.yml", style: "plos")
