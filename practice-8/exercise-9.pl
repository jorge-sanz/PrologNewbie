/*

Exercise 8:
Say yes if a list is in a decreasing number order.

*/

decreasing([H1,H2]) :- H1 >= H2.

decreasing([H1,H2|T]) :- H1 >= H2, decreasing([H2|T]).
