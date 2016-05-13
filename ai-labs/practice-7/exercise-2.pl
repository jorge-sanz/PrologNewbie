/*

Exercise 2:

a) Execute the two Prolog examples (densidad.pl y reyes.pl), make the queries
written in the files and other additional ones you can create to understand
the program. (You can use trace command or make a Prolog answer system
diagrama to understand it better).

DONE.

b) Create a little Prolog program to represent knowledge about a subject
you want, like the restaurant program or the other previous examples.

I solve this exercise in this file.

*/

founding(stampery, 600000).
founding(beme, 6000000).
founding(universitas, 400).

early_stage(X) :- founding(X, Y), Y =< 5000000.
advanced_stage(X) :- founding(X, Y), Y =< 30000000, Y > 5000000.
established_stage(X) :- founding(X, Y), Y > 30000000.
