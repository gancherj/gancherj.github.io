// About page -> index.html. Build all pages from the repo root with ./build.sh
// (paths below are relative to the deployed toplevel, not to this file).
#import "template.typ": *

#show: site-page.with(active: "about")

#html.section(class: "intro", {
  html.img(class: "portrait", src: "mesmall.jpg", alt: "Photo of Joshua Gancher")
  html.p(class: "role")[
    I am an Assistant Professor at Northeastern University.
  ]
  [
    I apply tools from Formal Methods and Programming Languages to construct
    and certify secure systems -- particularly systems that use
    cryptography. Broadly, I am interested in applied cryptography,
    distributed systems, type systems, proof assistants, and compiler
    correctness.
  ]
  html.p(class: "contact")[
    #link("mailto:j.gancher@northeastern.edu")[j.gancher\@northeastern.edu] \
    Office: WVH 332 \
    #link("materials/cv.pdf")[CV] · #link("https://github.com/gancherj")[GitHub]
  ]
})
