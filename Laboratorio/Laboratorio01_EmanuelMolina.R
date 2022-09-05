
# Parte 1 -----------------------------------------------------------------

celular <- 300
transporte <- 240
alimentos <- 1527
gimnasio <- 400
alquiler <- 1500
otros <- 1833

gastos <- c(celular, transporte, alimentos, gimnasio, alquiler, otros)

sum(gastos) 

sum(gastos*5) 

sum(gastos*10) 

barplot(gastos, col="green", ylab= "pesos mxn",
        xlab= "factura", cex.names = (0.7), ylim= c(0, 2000), names.arg = c("celular", "transporte", "alimentos", 
                                                          "gimnasio", "alquiler", "otros"))

sort(gastos, decreasing = TRUE)

barplot(sort(gastos, decreasing = TRUE), col="green", ylim= c(0, 2000), ylab= "pesos mxn",
        xlab= "factura", cex.names = (0.7), names.arg = c("otros", "alimentos", "alquiler", 
                                       "gimnasio", "cellular", "transporte"))  



# Parte 2 -----------------------------------------------------------------

#Problema 1

#Nombre de estudiante. R.CUALITATIVA
#Fecha de nacimiento (p. Ej., 21/10/1995). R.CUALITATIVA
#Edad (en años). R.CUANTITATIVA
#Dirección de casa (por ejemplo, 1234 Ave. Alamo). R.CUALITATIVA
#Número de teléfono (por ejemplo, 510-123-4567). R.CUALITATIVA
#Área principal de estudio. R.CUALITATIVA
#Grado de año universitario: primer año, segundo año, tercer año, último año. R.CUALITATIVA
#Puntaje en la prueba de mitad de período (basado en 100 puntos posibles). R.CUALITATIVA
#Calificación general: A, B, C, D, F. R.CUALITATIVA
#Tiempo (en minutos) para completar la prueba final de MCF 202. R.CUANTITATIVA
#Numero de hermanos. R.CUANTITATIVA

#Problema 2


cate_inv_forest <- c("clase", "orden", "familia", "genero", "especie", 
                     "estrato", "condicion") 

cuanti_inv_forest <- c("altura_total", "dap", "altura_fuste_limpio",
                       "diametro_copaNS", "diametro_copaEO","altura_comercial",
                       "area_copa") 

varibles_cuanti_cate <- c(list(cate_inv_forest, cuanti_inv_forest))
varibles_cuanti_cate  



# Probelma 3 --------------------------------------------------------------

#Considere una variable con valores numéricos que describen formas electrónicas de expresar opiniones personales: 1 = Twitter; 2 = correo electrónico; 3 = mensaje de texto; 4 = Facebook; 5 = blog ¿Es esta una variable cuantitativa o cualitativa?  
  
#Respuesta: Se considera como variable cualitativa, debido a que se le esta otorgando una categoria a los diversos medios mencionados en el programa mencionado y no estan valores en cifras  

# Problema 4 --------------------------------------------------------------

#1 Cual es la cantidad promedio de horas que los estudiantes de universidades públicas trabaja cada semana?
  #R. (1) estudiantes universitarios de escuelas publicas (2) horas promedio trabajadas semanales (3) cuantitativas 

#2 Que proporcion de todos los estudiantes universitarios de México están inscritos en una universidad pública?
  #R.  (1) estudiantes universitarios (2) inscritos en universidad publica (3) cuantitativa

#3 En los universidades públicas, las estudiantes femeninas tienen un promedio de CENEVAL más alto que los estudiantes varones?
  #R.  (1) promedio CENEVAL de mujeres (2) estudiantes femeninas (3) categorica

#4 Es más probable que los atletas universitarios reciban asesoramiento académico que los atletas no universitarios?
  #R. (1) atletas (2) recibir asesoramiento (3) categorica 

#5 si reunieramos datos para responder a las preguntas de la investigación anterior, qué datos podrían analizarse mediante un histograma? ¿Cómo lo sabes?.
  #R. cuantos quieren recibir el asesoramiento, que areas de interes tienen; y se utilizarian los histogramas para cada una de las variables antes mencionadas con la frecuencia de atletas   
  

















