#import "../ambiente.typ": *
#show: configuracion

$bold(5.)$ Sea $(A_n)_(n in NN)$ una sucesión de conjuntos y sea $A= union _(n in NN) A_n.$ 
  #incisos[
    + Encuentre una sucesión $(B_n)_(n in NN)$ de conjuntos disjuntos dos a dos tales que: \
      
      - $B_n subset.eq A_n, forall n in NN,  "y"$

      - $union _(n<=m)B_n = union_(n<=m)A_n, forall m in NN$ 

      #proofb[
        
        Tenemos que $B_n subset.eq A_n, forall n in NN$, por lo tanto $B_1 subset.eq A_1, B_2 subset.eq A_2,dots, B_n subset.eq A_n$, y además queremos que todos los conjuntos de $B$ sean disjuntos entre si, esto es:\
        $ B_i inter B_j = emptyset, forall i,j <= n $
        Tomo $B_1 = A_1$, después tomo $B_2 = A_2 backslash B_1$, de esta manera garantizamos que $B_1 inter B_2 = emptyset, B_1 subset.eq A_1, B_2 subset_eq A_2$. Con esta misma lógica seguimos definiendo inductivamente los terminos de $B_n, B_3 = A_3 backslash B_1 backslash B_2, dots, B_n = A_n backslash B_1 backslash dots backslash B_(n-1).$\
        Veamos también que se cumple la segunda condición:\
        $ B_1 = A_1\
          B_1 union B_2 = A_1 union (A_2 backslash B_1) = A_1 union (A_2 backslash A_1)= A_1 union A_2 $ pues $B_1 = A_1$, como la sucesión $(B_n)$ solo quita posibles elementos repetidos sin perder los nuevos elementos agregados en cada $n in NN$ se tiene que: 
          $ union _(n<=m)B_n = union_(n<=m)A_n, forall m in NN $
        ]

    + Pruebe que para toda sucesión $(B_n)_(n in NN)$ como arriba se tiene que $A = union_(n in NN)B_n.$
  ]

