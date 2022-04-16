point(X,Y).

quadrado(point(X1,Y1), point(X2,Y2), point(X3,Y3), point(X4,Y4)).

f(1,one).
f(s(1),two).
f(s(s(1)),three).
f(s(s(s(X))),N) :-
    f(X,N).