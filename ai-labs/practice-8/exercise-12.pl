/*

Exercise 12:
Delete an element in the N-position.

*/

deleteByIndex(0, [H|T], Result) :- Result = T.

deleteByIndex(Index, [H|T], Result) :-  Index \= 0,
                                        Counter is Index - 1,
                                        deleteByIndex(Counter, T, R),
                                        Result = [H|R].
