costal <- c(87.7, 80.01, 77.28, 78.76, 81.52, 74.2, 80.71, 79.5, 77.87, 81.94, 80.7,
            82.32, 75.78, 80.19, 83.91, 79.4, 77.52, 77.62, 81.4, 74.89, 82.95,
            73.59, 77.92, 77.18, 79.83, 81.23, 79.28, 78.44, 79.01, 80.47, 76.23,
            78.89, 77.14, 69.94, 78.54, 79.7, 82.45, 77.29, 75.52, 77.21, 75.99,
            81.94, 80.41, 77.7)

# Determinar el número de observaciones
n <- length(costal)
n

# Determinar la media
costa.media <- mean(costal)

costa.media

# Desviación estándar
costa.sd <- sd(costal)

costa.sd


costa.se <- costa.sd/ sqrt(n)

costa.se


costa.T <- (costa.media - 80)/ costa.se

costa.T

pt(costa.T, df = n-1) 
# Arriba se declaro "n" como número de costales observados


# Ejercicio uno -----------------------------------------------------------

#¿Cuál es el valor de p?

t.test(costal, mu = 80) 
#p-value en t.test muestra un valor de 0.02264; pt = 0.01132175


#¿Cuántos grados de libertad tiene el experimento?
(n-1) 
# gl 43

#¿Cuál es la hipótesis aceptada? 
  #Respuesta: Hipotesis alternativa

#¿Existe evidencia de que el valor medio promedio de los costales observados es menor (significativamente) a los que anuncia el producto?
  #Respuesta: Si existe diferencia significativa 


# Ejercicio dos -----------------------------------------------------------

azufre <- c(15.8, 22.7, 26.8, 19.1, 18.5, 14.4, 8.3, 25.9, 26.4, 9.8,
            22.7, 15.2, 23.0, 29.6, 21.9, 10.5, 17.3, 6.2, 18.0, 22.9,
            24.6, 19.4, 12.3, 15.9, 11.2, 14.7, 20.5, 26.6, 20.1, 17.0,
            22.3, 27.5, 23.9, 17.5, 11.0, 20.4, 16.2, 20.8, 13.3, 18.1)

#Encuentre si el valor de emisiones de óxido de azufre registradas son significativamente mayores a la establecida por la empresa (17.5 Ton/ha).


# Núm. de observaciones
n <- length(azufre)
n

# Media
azufre.mean <- mean(azufre)

azufre.mean

# Desviación estándar
azufre.sd <- sd(azufre)

azufre.sd


azufre.se <- costa.sd/ sqrt(n)

azufre.se


azufre.T <- (azufre.mean - 17.5)/ azufre.se

azufre.T

pt(azufre.T, df = n-1) 

t.test(azufre, mu = 17.5) 


#¿Cuál es el valor de p?

  #Respuesta: p-value en t.test = 0.1893; pt = 0.9916121


#¿Cuáles son los intervalos de confianza al 95 % ?
  #Respuesta: Inervalos de confianza van de 16.87912 - 20.53588

#¿Cuántos grados de libertad tiene el experimento?
(n-1) 
  #Respuesta: gl = 39

#¿Cuál es la hipótesis aceptada?
  #Se acepta la hipotesis nula

#¿Existe evidencia de que el valor medio promedio de las emisiones observadas es mayor (significativamente) a la declarada en los procedimientos de seguridad de la empresa?
  #Si, existe diferencia significativa


# Ejercicio tres ----------------------------------------------------------

file <- paste0("https://raw.githubusercontent.com/mgtagle/MCF-202_Agosto_2021/main/TEMPAIRE_DIA.csv")

temp <- read.csv(file)

head(temp) 

# Núm. de observaciones
n <- length(temp$temp_media)
n

# Media
temp.mean <- mean(temp$temp_media)

temp.mean

# Desviación estándar
temp.sd <- sd(temp$temp_media)

temp.sd


temp.se <- temp.sd/ sqrt(n)

temp.se


temp.T <- (temp.mean - 24)/ temp.se

temp.T

pt(temp.T, df = n-1) 

t.test(temp$temp_media, mu = 24) 


#Encuentre si el valor promedio de la temperatura (temp_media) registradas es significativamente mayor a la establecida (24 Grados).


#¿Cuál es el valor de p?
  #Respuesta: p-value = 0.03615; pt = 0.01807384

#¿Cuáles son los intervalos de confianza al 95 % ?
  #Respuesta: Intervalos de confianza: 23.28216 - 23.97599

#¿Cuántos grados de libertad tiene el experimento?
(n-1)
  #Respuesta: gl: 845 

#¿Cuál es la hipótesis aceptada?
  #Respuesta: Se acepta la hipotesis alternativa

#¿Existe evidencia de que el valor medio promedio de las emisiones observadas es mayor (significativamente) a la declarada en los procedimientos de seguridad de la empresa?
  #Respuesta: los valores obtenidos son menores a lo establecido y existe diferencia significativa  






























