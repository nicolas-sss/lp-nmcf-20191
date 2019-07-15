% fatos
amava(carlos, dora).
amava(dora, lia).
amava(lia, léa).
amava(léa, paulo).
amava(paulo, juca).
amava(juca, dora).
amava(dora, carlos).
amava(dora, rita).
amava(rita, dito).
amava(dito, rita).
amava(rita, carlos).
amava(dora, pedro).
amava(pedro, filha).
amava(filha, carlos).
amava(dora, léa).
amava(dora, paulo).
amava(dora, juca).
amava(dora, dito).
amava(dora, carlos).
amava(dora, filha).

% Regras
rivais(X,Y) :-
    amava(X,Z),
    amava(Y,Z),
    \+ X = Y.

casal(X,Y) :-
    amava(X, Y),
    amava(Y, X),
    \+ X = Y.

/** Querys
a) amava(carlos, X).

b) rivais(X, Y).

c) Código que mostra os casais excluindo as duplicatas:
setof((X,Y),casal(X,Y),Casais), member((X,Y), Casais), \+ (Y@<X, member((Y,X), Casais)).
*/