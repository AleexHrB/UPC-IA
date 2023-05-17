;;; ---------------------------------------------------------
;;; ontologia.clp
;;; Translated by owl2clips
;;; Translated to CLIPS from ontology Ontologia.ttl
;;; :Date 17/05/2023 09:55:19

(defclass Limtacion
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
)

(defclass Preferencia
    (is-a Limtacion)
    (role concrete)
    (pattern-match reactive)
)

(defclass Restriccion
    (is-a Limtacion)
    (role concrete)
    (pattern-match reactive)
)

(defclass Composicion
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
)

(defclass Macronutrientes
    (is-a Composicion)
    (role concrete)
    (pattern-match reactive)
)

(defclass Micronutrientes
    (is-a Composicion)
    (role concrete)
    (pattern-match reactive)
)

(defclass Plato
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (multislot compuesto-por-ingrediente
        (type INSTANCE)
        (create-accessor read-write))
    (multislot tiene-forma-cocinar
        (type INSTANCE)
        (create-accessor read-write))
    (slot Calorias
        (type FLOAT)
        (create-accessor read-write))
    (slot Carbohidratos
        (type FLOAT)
        (create-accessor read-write))
    (slot Grasas
        (type FLOAT)
        (create-accessor read-write))
    (slot Proteinas
        (type FLOAT)
        (create-accessor read-write))
)

(defclass Plato_principal
    (is-a Plato)
    (role concrete)
    (pattern-match reactive)
)

(defclass Postre
    (is-a Plato)
    (role concrete)
    (pattern-match reactive)
)

(defclass Ingrediente
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (multislot tiene-composicion
        (type INSTANCE)
        (create-accessor read-write))
)

(defclass Aceite
    (is-a Ingrediente)
    (role concrete)
    (pattern-match reactive)
)

(defclass Cereal
    (is-a Ingrediente)
    (role concrete)
    (pattern-match reactive)
)

(defclass Comida_Proteica
    (is-a Ingrediente)
    (role concrete)
    (pattern-match reactive)
)

(defclass Fruta
    (is-a Ingrediente)
    (role concrete)
    (pattern-match reactive)
)

(defclass Lacteo
    (is-a Ingrediente)
    (role concrete)
    (pattern-match reactive)
)

(defclass Verdura
    (is-a Ingrediente)
    (role concrete)
    (pattern-match reactive)
)

(defclass Almuerzo
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (multislot compuesto-por-plato
        (type INSTANCE)
        (create-accessor read-write))
)

(defclass Cena
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (multislot compuesto-por-plato
        (type INSTANCE)
        (create-accessor read-write))
)

(defclass Desayuno
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (multislot compuesto-por-plato
        (type INSTANCE)
        (create-accessor read-write))
)

(defclass Dieta
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (multislot compuesto-por-menu
        (type INSTANCE)
        (create-accessor read-write))
)

(defclass Forma_Cocinar
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
)

(defclass Menu_diario
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (multislot compuesto-por-comidas
        (type INSTANCE)
        (create-accessor read-write))
    ;;; String perteneciente a {Lunes, Martes, Miercoles, Jueves, Viernes, Sabado, Domingo}
    (slot Dia_semana
        (type STRING)
        (create-accessor read-write))
)

(defclass Temporada
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
)

(defclass Usuario
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (multislot tiene-dieta
        (type INSTANCE)
        (create-accessor read-write))
    (multislot tiene-limitacion
        (type INSTANCE)
        (create-accessor read-write))
    (multislot vive-durante
        (type INSTANCE)
        (create-accessor read-write))
    ;;; Tiene rango {0,1,2}
    (slot Actividad
        (type INTEGER)
        (create-accessor read-write))
    (slot Edad
        (type SYMBOL)
        (create-accessor read-write))
    (multislot Enfermedad
        (type STRING)
        (create-accessor read-write))
    ;;; 0 hombre
    ;;;1 mujer
    (slot Sexo
        (type SYMBOL)
        (create-accessor read-write))
)

(definstances instances
)
