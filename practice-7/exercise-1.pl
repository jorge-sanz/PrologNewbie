/*

Ejercicio 1:
The Prolog program is the code in the restaurante.pl file. Charge the file in
the directory and charge it in the interpreter. Two exercises:

a) Make these queries in Prolog:
  - What lunches have "consome" as entry?
  - What balanced launches have orange as dessert?
  - What lunches has a calorie value of 500?

  Solution:
  ?- comida(consome, X, Y).
  ?- comida_equilibrada(X, Y, naranja).
  ?- valor(X, Y, Z, 500).

b) Complete the program to have wine, beer and water as drink options.

*/

entrada(paella).
entrada(gazpacho).
entrada(consome).

carne(filete_de_cerdo).
carne(pollo_asado).

pescado(trucha).
pescado(bacalao).

postre(flan).
postre(nueces_con_miel).
postre(naranja).

bebida(vino).
bebida(cerveza).
bebida(agua).

% Valor calorico de una racion

calorias(paella, 200).
calorias(gazpacho, 150).
calorias(consome, 300).
calorias(filete_de_cerdo, 400).
calorias(pollo_asado, 280).
calorias(trucha, 160).
calorias(bacalao, 300).
calorias(flan, 200).
calorias(nueces_con_miel, 500).
calorias(naranja, 50).

% plato_principal(P) P es un plato principal si es carne o pescado

plato_principal(P):- carne(P).
plato_principal(P):- pescado(P).

% comida(Entrada, Principal, Postre)

comida(Entrada, Principal, Postre):-
        entrada(Entrada),
        plato_principal(Principal),
        postre(Postre),
        bebida(Bebida).

% Valor calorico de una comida

valor(Entrada, Principal, Postre, Valor):-
        calorias(Entrada, X),
        calorias(Principal, Y),
        calorias(Postre, Z),
        sumar(X, Y, Z, Valor).

% comida_equilibrada(Entrada, Principal, Postre)

comida_equilibrada(Entrada, Principal, Postre):-
        comida(Entrada, Principal, Postre),
        valor(Entrada, Principal, Postre, Valor),
        menor(Valor, 600).


% Conceptos auxiliares

sumar(X, Y, Z, Res):-
        Res is X + Y + Z.             % El predicado "is" se satisface si Res se puede unificar
                                      % con el resultado de evaluar la expresion X + Y + Z
menor(X, Y):-
        X < Y.                        % "menor" numerico

dif(X, Y):-
        X =\= Y.                      % desigualdad numerica
