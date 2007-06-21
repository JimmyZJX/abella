sub S top.

sub (var X) (var X).

sub (var X) T :- bound X U, sub U T.

sub (arrow S1 S2) (arrow T1 T2) :- sub T1 S1, sub S2 T2.

sub (all U (x\ S2 x)) (all U (x\ T2 x)) :-
    pi x\ (bound x U => sub (S2 x) (T2 x)).
