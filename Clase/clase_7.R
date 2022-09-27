# homogenidad de varianza
# Analisis de Varianza (ANOVA) 
# 27/09/22

# datos parametricos
# descomponer la variabilidad del experimiento y atribuirlo a los tratamientos 
# se requieren minimo tres muestras 
# normalidad de datos 
# tenemos media de cada experimiento
# media general del experimento 
# debe ser un experimentos valianzado (mismo numero de repeticiones)
# cuando no estan valianzados, se realizan ajustes para el ANOVA dependiendo del tipo de valance que busquemos, uno de los que se usa es de Bonferroni  

#FV     |Grado.L|Sum.cuadrados    |Cuadrado medio    |Probabilidad de F   
#Trat   |I-1    |SCar             |CMtrat            |
#Error  |I(J-1) |SCerror          |CMerror           |
#Total  |IJ-1   |SCtotal          |                  |

# I= Núm. de Tratamiento
# J=Núm. de observaciones de caada tratamiento 


# Datos -------------------------------------------------------------------

H0: no existe diferencia significativa entre la produccion de tratamiento
H1: almenos existe diferencia entre dos tratamientos 

arena <- c(6, 10, 8, 6, 14, 17, 9, 11, 7, 11)
arcilla <- c(17, 15, 3, 11, 14, 12, 12, 8, 10, 13)
limo <- c(13, 16, 9, 12, 15, 16, 17, 13, 18, 14)

length(limo)

productividad <- c(arena, arcilla, limo)

suelo <- gl(3, 10,30, labels = c("arena", "arcilla", "limo"))

#gl es para generar niveles, serian 3 niveles, 10 datos para cada uno y 30 datos totales

avena <- data.frame(suelo, productividad)



# Funcion tapply ----------------------------------------------------------

tapply(avena$productividad, avena$suelo, length)
tapply(avena$productividad, avena$suelo, mean)
tapply(avena$productividad, avena$suelo, sd)
tapply(avena$productividad, avena$suelo, var)

# Pruebas para revisar la homogenidad de las varianzas 

bartlett.test(avena$productividad, avena$suelo)
#HO: no existe diferencias entre las varianzas
#H1: Existe diferencias entre varianzas 
# p<= 0.05 no existe diferencia significativa 

# no existe diferencia significativa para estos datos con un valor de p=0.528

fligner.test(avena$productividad, avena$suelo)

# solo ecoger una prueba para determinar significacia entre varianzas

# Revisar datos de forma grafica 

boxplot(avena$productividad ~  avena$suelo)

# Cuando los datos de cajas se traslapan quiere decir que probablemente no exista diferencia significativa

#SC total, dice la variacion total de todo el experimento
#Tratamiento es el tipo de suelo
# Si la varianza del error es mas grande que la del tratamiento no vamos a encontrar diferencias significativas

# se prefiere que la suma de cuadrados este mas concentrada en el tratamiento 
#si CM es mas pequeño con CM error no existe diferencia significativa 

#FV     |Grado.L   |Sum.cuadrados    |Cuadrado medio    |Probabilidad de F   
#Suelo  |2 #3-1    |315.5            |49.6              |
#Error  |27#(10-1)3|99.2             |11.68             |
#Total  |29        |414.7            |                  |

#tr=Tratamiento

#Suma de cuadrados total
# SCtotal= SST
SST <- sum((avena$productividad - mean(avena$productividad))**2)
SST

#CMtotal

# Suma de cuadrados del error
arena - mean(arena)
arcilla - mean(arcilla)
limo - mean(limo)

arena.sum <- sum((arena - mean(arena))**2)
arcilla.sum <- sum((arcilla - mean(arcilla))**2)
limo.sum <- sum((limo - mean(limo))**2)

SSerror <- arena.sum + arcilla.sum + limo.sum 
SSerror

SStrat <- SST -SSerror
SStrat 

#Cuadrado medio
#Representa la varianza promedio que tiene el experimento 

tapply(avena$productividad, avena$suelo, var)
CMerror <- mean(tapply(avena$productividad, avena$suelo, var))
CMtrat <- SStrat/2
Fcal <- CMtrat/CMerror
Fcal

99.2/2 
315.5/27

# Ftab

Ftab <- qf(0.95, 2, 27)
Ftab

#0.95 es la probabilidad de error, 2 es grados de libertad de trat y 27 es GL del error

probF <- 1 - pf(4.24, 2, 27)
# el 4.24 es de Fcal

probF

# Si existe diferencia significativa ya que p= 0.025

# ANOVA procedimiento simplificado

avena.aov <- aov(avena$productividad ~  avena$suelo)
summary(avena.aov)

par(mfrow = c(2,2))
plot(aov(avena$productividad  ~  avena$suelo))

#La grafica normal Q-Q nos ayuda a definir la normalidad de datos

par(mfrow = c(1,1))


# Para determinar en que tratamiento existen las diferencias se utiliza Tukey

TukeyHSD(avena.aov, conf.level = 0.95)
# solo existe diferencia significativa entre limo-arena con p= 0.0204
# aqui se utilizan las letras (a,b,c...n) para establecer si hay diferencia significativa entre tratamientos

plot(TukeyHSD(avena.aov))
#Prueba de comparacion de medias, si toca "cero" no hay diferencia significativa

# Homogenidad
# Normalidad
# ANOVA
# Si no hay diferencia no se hace Tukey



































































