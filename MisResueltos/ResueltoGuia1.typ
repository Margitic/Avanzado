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

+ Pruebe que si $x < y + epsilon$ para todo $epsilon > 0$, entonces $x lt.eq y$. Deduzca que si $|x-y| < epsilon$ para todo $epsilon > 0$, entonces $x=y$.\ #proof[#text(fill: blue)[
  Supongo $x>y,$ luego $(x-y)=d >0$ (pues $ x>y$) llamo $epsilon = (x- y)/2, "luego"  x<y+epsilon \ &= x<y+(x- y)/2 \ &= x < (2y+x-y)/2 \ &= x<(y+x)/2 \ &arrow.r.double 2x = y+x \ &arrow.r.double x< y $ *Abs!* \ $|x-y| < epsilon$ $  forall epsilon>0$, esto es igual a decir $-epsilon < x-y < epsilon$, separamos en ambos casos, por un lado tenemos que $x-y < epsilon = x < y + epsilon$ y por demostración anterior $x lt.eq y $, \ además $y- epsilon<x = y < x+epsilon$ entonces $y lt.eq x$ y por lo tanto $x=y$.]
]  \ #proof[#text(fill:olive)[
  Supongamos que $x < y + epsilon$ para todo $epsilon > 0$. Queremos probar que $x <= y$.

  Procedamos por contradicción. Supongamos que $x > y$. Entonces $d := x - y > 0$. Tomemos $epsilon = d/2 = (x - y)/2 > 0$. Por hipótesis, tenemos
  $ x < y + epsilon = y + (x - y)/2 = (2y + x - y)/2 = (x + y)/2. $
  Multiplicando ambos lados por $2$ obtenemos $2x < x + y$, lo que implica $x < y$. Esto contradice la suposición $x > y$. Por lo tanto, debe cumplirse $x <= y$.

  Ahora, supongamos que $|x - y| < epsilon$ para todo $epsilon > 0$. Aplicando el resultado anterior con $x$ y $y$ intercambiados, tenemos que $|x - y| < epsilon$ implica tanto $x <= y$ como $y <= x$ (pues $|x-y| = |y-x|$). De aquí concluimos que $x = y$.
]]
  



+ - (a) Sean $x,y in RR$ tales que $y-x>1$. Pruebe que existe un entero entre $x$ e $y$. \ #proof[#text(fill:blue)[Sea $S={n in ZZ: n>x}$ el conjunto de todos los enteros mayores que $x$, sea $i = min(S)$, como es mínimo cumple que 
$i-1lt.eq x < i then x<i+1$ ]]
  - (b) Sean $x,y in RR$ tales que $x<y$. Pruebe que existe un racional entre $x$ e $y$.
  - (c) Sean $x,y in QQ$ tales que $x<y$. Pruebe que existe un irracional entre $x$ e $y$.
  - (d) Sean $x,y in RR$ tales que $x<y$. Pruebe que existe un irracional entre $x$ e $y$.\ #proof[agregar]


+ Sea $A subset.eq RR$ no vacío y acotado inferiormente. Pruebe la siguiente equivalencia:\ $ i = inf A arrow.l.r.double.long cases(
  i lt.eq "para todo" a in A,
  "para todo" epsilon > 0 "existe" a in A "tal que" i<a<i+epsilon.
) $ \ #proof[agregar]


+
$exists.not x in A $ tal que $a lt.eq x < a + epsilon$, entonces $a+epsilon$ es cota inferior por definición, luego $c = (a+a+epsilon)/2 = a+epsilon$, pero $a>x gt.eq a+epsilon$ absurdo, por lo tanto a es infimo