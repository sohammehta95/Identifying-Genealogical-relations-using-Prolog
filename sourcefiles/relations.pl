%%% The rules are in the format such that father(X,Y) means that Y is the father of X
%%% For e.g.  father(julia,alex) means that Alex is father of Julia



:- include(final).


%%% We will also make rules in such a way that Y has relation with X

parent(X,Y):-
	father(X,Y),
	not(X=Y).

parent(X,Y):-
	mother(X,Y),
	not(X=Y).

grandfather(X,Y):-
	father(X,Z),
	father(Z,Y),
	X\=Y.

grandfather(X,Y):-
	mother(X,Z),
	father(Z,Y),
	X\=Y.

grandmother(X,Y):-
	mother(X,Z),
	mother(Z,Y),
	X\=Y.

grandmother(X,Y):-
	father(X,Z),
	mother(Z,Y),
	X\=Y.

brother(X,Y):-
	parent(X,Z),
	parent(Y,Z),
	male(Y),
	X\=Y.

sister(X,Y):-
	parent(X,Z),
	parent(Y,Z),
	female(Y),
	X\=Y.

ancestor(X,Y):-
	parent(X,Y),
	X\=Y.
	
ancestor(X,Y):-
	parent(X,Z),
	ancestor(Z,Y).


uncle(X,Y):-
	parent(X,Z),
	brother(Z,Y).


aunt(X,Y):-
	parent(X,Z),
	sister(Z,Y).

has_son(X):-
	parent(Y,X),
	male(Y).

married(X,Y):-
	husband(X,Y);
	husband(Y,X).
