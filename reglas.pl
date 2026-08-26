:- encoding(utf8).
:- consult('hechos.pl').

% ============================================
% REGLAS: Ejercicio 3 - El pueblo español
% ============================================

% 1) coinciden_en_zona: dos personajes que están en la misma zona

coinciden_en_zona(X, Y) :-
    se_encuentra_en(X, Z),
    se_encuentra_en(Y, Z),
    X \= Y.

% 2) zona_riesgo: una zona es de riesgo si su dificultad es alta O muy alta

zona_riesgo(Z) :-
    dificultad(Z, alta) ; dificultad(Z, muy_alta).

% 3) enfrenta_enemigo_de_zona: qué enemigo podría encontrarse un personaje

enfrenta_enemigo_de_zona(Persona, Enemigo) :-
    se_encuentra_en(Persona, Z),
    aparece_en(Enemigo, Z).

% 4) zona_mas_peligrosa: compara dos zonas usando el nivel numérico

zona_mas_peligrosa(Z1, Z2) :-
    dificultad(Z1, D1),
    dificultad(Z2, D2),
    nivel_dificultad(D1, N1),
    nivel_dificultad(D2, N2),
    N1 > N2.

% 5) va_armado/1: cierto si el personaje porta al menos un arma
va_armado(X) :-
    arma(X, _).
