/*

Exercise 4:

Queries and replies:

(a) ?- f(s(1), A).
A = two.

(b) ?- f(s(s(1)), two).
false.

(c) ?- f(s(s(s(s(s(s(1)))))), C).
C = one.

(d) ?- f(D,three).
D = s(s(1)) .

*/

f(1,one).
f(s(1),two).
f(s(s(1)),three).
f(s(s(s(X))), N) :- f(X, N).
