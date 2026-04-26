#import "@preview/theorion:0.4.1": *
#import cosmos.fancy: *


#let proofb(contenido) = proof[#text(fill: blue)[#contenido]] 
#let proofg(contenido) = proof[#text(fill: olive)[#contenido]]
#let centered-bold-eq(eq) = align(center, text(weight: "bold")[#eq])
#let then = $arrow.r.double$
#let iff = $arrow.r.l.double$
#let vuelta = $arrow.l.double$
#let tq = "tal que"
#let novacio = $eq.not emptyset$
#let plq = "por lo que"
#let qvq = "quiero ver que"
#let tiendeinf = $limits(->)_(n -> infinity)$
#let cool = $checkmark checkmark checkmark$
#let limite = $limits("lím")_(n arrow infinity)$
#let abs = $bold("Absurdo.")$

#let configuracion(body) = {
  show: show-theorion
  set page("a4")
  set text(lang: "es")
  show title: set align(center)
  set par(leading: 1em)
  body
}