#import "@preview/theorion:0.4.1": *
#import cosmos.fancy: *
#show: show-theorion

#set page(height: auto)
#set text(lang: "es")
#let centered-bold-eq(eq) = align(center, text(weight: "bold")[#eq])
#let then = $arrow.r.double$
#let iff = $arrow.r.l.double$



#show title: set align(center)
#title[Guia Práctica 1 1c2026]

== Comienzo por los ejercicios dejados en el apunte Supremos e ínfimos

#remark[
    El supremo de un conjunto, si existe, es único. \
    #proof[#text(fill:blue)[Supongamos que no es único, entonces existen por lo menos dos supremos $s,t$ con$ s eq.not t$, por definición de supremo ambos cumplen que son cotas superiores del conjunto y a su vez, son menores o iguales a todas las demas cotas superiores, luego \
    $s lt.eq t and t lt.eq s then s = t $ por lo tanto el supremo es único ]]
]

#exercise[Sean $a,b in RR,$ con $a<b$. Sea $A=(a,b).$ Probar que $b=sup(A)$
\ #proof[#text(fill:olive)[Queremos ver que b es el supremo de $A$, veamos que cumple la definición
1. b es una cota superior de $A$
verdadero pues $x lt.eq b, forall x in A.$
2. Si $t$ es cualquier otra cota superior de $A then b lt.eq t$
supongamos que existe t cota superior tal que $t <b,$ sea $epsilon = (t+b)/2, t < epsilon < b$, por lo que $epsilon in A "pues" epsilon<b and a lt.eq t < epsilon$, por lo tanto $b$ es la menor de las cotas superiores.]]]

#exercise[
    Sea $A subset.eq RR$ no vacío y acotado superiormente. Sea $C = {"cotas superiores de" A}$. Probar que:
    1. $C eq.not emptyset$ y acotado inferiormente
    2. $inf(C)= sup(A)$
    #proof[#text(fill:olive)[
        1. $A subset.eq RR$ es no vacío y acotado superiormente, por el Axioma de Completitud sabemos que tiene un supremo en $RR$, llamemoslo $s$, por Principio de Arquímedes existe $n in NN, s lt.eq n$, luego $n$ es cota superior de $A$ y por lo tanto $C eq.not emptyset$. Supongamos $C$ no esta acotado inferiormente, entonces para todo $c in C$ que elija puedo encontrar $k in C "tal que" k < c, s in C "por ser cota superior de "A, then exists k < s, k in C $ Absurdo pues $s$ es la menor de las cotas superiores de $A$, por lo tanto $A$ esta acotado inferiormente.
        2.  - ¿$s$ cota inferior de $C$? Sí, pues por definición $s$ es la menor de las cotas superiores de $A$, luego $s lt.eq c, forall c in C$
            - ¿es la mayor de las cotas inferiores? Supongamos que existe $i$ cota inferior tal que $s < i$, pero $s in C$ absurdo, luego $s = inf(C).$ 
    ]
    ]
]
== Ejercicios 1 al 6 
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
) $ \ #proof[#text(fill:blue)[
    
]]


+
