// Publications page -> publications.html. Entries come from data/pubs.yaml,
// grouped by the year in their venue (entries without a venue are preprints).
#import "template.typ": *

#show: site-page.with(active: "publications", title: "Publications")

#let pubs = yaml("data/pubs.yaml")

#let groups = ()
#for p in pubs {
  let key = pub-year(p)
  let key = if key == none { "Preprints" } else { key }
  if groups.len() > 0 and groups.at(-1).at(0) == key {
    groups.at(-1).at(1).push(p)
  } else {
    groups.push((key, (p,)))
  }
}

#for (key, ps) in groups {
  html.section(class: "pub-group", {
    html.h2(class: "year", key)
    html.ul(class: "pubs", for p in ps { pub-entry(p) })
  })
}
