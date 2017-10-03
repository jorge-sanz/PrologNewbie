/*

Exercise 6:
A Prolog system saves information about different links between cities
with the format:
link(City1, City2, Distance)

Write the definiton of a predicate
road(City1, City2, Distance)
which is true if it exists a road between City1 and City2 with a Distance.¡

Example:
  link(a, b, 3).
  link(a, c, 2).
  link(c, d, 4).
  link(c, e, 5).

  ?- road(a, e, D).
  D = 7.

We could have roads with a bigger number of nodes and the program should work
with everyone. Try to add more nodes and cost in roads and calculate the total
distances.

NOTE: In each Prolog file, you must define the meaning of predicates you use
and you must write the queries you have made and the answers.

*/

link(a, b, 3).
link(a, c, 2).
link(c, d, 4).
link(c, e, 5).

road(City1, City2, TotalDistance) :-  link(City1, City2, TotalDistance).
road(City1, City3, TotalDistance) :-  link(City1, City2, A),
                                      link(City2, City3, B),
                                      TotalDistance is A + B.
