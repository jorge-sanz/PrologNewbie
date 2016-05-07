/*

Search elements in a list.

Query:
  ?- belongsTo(pedro, [juan, maria, pedro]).

Solution:
  true.

Trace:
  Call: (7) belongsTo(pedro, [juan, maria, pedro]) ? creep
  Call: (8) belongsTo(pedro, [maria, pedro]) ? creep
  Call: (9) belongsTo(pedro, [pedro]) ? creep
  Exit: (9) belongsTo(pedro, [pedro]) ? creep
  Exit: (8) belongsTo(pedro, [maria, pedro]) ? creep
  Exit: (7) belongsTo(pedro, [juan, maria, pedro]) ? creep
  true .

*/

belongsTo(X, [X | Xs]).
belongsTo(X, [Y | Ys]) :- belongsTo(X, Ys).
