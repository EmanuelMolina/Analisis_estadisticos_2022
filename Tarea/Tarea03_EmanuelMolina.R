# Problema 1 --------------------------------------------------------------


i <- c(1, 2, 3, 4) 

xi <- c(6, 4, 1, 3)

yi <- c(1, 3, 4, 2)

rbind(i, xi, yi)


sum(xi)
sum(xi,yi)  


prod(xi) 
prod(xi*yi) 
prod(xi^2, yi^.5)


# Problema 2 --------------------------------------------------------------

#Respuesta: A) El primer grupo parece tener una media de altura superior, al ser menos datos que el grupo B sus valores son mas fluctuantes, sin emabrgo, el Grupo A presenta la misma altura maxima que el Grupo B y el valor minimo en A es mayor que B

#Respuesta: B) 

GrupoA <- c(80, 90, 90, 100) 
GrupoB <- c(60, 65, 65, 70, 70, 70, 75, 75, 80, 80, 80, 80, 80, 85, 100)
 
mean(GrupoA) 
mean(GrupoB) 

#El Grupo A registra la mayor media aritmetica con un valor de 90, mientras que el Grupo B obtuvo 75.66 cm en promedio, al tener mas valores bajos su promedio oscilo menos que el grupo anteriormente mencionado 



# Problema 3 --------------------------------------------------------------

examenes <- c(87, 72, 85)  
sum(examenes)  
Calif_min <- c(80*4-(sum(examenes)))    
Calif_min

#Jose requiere una calificacion minima de 76 para obtener un promedio de 80 en sus cuatro calificaciones


# Problema 4 --------------------------------------------------------------

Hogares <- c(50) 
Hogares 

Ninos2.2 <- c(2.2) 
Ninos2.2

(Hogares*Ninos2.2)  

#Respuesta: El inciso "B" es eel correcto 


# Problema 5 --------------------------------------------------------------

#Respuesta A) Graficos de lineas e histogramas de frecuencia 

#Respuesta B) 

Germinaciones <- c(5, 6, 7, 8, 9) 
Cajas_petri <- c(1, 3, 5, 3, 1) 

mean(Germinaciones) 
mean(Cajas_petri)

#Se agregan vectores para ambas variables, despues con el comando "mean" se ejecuta para cada uno de los vectores 


# Problema 6 --------------------------------------------------------------

#A) 


set <- c(2, 2, 3, 6, 10) 

getmoda <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
  }

getmoda(set)
median(set)
mean(set)

#B) 

set_5 <- c(7, 7, 8, 11, 15) 

getmoda(set_5) 
median(set_5)
mean(set_5)

#C) Al agregar un valor constante al segundo grupo se incrementa en la moda, media y mediana con el mismo numero añadido, en este caso cinco; no es necesario volver a calcular estas medidas de tendencia cuando se agrega un mismo numero a cada variable, solo se le suma el numero a los resultados previemente obtenidos   

#D) 

setX5 <- c(10, 10, 15, 30, 50) 

getmoda(setX5)  
median(setX5) 
mean(setX5) 

#E) La moda, mediana y media al multiplicarse por un valor constante pasa de forma similar al caso anterior, donde las medidas de tendencia del grupo "A" se obtienen con multiplicarse por la constante


# Problema 7 --------------------------------------------------------------


#A) Los valores  5, 6, 7, 8, 9 tienen una media de 7 y mediana de 7 

  #Los valores 3, 7, 7, 9, 9 tienen una media de 7 y mediana de 7

mediaa_7 <- c(5, 6, 7, 8, 9)    
mean(mediaa_7)
median(mediaa_7) 

media_7 <- c(3, 7, 7, 9, 9)    
mean(media_7)
median(media_7) 

 

#B) Los valores 3, 7, 7, 8, 9 tienen una media de 6.8 y mediana de 7
#Los valores 1, 7, 7, 8, 9 tienen una media de 6.4 y mediana de 7

median_7 <- c(3, 7, 7, 8, 9)   
mean(median_7) 
median(median_7) 

mediaan_7 <- c(1, 7, 7, 8, 9)  
mean(mediaan_7) 
median(mediaan_7)
















