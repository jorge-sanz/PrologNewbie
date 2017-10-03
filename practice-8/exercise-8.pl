/*

Exercise 8:
Say yes if a list is in a numeric order.

*/

growing([H1,H2]) :- H1 =< H2.

growing([H1,H2|T]) :- H1 =< H2, growing([H2|T]).
