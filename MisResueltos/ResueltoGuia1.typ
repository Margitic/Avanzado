#import "@preview/theorion:0.4.1": *
#import cosmos.fancy: *
#show: show-theorion

#set page(height: auto)
#set text(lang: "es")
#let centered-bold-eq(eq) = align(center, text(weight: "bold")[#eq])
#let then = $arrow.r.double$
#let iff = $arrow.r.l.double$

#show title: set align(center)
#title[Práctica 1]

+ Pruebe que si $x < y + epsilon$ para todo $epsilon > 0$, entonces $x lt.eq y$. Deduzca que si $|x-y| < epsilon$ para todo $epsilon > 0$, entonces $x=y$.\ #proof[
  agregar
]
  



+ - (a) Sean $x,y in RR$ tales que $y-x>1$. Pruebe que existe un entero entre $x$ e $y$.
  - (b) Sean $x,y in RR$ tales que $x<y$. Pruebe que existe un racional entre $x$ e $y$.
  - (c) Sean $x,y in QQ$ tales que $x<y$. Pruebe que existe un irracional entre $x$ e $y$.
  - (d) Sean $x,y in RR$ tales que $x<y$. Pruebe que existe un irracional entre $x$ e $y$.\ #proof[agregar]


+ Sea $A subset.eq RR$ no vacío y acotado inferiormente. Pruebe la siguiente equivalencia:\ $ i = inf A arrow.l.r.double.long cases(
  i lt.eq "para todo" a in A,
  "para todo" epsilon > 0 "existe" a in A "tal que" i<a<i+epsilon.
) $ \ #proof[agregar]


+
