/*

Exercise 6:

All mothers like their son if he's good.
All mothers are woman.
Ana is a woman.
The Ana's husband is good.
Does any woman who like some husband exist?

Domain: People

Functions:
  good(X) -> X is good
  like(X, Y) -> X likes Y
  mother(X, Y) -> X is mother of Y
  woman(X) -> X is a woman
  husband(X, Y) -> X is husband of Y

Query:
  woman(Y), husband(X, Y), like(Y, X).

Solution:
  -- solution --

I don't know if this problem is created to find the exception and learn from it.
If you know how to plan a valid solution, make a pull request with it. Thanks!

Write code bellow this

*/

like(X, Y) :- mother(X, Y), good(Y).
woman(X) :- mother(X, Y).
woman(ana).
good(anasHusband).
husband(anasHusband, ana).
