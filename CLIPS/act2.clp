(deffacts hechos-iniciales
(grosor-menor-0.5mm)
(tamanyo-DIN_A5)
(tiene-solo-una-cara))

(defrule papel-1
(grosor-menor-0.5mm)
=>
(assert (es-papel)))

(defrule papel-2
(grosor-major-0.5mm)
=>
(assert (es-cartulina)))

(defrule papel-image-1
(es-papel)
(tamanyo-DIN_A5)
=>
(assert (es-papel-image)))

(defrule cartel-1
(es-cartulina)
(tamanyo-DIN_A3)
=>
(assert (es-cartel)))

(defrule cartel-2
(es-cartulina)
(de-un-color)
=>
(assert (es-cartel)))

(defrule cartel-con-texto
(es-cartel)
(tiene-baston-pegado)
=>
(printout t "Es un cartel que coje alguien y hay un texto" crlf))
 
(defrule imagen-impremida
(es-papel-image)
(tiene-solo-una-cara)
=>
(printout t "Es una imagen imprimida de algo" crlf))

(defrule texto-imprimido
(es-papel)
(tiene-doble-cara)
=>
(printout t "Es una texto imprimido de un documento" crlf))
