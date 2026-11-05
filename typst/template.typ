// Shared layout for every page of the site: <head>, top navigation, footer.
// Each page file does `#show: site-page.with(active: "...", title: "...")`.

#let me = "Joshua Gancher"

// (label, href, key). `key` is what a page passes as `active`.
#let nav-items = (
  ("About", "index.html", "about"),
  ("Publications", "publications.html", "publications"),
  ("Teaching", "teaching.html", "teaching"),
  ("Students", "students.html", "students"),
  ("CV", "materials/cv.pdf", "cv"),
)

#let site-page(active: none, title: none, body) = html.html(lang: "en", {
  html.head({
    html.meta(charset: "utf-8")
    html.meta(name: "viewport", content: "width=device-width, initial-scale=1")
    html.title(if title == none { me } else { title + " · " + me })
    html.link(rel: "preconnect", href: "https://fonts.googleapis.com")
    html.link(rel: "stylesheet", href: "https://fonts.googleapis.com/css2?family=Source+Serif+4:ital,opsz,wght@0,8..60,400;0,8..60,600;1,8..60,400&display=swap")
    html.link(rel: "stylesheet", href: "site.css")
  })
  html.body({
    html.header(class: "site-header", html.nav(class: "nav", {
      html.a(class: "brand", href: "index.html", me)
      html.ul(class: "nav-links", for (label, href, key) in nav-items {
        let attrs = (href: href)
        if key == active { attrs.insert("class", "active"); attrs.insert("aria-current", "page") }
        html.li(html.elem("a", attrs: attrs, label))
      })
    }))
    html.main(class: "content", {
      if title != none { html.h1(class: "page-title", title) }
      body
    })
    html.footer(class: "site-footer")[
      Last updated #datetime.today().display("[month repr:long] [year]").
    ]
  })
})

// Author list with my own name emphasized.
#let authors(s) = s.split(me).join(html.strong(me))

// Publication year, taken from the last 4-digit number in the venue.
#let pub-year(p) = {
  if "venue" not in p { return none }
  let ms = p.venue.matches(regex("\d{4}"))
  if ms.len() == 0 { none } else { ms.last().text }
}

#let pub-entry(p) = html.li(class: "pub", {
  link(p.url, html.span(class: "pub-title", p.title))
  html.br()
  html.span(class: "pub-authors", authors(p.authors))
  html.br()
  if "venue" in p { html.em(class: "venue", p.venue.trim(".", at: end)) } else {
    html.em(class: "venue", "Preprint")
  }
  if "project" in p [ · #link(p.project)[project page]]
})
