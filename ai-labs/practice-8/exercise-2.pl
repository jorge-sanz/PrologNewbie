/*

Exercise 2:
Calculate the length of a list.

*/

len([], Lenght) :- Lenght is 0.
len([_|X], N) :- len(X, Y), N is Y + 1.
