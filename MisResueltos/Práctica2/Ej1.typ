#import "../ambiente.typ": *
#show: configuracion

$bold(1.)$ Halle el cardinal de los siguientes conjuntos:
#incisos[
  + $ZZ_(<=3)$
      
      #proofb[
      $ZZ_(<=3)~NN$ luego busco una función biyectiva, propongo:
      $ f(x)= -x-2 "función bien definida" $
      $ f^(-1) = -x-2 => f compose f^(-1)(x) = x $
      Por lo tanto $f$ es biyectiva.
    ]

  + $5ZZ$

    #proofb[
      $5ZZ~ZZ ~NN$ luego busco una función biyectiva que vaya de $5ZZ$ a $ZZ$, propongo:
      $ f(x)= x/5 $ como posee inversa la función es biyectiva.
    ]

  + $ZZ times NN$

    #proofb[
      $ZZ times NN~ NN$ en vez de buscar una función biyectiva, podemos usar el teorema de CSB y encontrar dos funciones inyectivas:\
      para ver que $hash NN <= hash ZZ times NN$ propongo\
       $ f: NN -> ZZ times NN, f(n)=(n,n) $
       para ver que $hash ZZ times NN <= NN$ propongo\
       $ h: ZZ times NN -> NN, h(z,n) =cases(2^z.3^n "si" z>=0, 5^|z|.7^n "si" z<0 ) $ 
       Por Teorema de CSB $hash NN = hash ZZ times NN.$
    ]

  + $(-1,1)inter QQ$

    #proofb[
      $~QQ$
      $ f(x)=  x/(1+|x|)$
    ]
]