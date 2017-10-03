/*

Exercise 5:
Insert an element in a list in all possibilities.
1 ?- insert(a, [b, c, d], L).
L = [a, b, c, d] ;
L = [b, a, c, d] ;
L = [b, c, a, d] ;
L = [b, c, d, a] ;
false.

*/

insert(Item, [], Result) :- Result = [Item].

insert(Item, [H|T], Result) :-  Tail = [H|T],
                                Result = [Item|Tail].

insert(Item, [H|T], Result) :-  insert(Item, T, R),
                                Result = [H|R].
