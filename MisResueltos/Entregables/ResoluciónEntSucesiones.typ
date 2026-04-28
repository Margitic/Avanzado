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
        Como $a_n$ converge a $L$, sé que $forall epsilon>0, exists n_0 tq |a_n-L| < epsilon, forall n>=n_0.$\
        Quiero ver que $forall delta>0, exists n_1 tq |sigma_n-L| < delta, forall n>= n_1.$\
        Reescribamos a $L$ como $L = (n.L)/n$
        $ |sigma-L| &=  |(a_1 + a_2 + dots + a_n)/n-(n.L)/n|\
        &= |(a_1 + a_2 + dots + a_n -n.L)/n| \
        &"(recordemos que" n.L = overbrace(L+...+L, n "veces")")" \
        &= |(a_1-L + a_2-L + dots + a_n-L)/n| \
        &= |(a_1-L)/n+...+(a_n-L)/n|\
        &"por desigualdad triangular tenemos que"\
        &<= |(a_1-L)/n|+...+|(a_n-L)/n| $\
        
        Tenemos finitos terminos menores a $n_0$, tomamos $M = max{|a_1-L|,...,|a_(n_0-1)-L|}$\
        Luego $forall i < n_0, (|a_i-L|)/(|n|)<=M/n$\
        Tenemos $(n_0 -1)$ terminos acotados por $M/n$, luego \
        
        $ sum_(i=1)^(n_0-1) |(a_i-L)/n| <= M(n_0-1)/n $\
        En todos los terminos mayores a $n_0$ tendremos que $|a_n-L|<epsilon, then (|a_n-L|)/(|n|)< epsilon/n $\
        
        tenemos $(n-(n_0-1))$ terminos acotados por $epsilon/n$, luego\
        $ sum_(i=n_0)^(n) |(a_i-L)/n| <= epsilon(n-(n_0-1))/n <= epsilon $\
        Juntando todo obtenemos que la sucesión esta acotada por\
        $ |sigma_n-L| <= M(n_0-1)/n +epsilon $ \
        Finalmente, dado $delta>0$, elijo $epsilon = delta/2$\
        Luego, tomando $n_1 > M(n_0-1)/epsilon$ obtengo $M(n_0-1)/n < epsilon, forall n>= n_1$ y\
        $ |sigma_n-L| < 2epsilon = delta, forall n >= n_1 $
        $therefore (sigma_n) tiendeinf L.$
      ]  

    + Si $(sigma_n)_n$ converge a $L.$ ¿Es cierto que $(a_n)_n$ converge a $L?$

      #proofg[
        Falso, sea $L = 0, (a_n) = (-1)^(n)$\
        Vemos que $sigma_n tiendeinf 0$ pero sabemos que $a_n$ no converge pues oscila entre $-1$ y $1.$ 
      ]  
  ]