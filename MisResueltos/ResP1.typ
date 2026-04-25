#import "@preview/theorion:0.4.1": *
#import cosmos.fancy: *
#show: show-theorion

#set page("a4")
#set text(lang: "es")
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

#proposition[
    (Densidad de $QQ$). Sean $x,y in RR$, con $x<y$. Entonces existe $q in QQ tq x < q <y$.
    #proof[#text(fill:blue)[Como $x<y$, tenemos que $y-x>0.$ Por Arquímedes, sabemos que existe $n in NN tq y-x>1/n>0.$ Multiplicando la desigualdad por $n$(que es positivo), tenemos \
    #centered-bold-eq($n(y-x)>1 then n.y-n.x > 1$) 
    #centered-bold-eq($n.y > n.x +1, "sea" floor(n.x) in ZZ tq floor(n.x)lt.eq n.x < floor(n.x)+1$) Llamamos $m = floor(n.x)+1$, volviendo a dividir por $n$ nos queda
    #centered-bold-eq($n.x < m < n.y then x < m/n <y.$)
    Tomando $q = m/n$ obtenemos lo que queríamos probar. ]]
]
#exercise[
    De ejemplo 4. Probar que $s = root(,2)$ es el supremo en $RR "de" A = {r in QQ: r²<2}$
#proof[#text(fill:olive)[
    - ¿$s$ es cota superior? Sí pues por definición del conjunto todo elemento de $A$ cumple $r² < 2 then |r| < root(,2) then -root(,2)<r<root(,2) $
    - ¿$forall epsilon>0, exists a in A tq s-epsilon < a$? Supongo que no, entonces existe $a in A tq a <= root(,2)-epsilon$ para algun $epsilon>0, root(,2)-epsilon < root(,2), $ como estamos en los reales por ejercicio 2 inciso b de la guia 1 sabemos que existe $q in QQ tq root(,2)-epsilon < q < root(,2)$ por lo tanto $q in A "y" root(,2)-epsilon $ no es cota superior de A. Luego $root(,2)$ es el supremo de $A$.   
]]]

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
$i-1lt.eq x < i then x<i+1$. ]]
  - (b) Sean $x,y in RR$ tales que $x<y$. Pruebe que existe un racional entre $x$ e $y$. \ #proof[#text(fill:blue)[
    Demostrado en Proposición 1
  ]]
  - (c) Sean $x,y in QQ$ tales que $x<y$. Pruebe que existe un irracional entre $x$ e $y$. \ #proof[#text(fill:blue)[
    agregar
  ]]
  - (d) Sean $x,y in RR$ tales que $x<y$. Pruebe que existe un irracional entre $x$ e $y$.\ #proof[#text(fill:blue)[
    agregar
    ]]

+ Sea $A subset.eq RR$ no vacío y acotado inferiormente. Pruebe la siguiente equivalencia:\ $ i = inf A arrow.l.r.double.long cases(
  i lt.eq "para todo" a in A,
  "para todo" epsilon > 0 "existe" a in A "tal que" i lt.eq a<i+epsilon.
) $ \ #proof[#text(fill:blue)[
     $then$ 
     - i = inf $ A$, por lo tanto es cota inferior y cumple $i lt.eq a, forall a in A$. Supongamos existe $epsilon>0 "tal que" i+epsilon lt.eq a, a in A$, sea $j = i + epsilon$ tenemos que $j$ es cota inferior y $j > i$ Absurdo pues $i = inf(A),$ Luego $forall epsilon>0, exists a in A tq a < i+ epsilon$.
     $vuelta$
     - $i lt.eq a, forall a in A$, supongo $j$ cota inferior, $j> i$, tomo $epsilon = j -i, epsilon>0$, sabemos que $forall epsilon>0 exists a in A tq i < a < i + epsilon, then a < i + epsilon = i + (j-i) = j, then a < j$ Absurdo pues $j$ era cota inferior, luego la mayor de las cotas inferiores de $A$ es $i$.  
]]


+ Halle, si existen, supremo, ínfimo, máximo y mínimo de los siguientes subconjuntos de $RR$, y pruebe que lo son:
    - (a) $A= (a,b]$ \ #proof[#text(fill:blue)[
        supremo y máximo = $b$, ínfimo = $a$, no posee mínimo.\
        $b$ es cota superior de $A$ pues $x lt.eq b, forall x in A$, supongamos existe $b' < b$ cota superior, pero $b in A$, luego $b'$ no puede ser cota superior y $b = sup(A)$, como tambíen pertenece al conjunto, $b = "máximo"(A).$\
        $a lt.eq x, forall x in A$, por lo tanto $a$ es cota inferior de $A$, supongamos que $a$ no es cota inferior, luego para algún $x in A, epsilon>0, x gt.eq a + epsilon,$ por lo tanto $a+ epsilon$ es cota inferior, sea $c = (a + (a+epsilon))/2 = a + epsilon/2, "luego" a < a + epsilon/2 < a + epsilon$, pero $a+epsilon/2 $ pertenece a $A$, por lo que $a+ epsilon$ no puede ser cota inferior, luego $a$ es infímo y como no pertenece al conjunto no existe mínimo.  
    ]]
    - (b) $B ={1/2^n:n in NN}$ \ #proof[#text(fill:blue)[
        Propongo supremo y máximo$= 1/2$
        - $¿1/2 gt.eq b, forall b in B? cool "pues" 1/2 >= 1/(2^n), forall n in N $
        - ¿$forall epsilon >0, exists b in B tq b > 1/2 - epsilon$ \
            $1/(2^n)> 1/2 - epsilon, 1/(2^n) <= 1/2 then 1/2 > 1/2 - epsilon then 0 > -epsilon $ verdadero $forall epsilon >0.$ Luego $1/2$ es el supremo de $B$, al pertenecer tambien es el máximo.
    Propongo $inf = 0$ y no posee mínimo
    - $0 <= b, forall b in B $ ya que $1/2^n>= 0, forall n in N$, luego $0$ es cota inferior de $B$
    - $forall epsilon > 0, exists b in B tq b < 0 + epsilon then b < epsilon$, \
        $1/2^n < epsilon then 1 < epsilon.2^n "pues" 2^n >0, forall n in N$ aunque $epsilon$ pueda ser un número extremadamente pequeño, es un número fijo siempre mayor a $0$, mientras que $2^n arrow infinity_(n arrow infinity), $ luego existirá $n in NN tq forall epsilon>0, 1 < epsilon.2^n$ por lo tanto $exists b in B tq b<epsilon$ y como 0 no esta contenido en el conjunto no existe mínimo.
    ]]
    - (c) $B union{0}$
    #proof[#text(fill:blue)[idem ejercicio anterior]]
    - (d) ${x² -x-1: x in RR}$

+ Sean $A subset.eq B subset.eq RR,$ con $A novacio$. Pruebe las siguientes afirmaciones:
    - (a) Si $B$ está acotado superiormente, entonces $A$ también lo está, y $sup A lt.eq sup B.$ \ #proof[#text(fill:blue)[
        $B$ está acotado superiormente, por Axioma de Completitud tiene supremo, como $A$ esta contenido en $B$ tenemos que $a in B, forall a in A$, supongamos que $A$ no está acotado, luego existe algún $a in A, a> sup(B), then sup(B)<a, a in B$ absurdo por definición de supremo, luego $A$ es acotado superiormente, por Axioma de Completitud también posee supremo y al estar contenido en $B$ se tiene que $sup A lt.eq sup B$.
    ]]
    - (b) Si $B$ está acotado inferiormente, entonces $A$ también lo está, e $inf B lt.eq inf A.$ \ #proof[#text(fill:blue)[
        $B$ acotado inferiormente, luego $-B$ acotado superiormente e $inf(B)= sup(-B)$ por Axioma de Completitud, como $A subset.eq B$ se tiene que $a in B, forall a in A$, luego $inf(B) lt.eq a, forall a in A$, por lo tanto $A$ esta acotado inferiormente e $inf(B) lt.eq inf(A).$ 
    ]]
    - (c) Si $A$ no está acotado, entonces $B$ tampoco lo está. \ #proof[#text(fill:blue)[Supongamos, sin perdida de la generalidad que $B$ esta acotado superiormente, luego existe $b = sup(B)$, como $A$ no está acotado, $exists a in A tq a > sup(B), "pero" a in B, forall a in A$, absurdo pues $b$ es el supremo de $B$. Por lo tanto $B$ no está acotado.]]

+ Dados un conjunto de números reales $A$ y $ c in RR$, denotamos $c.A = {c.a: a in A}$. Más aun, $-A$ denotará al conjunto $(-1)A$. Pruebe las siguientes afirmaciones.
    - (a) Si $A$ está acotado superiormente, entonces $-A$ está acotado inferiormente e $inf(-A)= -sup A$. \ #proof[#text(fill:blue)[
        sea $s = sup(A), qvq inf(-A) = - s$
        - $a lt.eq s, forall a in A$, luego $-a gt.eq -s$ y $-s$ es cota inferior de $-A$
        - si $t$ es cota superior de $A$, $-t$ es cota inferior de $-A$, luego $-t lt.eq s then t gt.eq -s$
    ]]
    - (b) Si $c>0$ y $A$ está acotado superiormente, entonces $c.A$ está acotado superiormente y $sup(c.A)=c.sup(A)$. \ #proof[#text(fill:blue)[
        Sea $s = sup(A):$
        - $x lt.eq s, forall x in A$, como $c>0 then c.x lt.eq c.s$
        - $forall epsilon>0, exists x in A tq s-epsilon < x$, como $c>0 then c(s-epsilon) lt.eq c.x, then c.s - c.epsilon lt.eq c.x$ si tomamos $delta = c.epsilon >0$ obtenemos $c.s - delta lt.eq c.x$ y esto es la definición de supremo, luego $sup(c.A) = c.sup(A)$.
    ]]

== Ejercicios dejados en el apunte Sucesiones

#exercise[
    Pensar cuáles de las siguientes propiedades sigue valiendo si tomamos $a = plus.minus infinity $ y $b in RR$, o si $a = - infinity, b = + infinity.$
        + $limits("lím")_(n arrow infinity) (c. a_n)= c.a, forall c in RR.$

        + $limite (a_n + b_n) = a+b.$

        + $limite (a_n.b_n) = a.b.$

        + Si $b eq.not 0, then limite (a_n /b_n)=a/b.$

        + Si $a_n <= b_n, forall n >= n_0 then a <= b.$
    #proof[#text(fill:olive)[
        + + Vale pues $c.|infinity| = |infinity|, forall c in abs(RR)$, la sucesion es divergente y eso no cambia al ser multipicada por un $c$.
          + No aplica.
        + + Vale pues $b + |infinity| = |infinity|, forall b in RR$, sumar cualquier sucesión acotada a una divergente no modifica su divergencia(?).
          + No vale, $infinity - infinity$ es una indeterminación.
        + + Vale siguiendo la misma logica que el $1.1.$
          + No vale, $(-infinity).infinity$ es una indeterminación.
        + + Vale pues $(|infinity|)/b = |infinity|, forall b in RR.$
          + No vale, $(-infinity)/infinity$ es una indeterminación.
        + + Absurdo pues $limite a_n = |infinity|$, por lo tanto es una sucesion divergente y existira $n_0 tq |a_n| > |b|, forall b in RR$ \ (se tendría que separar en casos para ser mas correctos, porque si el lim tiende a menos infinito y b es positivo si se cumple, pero en lineas generales es falso por eso use modulo.)
          + Verdadero, pues ambas sucesiones son divergentes y es trivial observar que $-infinity < infinity$
    ]]
]

#exercise[
    Decidir si es verdadera o falsa la siguiente afirmación: si $(a_n)_(n in NN)$ no está acotada entonces $(a_n) "diverge a" plus.minus infinity.$
    
    #proof[#text(fill:olive)[
        Falso, veamos un contraejemplo: \
        $ a_n = cases(-n "si" n "es impar",
        n "si" n "es par")$ podemos ver que esta sucesión no esta acotada, pero tampoco diverge pues oscila entre valores positivos y negativos, sin llegar a tender a ninguno.
    ]]
]

#exercise[
    Sea $(a_n)$ una sucesión de números reales tal que $a_n -> a.$
    + Supongamos que $a > 0.$ Probar que existe un $n_0 tq a_n >= a/2, forall n >= n_0.$

    + Supongamos que $a < 0.$ Probar que existe un $n_0 tq a_n <= a/2, forall n >= n_0.$

    + Concluir, juntandos los ítems anteriores, que si $a_n -> a "y" a eq.not 0, then exists n_0 tq |a_n| >= (|a|)/2 > 0, forall n >= n_0.$  

    + Supongamos $a = 0.$ ¿Valen los ítems 1. y 2? Explicar o mostrar contraejemplo.

    #proof[#text(fill:olive)[
        
        1. $limite (a_n) = a, "con" a>0.$ Por definición de límite $exists n_0 tq |a_n - a| < epsilon, forall n >= n_0$. Tomemos 
            
            $epsilon = a/2 >0, then & |a_n -a| < a/2 \ & - a/2 < a_n -a < a/2, "sumando" a "en la desigualdad obtenemos"\ & a/2 < a_n < 3/2a \ & a_n > a/2, forall n >= n_0. $

        +  $limite (a_n) = a, "con" a<0.$ Por definición de límite $exists n_0 tq |a_n - a| < epsilon, forall n >= n_0$. Tomemos 
            
            $epsilon = - a/2 >0, then & |a_n -a| < -a/2 \ &  a/2 < a_n -a < - a/2, "sumando" a "en la desigualdad obtenemos"\ & 3/2a < a_n < a/2 \ & a_n < a/2, forall n >= n_0. $
    
        + Como $a eq.not 0, "tenemos dos casos posibles" a >0 or a <0$:
            - $a>0$ por 1. sabemos existe $n_0 tq forall n>= n_0, a_n > a/2, "y por ser positivo tenemos que" a = |a| and a_n = |a_n| then |a_n| > (|a|)/2 >0 $
            - $a<0$ por 2. sabemos existe $n_0 tq forall n>=n_0, a_n < a/2, "y por ser negativo tenemos que" -a = |a| and - a_n = |a_n|, "si multiplicamos por" $-1$ "la desigualdad del 2. obtenemos" - a_n > -a/2 "que es lo mismo que" |a_n| > (|a|)/2 > 0$

        + + $limite - 1/n = 0 "pero nunca ocurre que" a_n > 0/2 = 0 $
          
          + $ limite 1/n = 0 "pero nunca ocurre que" a_n < 0/2 = 0$     
    ]]
]

#exercise[
    Sea $(a_n)_(n in NN)$ creciente y no acotada. Probar que $a_n arrow + infinity.$

    #proof[#text(fill:olive)[
    $a_n "creciente y no acotada por lo que en particular es no acotada superiormente, entonces" forall M>0, exists n_M tq M < a_n_M and forall n_M, exists n > n_M tq a_n > a_n_M
    .$ En particular $a_n > a_n_M > M$ y esta es la definición de divergencia $therefore a_n arrow + infinity.$ 
    ]]
]

#exercise[
    Sea $A subset RR $ acotado superiormente. Entonces $s= sup A iff:$
        + $s$ es cota superior de $A$
        + Existe una sucesión monótona creciente $(a_n) subset A tq limite a_n = s.$

    #proof[#text(fill:olive)[
        Ida $=>$: 
         + Sea $s = sup A$ cumple por definición ser cota superior de $A$.
         + Sabemos que $sup A = s$ por lo tanto $forall epsilon >0, exists a in A tq s-epsilon < a$, si tomamos la sucesión $(a_n)= s- 1/n "podemos ver fácilmente que " limite a_n = s.$ y es estrictamente creciente pues cada vez se resta un monto menor. (mal)
         2. $epsilon = 1, "elegimos" a_1 in A tq s-1 < a_1 <= s, "por inducción tomamos" epsilon = 1/n, a_n in A tq s- 1/n < a_n <= s. $ \
         Definimos ahora una nueva sucesión tomando el máximo de los elementos anteriores: $ a_n = max{a_1...a_n}$ y asi garantizamos sea monótona creciente.

        Vuelta $arrow.double.l:$
         + $cool$
         + Sabemos existe sucesión monótona creciente que tiende a $s$, por lo tanto $forall epsilon>0, exists n_0 tq &|a_n-s|<epsilon, forall n>=n_0. \ & -epsilon < a_n-s < epsilon", sumando s obtenemos" \ & s- epsilon< a_n, forall n>= n_0$ \ y $a_n in A therefore s = sup A.$  
    ]] 
]

== Ejercicios 7 al 16

7. Pruebe, usando la definición de límite:
    - (a) $limite (3-2n)/(n+1)=-2.$ \
            #proof[#text(fill:blue)[
agregar
            ]]

    - (b) $limite sin(n)/n = 0.$ \
    #proof[#text(fill:blue)[
agregar
            ]]

    - (c) $limite (2^n-3)/(2^n+4)=1.$ \
    #proof[#text(fill:blue)[
agregar
            ]]

+ Sean $(x_n)_(n in NN) and (a_n)_(n in NN)$ sucesiones de números reales. Probar que si $|x_n-l| <= a_n, forall n in NN and a_n tiendeinf 0 then x_n tiendeinf l.$
   
   
   \ #proof[#text(fill:blue)[
        $"Sabemos que" 0 <= |x_n - l| <= a_n," por transitividad "a_n >=0, forall n in NN, " ademas sabemos que" a_n tiendeinf 0,\ "aplicando limite obtenemos" limite 0 <= limite|x_n-l| <= limite 0 \ then  0 <= limite |x_n -l| <= 0, "luego por lema del sandwich" limite|x_n-l| = 0 plq limite x_n = l.$
    ]]

+ Si $(x_n)_(n in NN) "e" (y_n)_(n in NN)$ son sucesiones de números reales tales que $x_n tiendeinf l_1 "e" y_n tiendeinf l_2,$ probar que $x_n + y_n tiendeinf l_1+l_2$ para el caso que:
    
    - (a) $l_1,l_2 in RR.$ \
        #proof[#text(fill:blue)[
        $"Sabemos que" forall epsilon>0 exists n_1,n_2 in NN tq |x_n-l_1|<epsilon/2 and |y_n-l_2|<epsilon/2, forall n>=n_1, n>=n_2" tomamos" n_0 = max{n_1,n_2}$\ queremos ver que $|x_n +y_n -(l_1+l_2)|<epsilon, forall n>=n_0$\
        $|x_n+y_n-(l_1+l_2)| = |x_n-l_1+y_n-l_2|$, por desigualdad triangular tenemos \
        $|x_n-l_1+y_n-l_2|<=|x_n-l_1|+|y_n-l_2| < epsilon/2 + epsilon/2 = epsilon, "finalmente "$ \
        $|x_n+y_n-(l_1+l_2)|< epsilon.$ 
      ]]
    
    - (b) $l_1 in RR and l_2 = infinity.$ \
        #proof[#text(fill:blue)[
        No sé ah $$
      ]]
    
    - (c) $l_1 = +infinity = l_2.$ \
        #proof[#text(fill:blue)[
        Ambas sucesiones divergen, por lo tanto $forall M>0, exists n_1,n_2 in NN tq x_n > M, forall n>= n_1 and y_n > M, forall n>=n_2. "Tomando" n_0 = max{n_1,n_2} "tenemos que "x_n + y_n > 2M >M, forall n>=n_0$, luego $x_n+y_n "diverge a" + infinity.$
      ]]
    
    - (d) Pensar por qué no vale en el caso de $l_1 = + infinity and l_2 = - infinity.$ Dar un contraejemplo. \
        #proof[#text(fill:blue)[
        $x_n = n and y_n = -n$ es facil ver que $x_n tiendeinf +infinity and y_n tiendeinf - infinity$ pero $x_n+y_n tiendeinf 0.$
      ]]

+ Sean $(x_n)_(n in NN), (y_n)_(n in NN)$ sucesiones de números reales tales que $x_n tiendeinf l_1 "e" y_n tiendeinf l_2.$ Pruebe que si $x_n <= y_n, forall n in NN, then l_1 <= l_2.$ \
    
    #proof[#text(fill:blue)[
        $"Supongamos que no, luego" l_1 > l_2 
        "tomemos" epsilon = (l_1-l_2)/2 >0 "la distancia entre ambos puntos"\
        "si expandimos la definición de límite obtenemos" \
        -epsilon < x_n - l_1 < epsilon \
        -epsilon< y_n -l_2 < epsilon \
        "si sumamos" l_1,l_2 "en sus respectivas desigualdades obtenemos" \
        x_n > l_1 - epsilon and y_n < l_2 + epsilon \
        x_n > (l_1+l_2)/2 and y_n<(l_1+l_2)/2 \
        "por transitividad obtenemos que a partir de un"n in NN \
        y_n < (l_1+l_2)/2 < x_n then y_n < x_n bold("Absurdo") "pues" x_n <= y_n forall n in NN. therefore l_1<= l_2.$
      ]]

+ Si $(x_n)_(n in NN) "e" (y_n)_(n in NN)$ son sucesiones de números reales tales que $(x_n)$ converge a $0$ e $(y_n)$ está acotada, pruebe que $(x_n.y_n)$ converge a $0.$
    
    #proof[#text(fill:blue)[
        $"Sabemos que" x_n tiendeinf 0 and forall M>0, exists n_1 in NN tq |y_n| < M, forall n>=n_1, "por definición de límite"\
        |x_n-0| < epsilon then |x_n|< epsilon, "como ambos terminos son positivos"\
        |x_n|.|y_n| = |x_n.y_n| < epsilon. M = macron(epsilon)\
        |x_n.y_n| = |x_n.y_n-0| < macron(epsilon), forall macron(epsilon)>0, therefore x_n.y_n tiendeinf 0.$
      ]]
    #proof([#text(fill:olive)[
        $"Mejor redactado" \
        "Sea" epsilon >0 qvq exists n_0 in NN tq forall n>=n_0, |x_n.y_n-0| < epsilon \
        "Sabemos que"y_n "esta acotada. Por definición existe un" M>0 tq |y_n| <M forall n in NN. \
        "Además sabemos que" limite x_n = 0. "Dado que" epsilon/M >0, exists n_0 in NN tq forall n>= n_0: \
        |x_n-0|< epsilon/M then |x_n| < epsilon/M \
        "Como sabemos que "|y_n|< M and |x_n| < epsilon/M "y puesto todos son valores positivos podemos multiplicar " \ "ambas desigualdades" 
        |x_n.y_n-0|=|x_n.y_n| = |x_n|.|y_n| < M.epsilon/M = epsilon \
        therefore |x_n.y_n-0| < epsilon, forall n >= n_0.$
    ]])

+ $"Sea" (x_n)_(n in NN) subset.eq RR "decreciente. Pruebe que:" $ 

    - $"(a) Si" (x_n)_(n in NN) "es acotada inferiormente, entonces tiene límite y" \
        limite x_n = inf{x_n:n in NN}.$
            
        #proof[#text(fill:blue)[
    $"Llamo" X = {x_n: n in NN}$ al conjunto que contiene todos los elementos de la sucesión $x_n$, como $X$ es acotado inferiormente y perteneciente a los reales entonces por Axioma de Completitud se que el conjunto posee un ínfimo, llamemoslo $i, tq i <= x_n, forall n in NN. qvq forall epsilon>0, exists n_epsilon tq |x_n - i| < epsilon, forall n >= n_epsilon$. Expandamos el modulo para obtener \
        $& -epsilon < x_n - i < epsilon$, por ser ínfimo sabemos existe un $n_epsilon in (x_n) tq x_n_epsilon < epsilon + i$ y como es una sucesion decreciente $x_n_epsilon < i + epsilon forall n>= n_epsilon$ \

        $i-epsilon < x_n, "Sabemos que" i <= x_n, forall n in NN and i-epsilon < i "pues" epsilon>0, "luego por transitividad" \
        i-epsilon < i < x_n, forall n in NN, "y en particular" forall n >= n_epsilon \
        therefore forall epsilon>0, exists n_epsilon tq |x_n-i| < epsilon.$
            ]]
    
    - $"(b) Si" (x_n)_(n in NN) "es no acotada inferiormente, entonces" x_n tiendeinf - infinity.$
       
        #proof[#text(fill:blue)[
            $"Decimos que la sucesión" (x_n)_(n in NN) "diverge a"-infinity "si para todo" M>0 exists n_0 in NN tq forall n>=n_0 "se tiene" x_n < -M.$ \
            Al no estar acotada inferiormente y ser una sucesión decreciente,\ $forall M>0, exists n_0 tq x_n < -M forall n>= n_0.$
        ]]

        #proof[#text(fill:olive)[
            La sucesión no está acotada inferiormente. Esto significa que no existe ningún número real $c tq c<= x_n, forall n.$\
            En particular, para cualquier $M>0, -M$ no puede ser cota inferior. Luego existe algun $n_0 in NN tq x_n_0 <-M.$\
            Como la sucesión es decreciente, $forall n >= n_0, x_n <= x_n_0 <-M.$\
            $therefore x_n tiendeinf - infinity.$
        ]]

+ Sea $A subset.eq RR$ acotado superiormente y no vacío. Pruebe que si $A$ no tiene máximo entonces existe $(a_n)_(n in NN) subset.eq A$ estrictamente creciente tal que $a_n tiendeinf sup(A).$

    #proof[#text(fill:blue)[
        Nota: falta agregar la condición que se aproxime al supremo, pueden pasar que sea creciente pero nunca llegue al supremo \
        Sabemos que el conjunto es acotado superiormente, no vacío y pertenece a los reales, por Axioma de Completitud tiene supremo, llamemoslo $s$. Además $A$ no tiene máximo, por lo tanto $a < s, forall a in A. $ \
        Creemos la sucesión, elijamos un $a_1 in A "cualquiera"$ \
        Luego, elijamos $a_2 in A tq a_2 > a_1$ \
        Y para todo elemento elijamos $a_(n+1)in A tq a_(n+1)> a_n, forall n in NN$ \
        Creamos asi una sucesión estrictamente creciente y contenida en $A$, por lo que $(a_n) < s, forall n in NN$ \
        $therefore forall epsilon>0, exists n_0 in NN tq |a_n-s| < epsilon, forall n>=n_0.$
    ]]

+ Sea $(x_n)_(n in NN) subset.eq RR$ una sucesión no acotada superiormente. Pruebe que existe una subsucesión $(a_n_k)_(k in NN)$ que diverge a $+infinity.$

    #proof[#text(fill:blue)[
        Nota: mismo error que en el 13, corregido en segunda demostración.\
        $x_n $ no acotada superiormente, luego $forall M>0, exists n_0 tq x_n_0 >M.$ \
        No puedo decir que vale $forall n >= n_0$ pues podria no suceder que la sucesión diverja (ver ejercicios de teórica). Ahora empezamos a crear una subsucesión tomando elementos de $x_n$. \
        Tomo $x_n_1 in (x_n)$ cualquiera. \
        Tomo $x_n_2 in (x_n) tq x_n_2 > x_n_1$(Se que existe tal elemento pues la sucesión es no acotada) \
        Y para todo elemento siguiente elijamos $x_n_(k+1) in (x_n) tq x_n_(k+1)> x_n_k$ \
        Asi obtuvimos una subsucesión estrictamente creciente y no acotada\
        Entonces $ forall M>0, exists k_0 in NN tq x_n_k > M, forall k >= k_0$ \
        $therefore (a_n_k) tiendeinf +infinity.$
    ]]

    #proof[#text(fill:olive)[
        Como $x_n$ no está acotada superiormente, para cada $M>0$ el conjunto ${x_n>M: n in NN}$ es infinito\
        Construimos la subsucesión por inducción \
        Para $k=1$ elegimos $n_1 tq x_n_1 >1$\
        Para $k>1$ elegimos $n_(k+1)>n_k "con" x_n_(k+1)>k+1$\
        Sabemos podemos encontrar el termino pues la sucesión es no acotada superiormente.\
        Finalmente tenemos una subsucesión tal que $forall M>0, exists k_0 tq x_n_k >k >=k_0 >M forall k>=k_0$ \
        $therefore x_n_k tiendeinf +infinity.$

    ]]

+ Sean $(x_n)_(n in NN) subset.eq RR and l in RR.$\
    
    Pruebe que si toda subsucesión $(x_n_k)_(k in NN)$ tiene una (sub)subsucesión $(x_n_k_j)_(j in NN)$ que converge a $l,$ entonces la sucesión $(x_n)_(n in NN)$ converge a $l.$

    #proof[#text(fill:blue)[
hola
    ]]

+ Sra $(x_n)_(n in NN) subset.eq RR$. Pruebe:

    - (a) Si $(x_(2k))_(k in NN) and (x_(2k-1))_(k in NN)$ son convergentes, y sus límites coinciden, entonces $(x_n)_(n in NN)$ es convergente.
      
        #proof[#text(fill:blue)[
hola
    ]]

    - (b) Si $(x_(2k))_(k in NN), (x_(2k-1))_(k in NN) and (x_(3k))_(k in NN)$ son convergentes, entonces $(x_n)_(n in NN)$ es convergente.

        #proof[#text(fill:blue)[
agregar
    ]]