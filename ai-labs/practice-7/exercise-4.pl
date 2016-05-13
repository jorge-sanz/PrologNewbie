/*

Exercise 4:
Given the next prolog exercise:
q(X) :- p(X), X1 is X + 1, p(X1).
p(X) :- 0 is X mod 2.
and the query: ?- q(2).

Justify the answer:
q(X) discovers if X is an odd number. And 2 is a pair number.

*/

q(X) :- p(X), X1 is X + 1, p(X1).
p(X) :- 0 is X mod 2.
