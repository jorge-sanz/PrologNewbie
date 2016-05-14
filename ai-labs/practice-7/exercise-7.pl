/*

Exercise 7:
Create a "trip planner" in Prolog for an agency with the next data:

Pricing in euros for transport:
- Rome -> 200
- London -> 250
- Tunisia -> 150

Hotel Pricing per night:
- Hotel -> Rome -> 250
- Hotel -> London -> 150
- Hotel -> Tunisia -> 100
- Hostel -> Rome -> 150
- Hostel -> London -> 100
- Hostel -> Tunisia -> 80
- Camping -> Rome -> 100
- Camping -> London -> 50
- Camping -> Tunisia -> 50

Make a program to know the price with given parameters.

*/

trip(rome, 200).
trip(london, 250).
trip(tunisia, 150).

lodging(hotel, rome, 250).
lodging(hotel, london, 150).
lodging(hotel, tunisia, 100).
lodging(hostel, rome, 150).
lodging(hostel, london, 100).
lodging(hostel, tunisia, 80).
lodging(camping, rome, 100).
lodging(camping, london, 50).
lodging(camping, tunisia, 100).

pricing(City, Nights, Lodging, Price) :-  trip(City, TripPrice),
                                          lodging(Lodging, City, LodgingPrice),
                                          Price is TripPrice + LodgingPrice * Nights.
