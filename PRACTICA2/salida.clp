(deffunction salida::imprimirPlato (?plato)
    (bind ?i 1)
    (while (<= ?i (length$ (send ?plato get-compuesto-por-ingrediente)))
        do
        (bind ?ingrediente (nth$ ?i (send ?plato compuesto-por-ingrediente)))
        (bind ?formaCocinar (nth$ ?i (send ?plato tiene-forma-cocinar)))
        (printout t ?ingrediente " " ?formaCocinar crlf)
        (bind ?i (+ ?i 1))
    )

)

(deffunction salida::imprimirComida (?comida)
    (?comida (is-a ?clase))
    (switch clase
        (case Desayuno  then (printout t "DESAYUNO: " crlf))
        (case Almuerzo  then (printout t "ALMUERZO: " crlf))
        (case Cena      then (printout t "CENA: " crlf))
    )
 
    (bind ?i 1)
    (while (<= ?i (length$ (send ?comida get-compuesto-por-plato)))
        do
        (bind ?plato (nth$ ?i (send ?comida get-compuesto-por-plato)))
        (imprimirPlato ?plato)
        (bind ?i (+ ?i 1))
    )
)

(deffunction salida::imprimirMenuDiario (?menuDiario)
    (bind ?dia (send ?menuDiario get-Dia_semana))
    (printout t "DIA DE LA SEMANA: " ?dia crlf)

    (bind ?i 1)
    (while (<= ?i (length$ (send ?menuDiario get-compuesto-por-comidas)))
        do
        (bind ?comida (nth$ ?i (send ?menuDiario get-compuesto-por-comidas)))
        (imprimirComida ?comida)
        (bind ?i (+ ?i 1))
    )
    (printout t crlf)
)

(defrule salida::mostrarDieta
    (declare (salience 10))
    ?dieta <- (object (is-a Dieta))
    =>
    (bind ?i 1)
    (while (<= ?i (length$ (send ?dieta get-compuesto-por-menu)))
        do
        (bind ?menuDiario (nth$ ?i (send ?dieta get-compuesto-por-menu)))
        (imprimirMenuDiario ?menuDiario)
        (bind ?i (+ ?i 1))
    )
)