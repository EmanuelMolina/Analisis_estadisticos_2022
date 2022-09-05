
# Problema 1 --------------------------------------------------------------

set.seed(9875) 
size <- 1000
x2 <- round(runif(n = size, min = 0, max = 10),2)
x2

size_hist <- hist(x2, las= 1, col= "green") 

size_hist

size_hist$breaks 
size_hist$mids

size_hist <- hist(x2, xaxt = "n",
                  breaks = c(0, 2, 4, 6, 8, 10),
                  col = "green",
                  ylab = "Frec",
                  las = 1,
                  ylim = c(0,250))

axis(1,size_hist$mids)


size_hist2 <- hist(x2, xaxt = "n",
                  breaks = c(0, 1, 2, 4, 7, 10),
                  col = "green",
                  ylab = "Frec",
                  las = 1) 
                  
axis(1,size_hist2$mids) 


# Problema 2 --------------------------------------------------------------

#a. ¿Cuál distribución parece estar sesgada a la derecha?
  #Respuesta: A

#b. ¿Cuál distribución parece estar sesgada a la izquierda?
  #Respuesta: D

#c. ¿Cuál distribución parece ser simétrica o en forma de “campana”?
  #Respuesta: C

#d. ¿Cuál distribución parece ser bimodal?
  #Respuesta: B

#e. ¿Cuál distribución parece mostrar una falta de intervalos?
  #Respuesta: C


# Problema 3 --------------------------------------------------------------

data(quakes) 

mags <- hist(quakes$mag, xaxt = "n",
             col = "#e6ac00", xlab="Magnitud de los terremotos",
             ylab= "Frecuencias",
             main = "",
             las = 1,
             ylim = c(0,260))
axis(1, mags$mids)


#a. ¿Cómo describiría la forma de esta distribución de las magnitudes de los terremotos?
  #Respuesta: sesgada hacia la derecha

#b. Mencione un intervalo donde ocurren tipicamente las magnitudes.
  #Respuesta: ocurren en el intervalo de 4.5 

#c. Determine el rango de las magnitudes (Range = Max - Min).
  #Respuesta: Max= 6.4, Min= 4. Rnago= 2.4

max(quakes$mag)
min(quakes$mag)
range= (max(quakes$mag) - min(quakes$mag)) 
range

#d. ¿Qué porcentaje de los terremotos ocurren con magnitud en la clase 5.3 (5.1 : 5.4)?
  #Respuesta:

library(dplyr) 

mag2 <- quakes%>%
  filter(mag =="5.3")
porcent_5.3 <- 100*(length(mag2$mag)/length(quakes$mag))
porcent_5.3

#e. ¿Qué porcentaje de los terremotos tiene una magnitud igual o mayor a 5.0?
  #Respuesta:

mag3 <- quakes%>%
  filter(mag >="5")
porc_5 <- 100*(length(mag3$mag)/length(quakes$mag))
porc_5

#f. ¿Qué porcentaje de los terremotos tienen una magnitud menor o igual a 4.6?#
  #Respuesta:

mag4 <- quakes%>%
  filter(mag <="4.6")
porc_4.6 <- 100*(length(mag4$mag)/length(quakes$mag))
porc_4.6


# Problema 4 --------------------------------------------------------------

# ¿Qué porcentaje de las observaciones en una distribución se encuentran entre el primer y el tercer cuartil?

#Respuesta: b) 50 % 



# Problema 5 --------------------------------------------------------------

#a. ¿Cuál especie tiene el diámetro más pequeño? Respuesta: C


#b. ¿Cuál especie tiene el diámetro más grande? Respuesta: F


#c. ¿Cuál especie tiene el diámetro mínimo más alto? Respuesta: F


#d. ¿Cuál especie tiene la mediana de diámetro más pequeña? Respuesta: C


#e. ¿Cuál especie tiene la mediana de diámetro mas grande? Respuesta: H


#f. ¿Cuál especie tiene el menor rango de diámetro? Respuesta: F


#g. ¿Cuál especie tiene el rango intercuantil (Q3-Q1) mas grande? Respuesta: C


#h. ¿Cuál especie tiene el rango intercuantil (Q3-Q1) mas pequeño? Respuesta: F


#i. ¿Cuál especie tiene una distribución simétrica? Respuesta: H


#j. ¿Cuál especie tiene el sesgo positivo (ver Fig. 2) más marcado ? F



# Problema 6 --------------------------------------------------------------

fires <- c(78, 44, 47, 105, 126, 181, 277, 210, 155) 
fires

min(fires)
max(fires)
range(fires)
quantile(fires, c(0.25))
quantile(fires, c(0.50))
quantile(fires, c(0.75)) 
mean(fires)
var(fires)
sd(fires)

boxplot(fires, col="green", horizontal= TRUE) 

#Agregar intervalo de confianza al 95%
boxplot(fires, notch = TRUE, col="green", horizontal= TRUE, main = "Incendios forestales")








