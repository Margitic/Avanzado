#import "ambiente.typ": *
#show: configuracion

= Entrega Práctica 1

=== Segundo Cuatrimestre 2025, Comisión Turno Tarde

+ Sea $(a_n)_n$ una sucesión convergente a $L$. Sea $b in RR$ distinto de $L$. Probar que existe $n_0 in NN tq forall n>=n_0 "se tiene que" a_n != b.$

  #proofb[
  Como $a_n$ converge a $L$, sé que $forall epsilon>0, exists n_1 tq |a_n-L| < epsilon, forall n>=n_1$\
  Sabemos también que $L != b "por lo tanto" |b-L| >0.$\
  Quiero ver que existe $n_0 tq forall n>=n_0 "se tiene que" a_n!= b$, supongamos que no, luego \
  $forall n_0, exists n>=n_0 tq a_n = b$\
  Tomemos $n_0 = n_1 "y" epsilon = |b-L| >0$ \
  Luego tenemos que $|a_n - L|<|b-L| forall n>=n_0$\
  Pero sabemos que existe un $n_b >=n_0 tq a_n_b = b$, luego \
  $|a_n_b-L| = |b-L| <|b-L| abs$\
  $therefore exists n_0 in NN tq forall n>=n_0" se cumple que" a_n != b.$
]

+ Sea $(a_n)_n$ una sucesión de números reales. Consideremos la sucesión\
 $ sigma_n := (a_1 + a_2 + dots + a_n)/n $
  #incisos[
    + Supongamos que $(a_n)_n$ converge a $L$. Probar que $(sigma_n)_n$ converge a $L.$
      
      #proofg[
        agregar
      ]  

    + Si $(sigma_n)_n$ converge a $L.$ ¿Es cierto que $(a_n)_n$ converge a $L?$

      #proofg[
        agregar
      ]  
  ]