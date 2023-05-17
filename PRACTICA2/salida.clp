(deffunction output::imprimirPlato (?plato)


)

(deffunction output::imprimirComida (?comida)
    (bind ?i 1)
    (while (<= ?i (length$ (send ?comida get-compuesto-por-plato)))
        do
        (bind ?plato (nth$ ?i (send ?comida get-compuesto-por-plato)))
        (imprimirPlato ?plato)
        (bind ?i (+ ?i 1))
    )
)

(deffunction output::imprimirMenuDiario (?menuDiario)
    (bind ?dia (send ?menuDiario get-Dia_semana))
    (printout t "Dia de la semana: " ?dia crlf)

    (bind ?i 1)
    (while (<= ?i (length$ (send ?menuDiario get-compuesto-por-comidas)))
        do
        (bind ?comida (nth$ ?i (send ?menuDiario get-compuesto-por-comidas)))
        (imprimirComida ?comida)
        (bind ?i (+ ?i 1))
    )
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