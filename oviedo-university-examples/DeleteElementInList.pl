/*

Delele an element from a list.

Query:
  ? - delete(1, [1, 2, 1, 3], V).

Solution:
V = [2,1,3] ;
V = [1,2,3] ;
no

Trace:
  Call: (7) delete(1, [1, 2, 1, 3], _G1033) ? creep
  Exit: (7) delete(1, [1, 2, 1, 3], [2, 1, 3]) ? creep
  V = [2, 1, 3] .

*/

delete(X, [X | Xs], Xs).
delete(X, [Y | Ys], [Y, Zs]) :- delete(X, Ys, Zs).
