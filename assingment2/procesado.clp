;; Modulo dedicado al procesamiento y descarte de alimentos dentro de una dieta
(defmodule procesado
    (import MAIN ?ALL)
    (export ?ALL)
)

;;FALTA EL PUTISIMO PAN I EMBUTIDOS
;;HIPERTENSOS

(defrule procesado::eliminar_lacteos_desaconsejados_para_hipertensos "Quita los lacteos desaconsejados para los que padecen hipertension"
    (declare (salience 10))
    (object (is-a Restricciones) (Afectacion ?a))
    ?Ingrediente <- (object (is-a Ingrediente) (Tipo ?t))

    (test (and (eq ?a Hipertension)(eq ?t Lacteo) (or (eq ?Ingrediente Queso) (eq ?Ingrediente Mantequilla)) ))
    => (send ?Ingrediente delete)
)

(defrule procesado::eliminar_vegetales_desaconsejadas_para_hipertensos "Quita los vegetales desaconsejados para los que padecen hipertension"
    (declare (salience 10))
    (object (is-a Restricciones) (Afectacion ?a))
    ?Ingrediente <- (object (is-a Ingrediente) (Tipo ?t))

    (test (and (eq ?a Hipertension) (eq ?t Vegetal) (eq ?Ingrediente Espinaca )))
    => (send ?Ingrediente delete)
)

(defrule procesado::eliminar_proteinas_desaconsejadas_para_hipertensos "Quita los alimentos proteicos desaconsejados para los que padecen hipertension"
    (declare (salience 10))
    (object (is-a Restricciones) (Afectacion ?a))
    ?Ingrediente <- (object (is-a Ingrediente) (Tipo ?t))

    (test (and (eq ?a Hipertension)(eq ?t Comida_Proteica) (eq ?Ingrediente Marisco)))
    => (send ?Ingrediente delete)
)


;; HAN DE EVITAR ALIMENTOS AZUCARADOS I PROCESADOS, CAFE, LACTEOS CON NATA
(defrule procesado::eliminar_lacteos_desaconsejados_para_diabeticos "Quita los lacteos desaconsejados para los que padecen diabetes de cualquier tipo"
    (declare (salience 10))
    (object (is-a Restricciones) (Afectacion ?a))
    ?Ingrediente <- (object (is-a Ingrediente) (Tipo ?t))

    (test (and (eq ?a Diabetes)(eq ?t Lacteo) (or (eq ?Ingrediente Queso) (eq ?Ingrediente Mantequilla) (eq ?Ingrediente Nata)) ))
    => (send ?Ingrediente delete)
)

(defrule procesado::eliminar_proteinas_desaconsejadas_para_diabeticos "Quita los alimentos proteicos desaconsejados para los que padecen diabetes de cualquier tipo"
    (declare (salience 10))
    (object (is-a Restricciones) (Afectacion ?a))
    ?Ingrediente <- (object (is-a Ingrediente) (Tipo ?t))

    (test (and (eq ?a Diabetes) (eq ?t Comida_Proteica) (or (eq ?Ingrediente Carne_roja) (eq ?Ingrediente Huevo))))
    => (send ?Ingrediente delete)
)

;;HAN DE EVITAR EMBUTIDOS, ULTRAPROCESADOS, CAFE , LACTEOS CON NATA, PAN ARROZ GALLETAS
;; EL YOGUR Y LECHE DESNATADOS EXISTEN
(defrule procesado::eliminar_lacteos_desaconsejados_para_osteoporosicos "Quita los lacteos desaconsejados para los que padecen osteoporosis"
    (declare (salience 10))
    (object (is-a Restricciones) (Afectacion ?a))
    ?Ingrediente <- (object (is-a Ingrediente) (Tipo ?t))

    (test (and (eq ?a Osteoporosis)(eq ?t Lacteo) (or (eq ?Ingrediente Mantequilla) (eq ?Ingrediente Nata)) ))
    => (send ?Ingrediente delete)
)

;;Los embutidos, foies , carne roja y otros carnicos grasos son desaconsejadisimos , las carnes magras son mejores
(defrule procesado::eliminar_proteinas_desaconsejadas_para_osteoporosicos "Quita los alimentos proteicos desaconsejados para los que padecen osteoporosis"
    (declare (salience 10))
    (object (is-a Restricciones) (Afectacion ?a))
    ?Ingrediente <- (object (is-a Ingrediente) (Tipo ?t))

    (test (and (eq ?a Osteoporosis) (eq ?t Comida_Proteica) (eq ?Ingrediente Carne_roja) ))
    => (send ?Ingrediente delete)
)

