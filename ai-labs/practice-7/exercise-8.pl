/*

Exercise 8:
You have a company chart.

Create a Prolog program in which you can consult if a person is a boss or
he depends on other one, what people are in a specified chain of the company,
and how many levels are there between two guys.

*/

leaderOf(ceo, qualityAssurance).

leaderOf(qualityAssurance, treasurer).
leaderOf(qualityAssurance, salesManager).
leaderOf(qualityAssurance, marketingManager).

leaderOf(treasurer, advisor).
leaderOf(salesManager, operator1).
leaderOf(salesManager, operator2).
leaderOf(marketingManager, salesMachine1).
leaderOf(marketingManager, salesMachine2).

leaderOf(advisor, accountant).
leaderOf(operator1, deliver1).
leaderOf(operator2, deliver2).

higherLevel(X, Y, Levels) :- leaderOf(X, Y), Levels = 1.
higherLevel(X, Z, Levels) :-  leaderOf(X, Y),
                              higherLevel(Y, Z, Level),
                              Levels is Level + 1.
