/*

Exercise 5:

Anyone who passes the AI exam and wins the lottery is happy.
Anyone who studies or is fortunate passes his exams.
Pedro studies.
Juan didn't study.
Juan is fortunate.
Anyone who is fortunate wins the lottery.
Is Juan happy?

Domain: Universe

Functions:
  happy(X) -> X is happy
  pass(X, Y) -> X pass Y
  lottery(X) -> X wins the lottery
  study(X) -> X studies
  fortunate(X) -> X is fortunate

Query:
  happy(juan).

Solution:
  false.

Write code bellow this

*/

happy(X) :- pass(X, aiexam), lottery(X).
pass(X, Y) :- study(X), fortunate(X).
study(pedro).
not(study(juan)).
fortunate(juan).
lottery(X) :- fortunate(X).
