/** Querys
a) Duas opções de resposta:
1- {Actresses}/(findall(A,actress(_,A,_),All), sort(All, Actresses)). 
2- {All}/(setof(A,M^R^actress(M,A,R),All)).

b) {All}/(setof((A1,A2),M1^M2^A1^A2^R1^R2^R3^R4^((actor(M1, A1, R1) ; actress(M1, A1, R1)),(actor(M1, A2, R2) ; actress(M1, A2, R2)),(actor(M2, A1, R3) ;actress(M2, A1, R3)),(actor(M2, A2, R4) ; actress(M2, A2, R4)), not(A1 = A2),not(M1 = M2)), All)).

c) {FinalActresses,FinalActors}/(findall(A1,(movie(M1,Y1),actress(M1,A1,_), 0 =:= mod(Y1, 2)),Actresses),findall(A2, (movie(M2,Y2),actor(M2,A2,_), 0 is mod(Y2, 2)), Actors), sort(Actresses,FinalActresses), sort(Actors, FinalActors)).
*/