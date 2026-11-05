// Students page -> students.html. Students come from data/students.yaml.
#import "template.typ": *

#show: site-page.with(active: "students", title: "Students")

#let students = yaml("data/students.yaml")

#html.ul(class: "plain", for s in students {
  let name = s.name.trim()
  html.li[#if "url" in s { link(s.url, name) } else { name }, #html.span(class: "muted", s.degree)]
})
