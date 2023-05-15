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

    (test (and (eq ?t Lacteo) (or (eq ?Ingrediente Queso) (eq ?Ingrediente Mantequilla)) ))
    => (send ?Ingrediente delete)
)

(defrule procesado::eliminar_vegetales_desaconsejadas_para_hipertensos "Quita los vegetales desaconsejados para los que padecen hipertension"
    (declare (salience 10))
    (object (is-a Restricciones) (Afectacion ?a))
    ?Ingrediente <- (object (is-a Ingrediente) (Tipo ?t))

    (test (and (eq ?t Vegetal) (eq ?Ingrediente Espinaca )))
    => (send ?Ingrediente delete)
)

(defrule procesado::eliminar_proteinas_desaconsejadas_para_hipertensos "Quita los alimentos proteicos desaconsejados para los que padecen hipertension"
    (declare (salience 10))
    (object (is-a Restricciones) (Afectacion ?a))
    ?Ingrediente <- (object (is-a Ingrediente) (Tipo ?t))

    (test (and (eq ?t Comida_Proteica) (eq ?Ingrediente Marisco)))
    => (send ?Ingrediente delete)
)

;;DIABETICOS

