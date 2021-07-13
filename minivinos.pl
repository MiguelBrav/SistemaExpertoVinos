%SISTEMAS EXPERTO DE VINOS

%BASE DE CONOCIMIENTOS.
%listado de vinos
vino(tinto).
vino(bordeux).
vino(abernet).
vino(carmere).
vino(merlot).
vino(malbec).
vino(merlot).
vino(pinot).
vino(pinotage).
vino(sangiovanese).
vino(syrah).
vino(pinotage).
vino(tempranillo).
vino(zinfandel).
vino(albarino).
vino(riesling).
vino(chablis).
vino(chardonay).
vino(pinot).
vino(riesling).
vino(sauvignon).
vino(rosado).
vino(espumante-brut).
vino(espumante-demi-sec).
vino(espumante-rose).
vino(espumante-seco).
vino(espumante-dulce).
vino(jerez).
vino(oporte).

%tipo de vino(clasificación)
tinto(bordeaux).
tinto(beaujolais).
tinto(cabernet).
tinto(carmenere).
tinto(merlot).
tinto(pinot).
tinto(pinotage).
tinto(sangiovanese).
tinto(syrah).
tinto(tempranillo).
tinto(zinfandel).

blancos(albarino).
blancos(chablis).
blancos(chardonay).
blancos(pinot).
blancos(riesling).
blancos(sauvignon).

espumoso(espumante-brut).
espumoso(espumante-demi-sec).
espumoso(espumante-rose).
espumoso(espumante-dulce).
espumoso(espumante-seco).

otros(jerez).
otros(oporto).

%platos
plato1(pollo).
palto2(cerdo).
plato3(salmon).
plato4(pasta).
plato5(res).
plato6(arrozconmariscos).

 /* inicia con un ?- go.     */

go :-

    write('Bienvenido al Sistema Experto de Vinos!'), nl,
    write('Elegimos el vino adecuado para tu comida'), nl,
    write('Responde correctamente con yes. o no.'), nl,
      hypothesize(Vino),
      write('El vino adecuado es: '),
      write(Vino),
      nl,
      undo.

/* Hipotesis a ser testeadas */
hypothesize(bordeux)   :- bordeux, !.
hypothesize(merlot)   :- merlot, !.
hypothesize(pinot_noir)   :- pinot_noir, !.
hypothesize(chablis)   :- chablis, !.
hypothesize(tempranillo)   :- tempranillo, !.
hypothesize(syrah)   :- syrah, !.
hypothesize(chardonay)   :- chardonay, !.
hypothesize(riesling)   :- riesling, !.
hypothesize(espumante_brut)   :- espumante_brut, !.
hypothesize(espumante_rose)   :- espumante-rose, !.
hypothesize(zinfandel)   :- zinfandel, !.
hypothesize(sangiovanese)   :- sangiovanese, !.
hypothesize(pinot_gririo)   :- pinot_gririo, !.
hypothesize(sauvignon)   :- sauvignon, !.
hypothesize(pinot_gririo)   :- pinot_gririo, !.
hypothesize(malbec)   :- malbec, !.
hypothesize(beaujolais)   :- beaujolais, !.
hypothesize(cabernet_franc)   :- cabernet_franc, !.
hypothesize(cabernet_sauvignon)   :- cabernet_sauvignon, !.
hypothesize(rosado)   :- rosado, !.
hypothesize(jerez)   :- jerez, !.
hypothesize(desconocido).
          

/* Reglas de identificacion del vino */
bordeux :- plato1,
           tipotinto,
            precioalto,
            verify(estas_seguro_de_tu_eleccion).

merlot   :- plato1,
            tipotinto,  
            preciobajo,
            verify(estas_seguro_de_tu_eleccion).

pinot_noir    :- plato1,
            tipoblanco,
            precioalto,
            verify(estas_seguro_de_tu_eleccion).

chablis    :- plato1,
            tipoblanco,
            preciobajo,
            verify(estas_seguro_de_tu_eleccion).

chablis    :- plato1,
            tipoblanco,
            verify(estas_seguro_de_tu_eleccion).


tempranillo :- plato2,
            tipotinto,
            precioalto,
            verify(estas_seguro_de_tu_eleccion).

syrah :- plato2,
            tipotinto,
            preciobajo,
            verify(estas_seguro_de_tu_eleccion).

chardonay    :- plato2,
            tipoblanco,
            precioalto,
            verify(estas_seguro_de_tu_eleccion).

riesling    :- plato2,
            tipoblanco,
            preciobajo,
            verify(estas_seguro_de_tu_eleccion).

espumante_brut    :- plato2,
            tipoespumoso,
            precioalto,
            verify(estas_seguro_de_tu_eleccion).

espumante-rose    :- plato2,
            tipoespumoso,
            preciobajo,
            verify(estas_seguro_de_tu_eleccion).

zinfandel :- plato3,
            tipotinto,
            precioalto,
            verify(estas_seguro_de_tu_eleccion).

sangiovanese :- plato3,
            tipotinto,
            preciobajo,
            verify(estas_seguro_de_tu_eleccion).

pinot_gririo    :- plato3,
            tipoblanco,
            precioalto,
            verify(estas_seguro_de_tu_eleccion).

sauvignon    :- plato3,
            tipoblanco,
            preciobajo,
            verify(estas_seguro_de_tu_eleccion).

malbec :- plato4,
           tipotinto,
            precioalto,
            verify(estas_seguro_de_tu_eleccion).

beaujolais   :- plato4,
            tipotinto,  
            preciobajo,
            verify(estas_seguro_de_tu_eleccion).

cabernet_franc :- plato5,
            tipotinto,
            precioalto,
            verify(estas_seguro_de_tu_eleccion).

cabernet_sauvignon   :- plato5,
            tipotinto,  
            preciobajo,
            verify(estas_seguro_de_tu_eleccion).

rosado :- plato6,
            tipootro,
            precioalto,
            verify(estas_seguro_de_tu_eleccion).

jerez   :- plato6,
            tipootro,  
            preciobajo,
            verify(estas_seguro_de_tu_eleccion).
            




/* Reglas de clasificacion */

plato1     :- verify(tu_comida_es_pollo), !.
plato2     :- verify(tu_comida_es_cerdo), !.
plato3     :- verify(tu_comida_es_salmon), !.
plato4     :- verify(tu_comida_es_pasta), !.
plato5     :- verify(tu_comida_es_res), !.
plato6     :- verify(tu_comida_es_arroz_con_mariscos), !.
tipotinto       :- verify(prefieres_tinto).
tipoblanco      :- verify(prefieres_blanco).
tipoespumoso    :- verify(prefieres_espumoso).
tipootro        :- verify(prefieres_otro_tipo_de_vino).
preciobajo      :- verify(precio_menor_a_60_dolares).
precioalto      :- verify(precio_mayor_a_60_dolares).


/* Como se hacen las preguntas */
ask(Question) :-
    write('Responde a lo siguiente: '),
    write(Question),
    write('? '),
    read(Response),
    nl,
    ( (Response == yes ; Response == y)
      ->
       assert(yes(Question)) ;
       assert(no(Question)), fail).

:- dynamic yes/1,no/1.

/* Verificacion */
verify(S) :-
   (yes(S) 
    ->
    true ;
    (no(S)
     ->
     fail ;
     ask(S))).


undo :- retract(yes(_)),fail. 
undo :- retract(no(_)),fail.
undo.
