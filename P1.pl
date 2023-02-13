% is_in(L:List , X: Element)
% (i,i)
is_in([X|_],X).
is_in([_|T],X):- is_in(T,X).

% set_diff(A:Set , B: Set, R-The Result List)
% (i,i,o)
set_diff([],[_|_],[]).
set_diff([HA|TA],B,[HR|TR]):- \+ is_in(B,HA),
    HR is HA,
    set_diff(TA,B,TR).
set_diff([HA|TA],B,L):-   is_in(B,HA),
    set_diff(TA,B,L).


%add_1(L:List,R:The result list)
add_1([],[]).
add_1([H|T],[H|[1|TR]]):- mod(H,2) =:= 0,
    add_1(T,TR).
add_1([H|T],[H|TR]):- mod(H,2) =:= 1,
      add_1(T,TR).