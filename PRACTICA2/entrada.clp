(defrule MAIN::inicio 
	(declare (salience 20)) 
	=> 
	(printout t "Super Galactic polynomial diet maker et al yayos solver" crlf)
    (make-instance [Invierno] of Temporada)
    (make-instance [Verano] of Temporada)
    (make-instance [Otono] of Temporada)
    (make-instance [Primavera] of Temporada)
	(focus entrada)
)


(defrule entrada::crear_anciano
	(declare (salience 10))
	=> 
	(printout t "Ahora vamos a hacerte una pregunta para poder recomendarte una buena dieta" crlf crlf)
	(instanciacion_persona)
	(focus procesado)
)



(deffunction entrada::instanciacion_persona ()
    ; preguntamos datos biologicos de la persona
    (bind ?edad (obtener_edad))
    (bind ?sexo (obtener_sexo))
    
    ;Sobre su estado actual
    (bind ?estilo (seleccion_una_opcion "Introduzca su estilo de vida usando el número correspondiente (0:Sedentaria , 1:Normal, 2:Activo): " 0 1 2))
    (bind ?temporada (seleccion_una_opcion "Introduzca la temporada del año" Invierno Primavera Otono Verano))

    ;Sobre preferencias y restricciones
    (bind ?preferencia (seleccion_una_opcion "Si tiene alguna preferencia introduzcala, en caso contrario eliga 'No': " No Vegana Vegetariana Mediterranea Proteica Pescado Carne))

    (bind $?enfermedades (obtener_tipo_enfermedad Hipertensio Diabetes Osteoporosis Disfagia Alergia_Nueces))


    ;Hay que cambiar los nombres, pero eso cuando esté la ontología puesta
    (make-instance Paciente of Persona (Enfermedad $?enfermedades) (Sexo ?sexo) (edad ?edad) (Actividad ?estilo) (preferencia ?preferencia) (vive-durante ?temporada)) 
)

(deffunction entrada::seleccion_una_opcion (?question $?opcions)
    (printout t ?question)
    (printout t " Las opciones son: " $?opcions crlf)
    (bind ?response (read))
    (while (not (member$ ?response $?opcions)) do 
        (printout t "La respuesta introducida no forma parte de las opciones. Por favor, elija otra vez." crlf)
        (bind ?response (read))
    )
    (return ?response)
)


(deffunction entrada::obtener_edad ()
    (printout t "Introduzca la edad ")
    (bind ?edad (read))
    (while (or (< ?edad 60)  (> ?edad 130)) do
            (printout t "La edad introducida no es válida. Por favor, introduzca una edad válida: ") 
            (bind ?edad (read))
    )
    (printout t crlf)
    (return ?edad)
)

(deffunction entrada::obtener_sexo ()
    (printout t "Introduzca su sexo (Hombre/Mujer) ")
    (bind ?sexo (read))
    (while (and (neq ?sexo "Hombre")  (neq ?sexo "Mujer")) do
            (printout t "Qué sos, marsiano? Introduce bien el sexo ") 
            (bind ?sexo (read))
    )
    (printout t crlf)
    (return ?edad)
)

(deffunction entrada::obtener_tipo_enfermedad ($?list_values)
	(printout t crlf)
    (printout t "¿Tiene algún tipo de Enfermedad?" crlf)
    (printout t "Estos son los tipos: " $?list_values crlf)
    (printout t "Para acabar escriba FIN." crlf)
    (bind ?response (read))
    (bind $?return_list (create$))
    (while (not (eq ?response FIN)) do
        (if (and (member$ ?response $?list_values)(not(member$ ?response $?return_list))) then
            (bind $?return_list (insert$ $?return_list (+ (length$ $?return_list) 1) ?response))
        )
        (bind ?response (read))
    )
    (printout t crlf)
    (return $?return_list)
)
