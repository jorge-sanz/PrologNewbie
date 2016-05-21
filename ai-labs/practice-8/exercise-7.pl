/*

Exercise 7:
Build a list with all elements which are before an element in a list.

*/

previousElements(Item, [], Result) :- Result = [].

previousElements(Item, [H|T], Result) :-  Item = H,
                                          Result = [].

previousElements(Item, [H|T], Result) :-  Item \= H,
                                          previousElements(Item, T, R),
                                          Result = [H|R].
