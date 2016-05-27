/*

Exercise 10:
There is a company web map.
Build a Prolog program in which you can ask if a page is accesible from other
or one is linked by other, what pages are linked by one or what is the road
to the main page, and how many clicks you should make to access from one
page to other one.

fatherOf(X, Y) -> X is father of Y
ancestorOf(X, Y) -> X is ancestor of Y
roadToMain(X, List) -> List will represent the steps from X to mainPage
roadToAncestor(X, Y, Clicks) -> Y is an ancestor of X and Clicks will represents
                                the steps from one to other one.
clicksTo(X, Y, Clicks) -> Clicks will represent the steps from X to Y, being
                          these ones any node in the tree.

*/

fatherOf(mainPage, training).
fatherOf(mainPage, systemsIntegration).

fatherOf(training, creativity).
fatherOf(training, innovation).
fatherOf(systemsIntegration, quality).
fatherOf(systemsIntegration, environment).

fatherOf(creativity, whatIs).
fatherOf(creativity, guide).
fatherOf(quality, iso).

fatherOf(guide, whatIsAnIdea).
fatherOf(guide, howToGetIdeas).
fatherOf(iso, managementSystem).
fatherOf(iso, resources).

ancestorOf(Father, Son) :- fatherOf(Father, Son).
ancestorOf(Grandfather, Grandson) :-  fatherOf(Grandfather, Father),
                                      ancestorOf(Father, Grandson).

roadToMain(Start, StopsList) :- Start = mainPage,
                                Y = [].
roadToMain(Start, StopsList) :- fatherOf(Father, Start),
                                roadToMain(Father, PartOfStopsList),
                                StopsList = [Father|PartOfStopsList].

roadToAncestor(X, Y, Clicks) :-      fatherOf(Y, X),
                                Clicks = 1.

roadToAncestor(X, Y, Clicks) :- ancestorOf(Y, X),
                                fatherOf(Z, X),
                                roadToAncestor(Z, Y, MoreClicks),
                                Clicks is 1 + MoreClicks.

clicksTo(X, Y, Clicks) :- roadToAncestor(X, Z, FirstClicks),
                          roadToAncestor(Y, Z, SecondClicks),
                          Clicks is FirstClicks + SecondClicks.
