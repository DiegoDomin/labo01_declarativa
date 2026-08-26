:- encoding(utf8).

% ============================================
% HECHOS: Ejercicio 3 - El pueblo español
% ============================================

% Personajes
personaje(leon).
personaje(ashley).
personaje(ada).
personaje(luis).

% Rol cada personaje
rol(leon, agente).
rol(ashley, estudiante).
rol(ada, espia).
rol(luis, investigador).

% Edad
edad(leon, 27).
edad(ashley, 20).
edad(ada, 26).
edad(luis, 32).

% Armas que porta cada personaje
arma(leon, pistola).
arma(leon, cuchillo).
arma(ada, pistola).
arma(luis, cuchillo).

% Clasificación del tipo de arma
tipo_arma(pistola, fuego).
tipo_arma(cuchillo, cuerpo_a_cuerpo).

% Enemigos
enemigo(ganados).
enemigo(regeneradores).

infectado_por(ganados, las_plagas).
infectado_por(regeneradores, las_plagas).

% Dónde aparece cada tipo de enemigo
aparece_en(ganados, pueblo).
aparece_en(ganados, castillo).
aparece_en(regeneradores, isla).

% Zonas del mundo
zona(pueblo).
zona(castillo).
zona(isla).

% Dificultad de cada zona
dificultad(pueblo, alta).
dificultad(castillo, alta).
dificultad(isla, muy_alta).

% Escala numérica de dificultad
nivel_dificultad(alta, 2).
nivel_dificultad(muy_alta, 3).

% Ubicación actual de los personajes
se_encuentra_en(leon, pueblo).
se_encuentra_en(luis, pueblo).
se_encuentra_en(ada, pueblo).
se_encuentra_en(ada, castillo).
