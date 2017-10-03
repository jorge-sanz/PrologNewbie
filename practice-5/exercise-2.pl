/*

Exercise 2:

Everyone who help John live in Manolo's house.
Antonio helps all who work with.
All Carlos' friends work with Juan.
Antonio is friend of Carlos.
Who lives in Monolo's house?

Domain: People

Functions:
  help(X, Y) -> X helps Y
  friendOf(X, Y) -> X is friend of Y
  liveIn(X, Y) -> X lives in Y's house
  workWith(X, Y) -> X works with Y

Query:
  liveIn(X, manolo).

Solution:
  x = antonio.

*/

liveIn(X, manolo) :- help(X, juan).
help(antonio, X) :- workWith(antonio, X).
workWith(X, juan) :- friendOf(X, carlos).
friendOf(antonio, carlos).
