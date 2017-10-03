/*

Exercise 4:

Juan likes all type of food.
Apples are food.
Chicken is food.
Whatever you eat and you don't kill is food.
Guillermo eats peanuts and he's alive.
Susana eats all what Guillermo eats.
Does Juan likes peanuts?

Domain: Universe

Functions:
  like(X, Y) -> X likes Y
  isKindOf(X, Y) -> X is a kind of Y
  eat(X, Y) -> X eats Y
  kill(X, Y) -> X kills Y
  isAlive(X) -> X is alive

Query:
  like(juan, peanuts).

Solution:
  true.

Write code bellow this

*/

like(juan, X) :- isKindOf(X, food).
isKindOf(apple, food).
isKindOf(chicken, food).
isKindOf(X, food) :- isAlive(Y), eat(Y, X).
eat(guillermo, peanuts).
isAlive(guillermo).
eat(susana, X) :- eat(guillermo, X).
