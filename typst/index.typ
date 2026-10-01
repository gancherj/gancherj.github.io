// Source for the site's index.html. Build from the repo root with ./build.sh
// (paths below are relative to the deployed toplevel, not to this file).

#let teaching = yaml("data/teaching.yaml")
#let students = yaml("data/students.yaml")
#let pubs = yaml("data/pubs.yaml")

#let section(id, name) = html.h2(id: id, name)

#let pub(p) = {
  link(p.url, p.title)
  [.]
  html.br()
  if "venue" in p { html.div(class: "venue", p.venue) }
  html.div(class: "authors", {
    p.authors
    if "project" in p [ Project link #link(p.project)[here].]
  })
}

#html.html(lang: "en")[
  #html.head[
    #html.meta(charset: "utf-8")
    #html.meta(name: "viewport", content: "width=device-width, initial-scale=1")
    #html.link(rel: "stylesheet", href: "style.css")
    #html.title[Joshua Gancher]
  ]
  #html.body(style: "margin-top:3em;")[
    // Bio
    #html.div(style: "display:flex;")[
      #html.div(class: "me", style: "width:100%;text-align:center;")[
        #html.img(src: "mesmall.jpg", alt: "Joshua Gancher")
        #html.br()
        *Email:* j.gancher\@northeastern.edu
        #html.br()
      ]
      #html.div(style: "width:20%;")[]
      #html.div(style: "flex-grow:1;margin:auto;")[
        #html.h1[Joshua Gancher]
        #html.b(style: "font-size: large;")[Assistant Professor #html.br() Northeastern University]
        #html.br()
        Office: WVH 332

        I apply tools from Formal Methods and Programming Languages to construct
        and certify secure systems -- particularly systems that use
        cryptography. Broadly, I am interested in applied cryptography,
        distributed systems, type systems, proof assistants, and compiler
        correctness.
      ]
    ]

    #html.hr()
    #section("teaching")[Teaching]
    #html.ul(for c in teaching {
      html.li[#c.title (#c.offerings.map(o => link(o.url, o.term)).join[, ])]
    })

    #html.hr()
    #section("students")[Students]
    #html.ul(for s in students {
      let name = if "url" in s { link(s.url, s.name) } else { s.name }
      html.li[#name (#s.degree)]
    })

    #html.hr()
    #section("pubs")[Publications]
    #html.div(id: "publications", for p in pubs { pub(p) })
  ]
]
