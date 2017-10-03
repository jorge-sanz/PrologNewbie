/*

Exercise 1:

Describe the position of objects of the image (the only image in the folder)
using facts like onTheRightOf(key, tortoise) and onTheTopOf(car, tortoise).
onTheRightOf means inmediately on the right of something. Define facts like
onTheLeftOf and onTheBottonOf with the previous terms.

Domain: Universe

Functions:
  onTheRightOf(X, Y) -> X is on the right of Y
  onTheTopOf(X, Y) -> X is on the top of Y
  onTheLeftOf(X, Y) -> X is on the left of Y
  onTheBottomOf(X, Y) -> X is on the bottom of Y
`
*/

onTheLeftOf(X, Y) :- onTheRightOf(Y, X).
onTheBottomOf(X, Y) :- onTheTopOf(Y, X).
onTheTopOf(lamp, car).
onTheTopOf(car, tortoise).
onTheTopOf(len, coffeeCup).
onTheTopOf(coffeeCup, semaphore).
onTheTopOf(balance, hummer).
onTheRightOf(balance, coffeeCup).
onTheRightOf(hummer, semaphore).
onTheRightOf(semaphore, key).
onTheRightOf(key, tortoise).
