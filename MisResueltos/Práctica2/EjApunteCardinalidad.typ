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