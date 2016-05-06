/*

Exercise 2:
Generalize the predicates onTheRightOf and onTheTopOf, presented in the previous
exercise, with the predicates right and top, in order to get the list of
objects which are in the right of tortoise when you ask something like
right(X, tortoise).

*/

onTheLeftOf(X, Y) :- onTheRightOf(Y, X).
onTheBottomOf(X, Y) :- onTheTopOf(Y, X).
right(X, Y) :- onTheRightOf(X, Y).
right(X, Z) :- onTheRightOf(X, Y), right(Y, Z).
top(X, Y) :- onTheTopOf(X, Y).
top(X , Z) :- onTheTopOf(X, Y), top(Y, Z).
onTheTopOf(lamp, car).
onTheTopOf(car, tortoise).
onTheTopOf(len, coffeeCup).
onTheTopOf(coffeeCup, semaphore).
onTheTopOf(balance, hummer).
onTheRightOf(balance, coffeeCup).
onTheRightOf(hummer, semaphore).
onTheRightOf(semaphore, key).
onTheRightOf(key, tortoise).
