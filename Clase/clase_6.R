#Emanuel Molina 
#Clase 6
#20/09/22

#Correlacion
#mide si existe una asocicion lineal entre dos variables y si es significativa o no
#"X" variable independiente, "Y" variable dependiente 
#hay dos tipos de correlaciones, positiva y negativa
# positiva, aumenta X y Y en conjunto (ej diametro y altura)
# la negativa es cuando aumenta x Y disminuye (ej altitud y diversidad)
# los valores fluctuan entre -1 a 1, que son casi imposibles en la naturaleza
# la regresión estima la linea central, y=alpha+beta(x)
# r = correlacion



# Importar datos ----------------------------------------------------------

ebano <- read.csv("ebanos.csv", header =T) 
ebano

plot(ebano$diametro, ebano$altura,
     pch=19, col="blue",
     xlab= "Diametro (cm)", 
     ylab= "Altura (cm)")

#pch es para cambiar los tipo de puntos en el plot

# cuando p => 0.05 no hay correlacion,  p < 0.05 si hay correlacion

# correlacion parametrica de Pearson (r) 

cor.eb <- cor.test(ebano$diametro, ebano$altura)
cor.eb

# existe correlacion positiva entre diametro y altura de los ebanos 

# r*r es la regresion en porcentaje, el diametro nos explica un 67.52% el comportamiento de la altura

(0.8217467*0.8217467)*100 



canopy <- read.csv("canopy.csv", header =T) 
canopy

plot(canopy$Cnpy, canopy$LAI4,
     pch=19, col="purple",
     xlab= "Apertura del dosel (%)", 
     ylab= "IAF")

cor.test(canopy$Cnpy, canopy$LAI4)

#si están correlacionadas las variables, 

#Y' linea de tendencia central 


# Regresion ---------------------------------------------------------------

#regresion entre Cnpy vs LAI4

#los datos deben ser independientes 

#funcion lm =lineal model, primero se pone la variable dependiente "Y"

canopy.lm <- lm(canopy$LAI4  ~ canopy$Cnpy)

canopy.lm

#intercept es alpha y el valor de la derecha en la consola es Beta 

plot(canopy$Cnpy, canopy$LAI4,
     pch=19, col="purple",
     xlab= "Apertura del dosel (%)", 
     ylab= "IAF")

abline(canopy.lm, col="red")

#abline es para agregar la linea de tendencia central

text(34, 1.5, "y'=2.67-0.04*x", pos=2)
# es para obtener la formula de la regresion 

summary(canopy.lm)
# los Residuals es la diferencia que existre entre cada valor de "Y" observado con Y'
#la sumatoria de los residuales elevados al cuadrado debe ser cero 

# la apertura del dosel explica un 0.6865 el IAF (Adjusted R-squared)

# suma de residuales

sum(canopy.lm$residuals)
# al ser casi 0 el valor de los residuales se considera un buen modelo 

canopy$Yprima <- canopy.lm$fitted.values
canopy$dif <- canopy$LAI4 - canopy$Yprima
canopy$residual <- canopy.lm$residuals 
#suma de cuadrados del error 

#esto para calcular los residuales

sum(canopy$residual**2)/38
# se tienen 38 (40-2) gl, y el resultado es la varianza 

summary(canopy.lm)




# Cnpy con GLI ------------------------------------------------------------

plot(canopy$Cnpy, canopy$GLI,
     pch= 19, col="red",
     xlab= "Apertura del dosel",
     ylab= "GLI")

cor.test(canopy$Cnpy, canopy$GLI)

# si están correlacionadas las variables 

(0.5457512*0.5457512)*100
# la apertura del dosel solo explica el 30% del GLI


plot(canopy$LAI4, canopy$GLI,
     pch=15, col="green",
     xlab= "IAF",
     ylab= "GLI")

cor.test(canopy$LAI4, canopy$GLI)

# si es significativa la correlacion 

(-0.6894101 *-0.6894101) *100

#El indice de area folear explica con un 47.52% el GLI

#si las dos variables no vienen de una distribucion normal se utiliza Kendall

#ej

cor.test(canopy$Cnpy, canopy$LAI4, Method = "kendall")

shapiro.test(canopy$Cnpy)
# tienen una distribucion normal, por p> 0.05

shapiro.test(canopy$LAI4)
#no es una distribucion normal por p< 0.05

shapiro.test(canopy$GLI)
# si es una distribucion normal




































































