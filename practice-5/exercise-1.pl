/*

Exercise 1:

Everyone who teaches Computer Science subjects is smart.
Juan teaches Algorithmics subject.
Juan's wife teaches AI subject.
Algorithmics is a subject of Maths.
AI is a subject of CS.
Is there anyone smart?

Domain: Universe

Functions:
  smart(X) -> X is smart
  teach(X, Y) -> X teaches Y
  belongTo(X, Y) -> X belongs to Y

Query:
  smart(_).

Solution:
  true.

*/

smart(X) :- teach(X, Y), belongTo(Y, computerScience).
teach(juan, algorithmics).
teach(juanWife, artificialIntelligence).
belongTo(algorithmics, maths).
belongTo(artificialIntelligence, computerScience).
