// Teaching page -> teaching.html. Courses come from data/teaching.yaml.
#import "template.typ": *

#show: site-page.with(active: "teaching", title: "Teaching")

#let teaching = yaml("data/teaching.yaml")

#html.ul(class: "plain", for c in teaching {
  html.li[#c.title #html.span(class: "terms")[(#c.offerings.map(o => link(o.url, o.term)).join[, ])]]
})
