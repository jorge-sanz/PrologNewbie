/*

Exercise 4:
Remove an element from the list (remove one repetition each time).

Example:
1 ?- remove(a, [a, b,c,a,d,e,f,a,g], Y).
Y = [b, c, a, d, e, f, a, g];
Y = [a, b, c, d, e, f, a, g];
Y = [a, b, c, a, d, e, f, g];
false.

*/

remove(Item, [H|T], Result) :-  Item = H,
                                Result = T.

remove(Item, [H|T], Result) :-  Item = H,
                                remove(Item, T, SecondaryResult),
                                Result = [H|SecondaryResult].

remove(Item, [H|T], Result) :-  Item \= H,
                                remove(Item, T, SecondaryResult),
                                Result = [H|SecondaryResult].
