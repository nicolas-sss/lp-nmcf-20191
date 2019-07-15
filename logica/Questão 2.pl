% Premissas
p(deus).
q(amor).
q(steve_wonder).
r(?).

entao(X,Y) :-
    X,\+ Y -> false;
    true.

/** Querys

entao(X,Y) equivale a operação Se p, então q.(p -> q)

a)
  p(x) -> x é amor
  q(x) -> x é cego
  .:r(x) -> x é deus
  
  (1) p(x) - proposição
  (2) q(x) - proposição
  (3) p(x) ^ q(x) - conjunção em (1) e (2)
  ----------------------------------------
  
  p(deus) ^ q(amor) ^ q(steve_wonder)
  ____________________________
  .: r(steve_wonder)
  
  Não é possível afirmar esta conclusão, pois p(x)^q(x)^q(x) -> r(x) não é 
  uma tautologia. Portanto este argumento é uma falácia.
  
  consulta: entao(\+r(steve_wonder), \+ (p(deus);q(amor);q(steve_wonder)))
  
*/
