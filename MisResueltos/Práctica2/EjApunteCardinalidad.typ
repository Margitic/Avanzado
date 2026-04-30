#import "../ambiente.typ": *
#show: configuracion

== Ejercicios de las notas de Cardinalidad
\
\

$bold("Ejercicio" 9.)$ Probar que $NN tilde.op QQ.$

#proofb[
 Sabemos que $NN tilde.op ZZ$ y que $NN tilde.op QQ^+$, por transitividad, basta con ver que $ZZ tilde.op QQ$ para probar que $NN tilde.op QQ.$\
 Tomando $f(n)$ la función definida en el ejemplo 13)c), es fácil notar que con la misma lógica se podría definir una funcion biyectiva $h(n) : ZZ backslash {NN union 0} -> QQ^-$ donde todos los enteros negativos van a parar a los racionales negativos.\
 Sea nuestra función biyectiva $h: ZZ -> QQ$ definimos: $ h(z) = cases(f(z) "si" z>0,
                            0 "si" z = 0,
                            h(z) "si z < 0") $
Finalmente, sea $x(n) : NN -> ZZ$ función biyectiva definida en 13)b) tenemos que:\
$ x compose h(n): NN -> QQ$ biyectiva por composición de funciones biyectivas.
]

$bold("Ejercicio" 10.)$ Probar que $hash A<= hash B$ si y solo si existe una función sobreyectiva $g : B -> A.$
#proofb[
  Ida$=>$\
  Tenemos que $hash A <= hash B$, por lo tanto sabemos existe una función inyectiva $f: A ->B$, entonces $forall x,y in A, f(x)=f(y) iff x = y. $ Por lo que todo elemento de $A$ se le asigna un único elemento de $B$. \
  $bold("Recordemos:")$ una función $f: A -> B$ se dice sobreyectiva si $forall y in B, exists x in A tq f(x)=y.$\
  Teniendo en cuenta lo anterior podemos definir una función $g: B -> A$ sobreyectiva, para esto necesitamos que para todo $a in A$ exista $b in BB tq g(b) = a$\
  $ g(b) = cases( a "si" b = f(a) "(este a es único pues f es inyectiva)", a_0 "si" b in.not "Im"(f) (a_0 "un elemento cualquiera de "A)) $\
  Vuelta $arrow.double.l$\
  Tenemos una función $g: B -> A$ sobreyectiva, queremos ver que existe una función $f: A ->B$ inyectiva. \
  $bold("Duda de escritura:")$ tendría que definir a f de manera tal que $forall a in A$ se le asigne un único elemento de $b$, como $g$ es sobreyectiva se que en la preimagen de $g$ cada elemento $a in A$ tiene uno o mas elementos de $b tq g(b) = a.$
]