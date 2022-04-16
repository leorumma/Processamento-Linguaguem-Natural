parent(pam,bob).
parent(tom,bob).
parent(tom,liz).
parent(bob,ann).
parent(bob,pat).
parent(pat,jim).

male(bob).
male(tom).
male(jim).
female(pam).
female(liz).
female(ann).
female(pat).

father(X,Y):-
    parent(X,Y),
    male(X).

mother(X,Y):-
    parent(X,Y),
    female(X).

grandparent(X,Z):-
    parent(X,Y),
    parent(Y,Z).

sister(X,Y):-
    parent(Z,X),
    parent(Z,Y),
    female(X),
    X \= Y.

hasachild(X):-
    parent(X,Y).

happy(X):-
    parent(X,Y).

hastwochildren(X):-
    parent(X,Y),
    sister(Z,Y).
    
grandchild(X,Z):-
    parent(Y,X),
    parent(Z,Y).

%tentativa 1, não da certo
%Quando o avo tem duas filhas meninas, então.
%A mãe é confundida como tia.
%Olhar se o avo tem filha menina não é boa ideia
aunt_tentativa1(TIA,SOBRINHO):-
    parent(PAI_SOBRINHO,SOBRINHO),
    parent(AVO_SOBRINHO,PAI_SOBRINHO),
    parent(AVO_SOBRINHO,TIA),
    female(TIA).

aunt(TIA,SOBRINHO):-
    parent(PAI_SOBRINHO,SOBRINHO),
    sister(TIA,PAI_SOBRINHO).