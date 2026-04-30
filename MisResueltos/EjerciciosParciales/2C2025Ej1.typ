#import "../ambiente.typ": *
#show: configuracion

$bold("Ejercicio"1.)$ Calcular, si existe, el supremo y el ínfimo de 
$ A = {m/(m+n): m in NN, n in NN} $
#proofb[
Propongo ínfimo= 0\
- ¿Es $0$ cota inferior? Sí, pues $n,m >0$, luego $m/(m+n)>0, forall m,n in NN$
- Quiero ver que $forall epsilon>0, exists a in A tq a<0+epsilon$\
  Por principio de Arquimedes se que existe un racional entre $epsilon>0$ y $0 tq$ $epsilon>1/k >0$ con $k in NN$\
  si tomamos $m= 1, k = 1+n$ tenemos $epsilon > 1/k > 0, 1/k in A.$
]