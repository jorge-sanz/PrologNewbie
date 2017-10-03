/*

Exercise 3:
Add list items.

*/

add([], Sum) :- Sum is 0.
add([X|Y], Sum) :- add(Y, S), Sum is X + S.
