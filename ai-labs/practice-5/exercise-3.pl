/*

Exercise 3:
Marcos is blonde.
Juan is brown.
Pedro is Juan's father.
Marcos is Pedro's father.
Juan is Ramón's father.
One person is father of other one if this one is son of the first one.
One person is grandfather of other one (for example: p) if he's the
father of other one who is the father of p.
Marcos is son of Jorge.

Domain: People

Functions:
  isBlonde(X) -> X is blonde
  isBrown(X) -> X is brown
  fatherOf(X, Y) -> X is father of Y
  sonOf(X, Y) -> X is son of Y
  grandfatherOf -> X is grandfather of Y

Query:
  isBlonde(_), grandfatherOf(_, _)

Solution:
  true.

Write code bellow this

*/

isBlonde(marcos).
isBrown(juan).
fatherOf(pedro, juan).
fatherOf(marcos, pedro).
fatherOf(juan, ramon).
fatherOf(X, Y) :- sonOf(Y, X).
grandfatherOf(X, Z) :- fatherOf(X, Y), fatherOf(Y, Z).
sonOf(marcos, jorge).
