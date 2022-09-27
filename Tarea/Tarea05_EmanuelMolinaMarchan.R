
arroyo <- read.csv("arroyo.csv", header =T) 
arroyo


plot(arroyo$Speed, arroyo$Abundance,
     pch=19, col="blue",
     xlab= "Velocidad", 
     ylab= "Abundancia")


cor.ar <- cor.test(arroyo$Speed, arroyo$Abundance)
cor.ar


arroyo.lm <- lm(arroyo$Speed  ~ arroyo$Abundance)
arroyo.lm

abline(arroyo.lm, col="red")

#Existe una correlación positiva significativa entre la velocidad y abundancia 
# H0: “No existe una correlación entre la velocidad del arroyo y la abundancia de efímeras”.
# H1: “Existe una correlación positiva entre la velocidad de los arroyos y la abundancia de efímeras (Ecdyonurus dispar)” 
#Se acepta la hipotesis alterna H1: Existe una correlación positiva entre la velocidad de los arroyos y la abundancia de efímeras (Ecdyonurus dispar)

0.8441408**2 

#La velocidad nos explica un 71.25% el comportamiento de la abundacia 

# r = 0.8441408
# df = 6 
# p-value = 0.008393
# t = 3.8568


# Ejercicio dos -----------------------------------------------------------

#pH - N

suelo <- read.csv("suelo.csv", header =T) 
suelo


plot(suelo$pH, suelo$N,
     pch=19, col="blue",
     xlab= "pH", 
     ylab= "N")

# H0: “No existe una correlación entre pH y N”.
# H1: “Existe una correlación positiva entre el pH y N" 

cor.ar <- cor.test(suelo$pH, suelo$N)
cor.ar

# r= 0.636654, p-value = 1.149e-06, df = 46, t= 5.5994

suelo.lm <- lm(suelo$pH  ~ suelo$N)
suelo.lm


#pH - Dens


plot(suelo$pH, suelo$Dens,
     pch=19, col="blue",
     xlab= "pH", 
     ylab= "Dens")

# H0: “No existe una correlación entre pH y Dens”.
# H1: “Existe una correlación positiva entre el pH y Dens" 

cor.ar <- cor.test(suelo$pH, suelo$Dens)
cor.ar

# r = -0.5890264, p-value = 1.062e-05, df = 46, t= -4.9436

suelo.lm <- lm(suelo$pH  ~ suelo$Dens)
suelo.lm

#pH - P

plot(suelo$pH, suelo$P,
     pch=19, col="blue",
     xlab= "pH", 
     ylab= "P")

# H0: “No existe una correlación entre pH y P”.
# H1: “Existe una correlación positiva entre el pH y P" 

cor.ar <- cor.test(suelo$pH, suelo$P)
cor.ar

# r = 0.5910303, p-value = 9.74e-06, df = 46, t= 4.9694

suelo.lm <- lm(suelo$pH  ~ suelo$P)
suelo.lm

#pH - Ca


plot(suelo$pH, suelo$Ca,
     pch=19, col="blue",
     xlab= "pH", 
     ylab= "Ca")

# H0: “No existe una correlación entre pH y Ca”.
# H1: “Existe una correlación positiva entre el pH y Ca" 

cor.ar <- cor.test(suelo$pH, suelo$Ca)
cor.ar

# r = 0.8086293, p-value = 3.614e-12, df = 46, t= 9.3221


suelo.lm <- lm(suelo$pH  ~ suelo$Ca)
suelo.lm

#pH - Mg


plot(suelo$pH, suelo$Mg,
     pch=19, col="blue",
     xlab= "pH", 
     ylab= "Mg")

# H0: “No existe una correlación entre pH y Mg”.
# H1: “Existe una correlación positiva entre el pH y Mg" 

cor.ar <- cor.test(suelo$pH, suelo$Mg)
cor.ar

# r = -0.3957821, p-value = 0.005361, df = 46, t = -2.923

suelo.lm <- lm(suelo$pH  ~ suelo$Mg)
suelo.lm


#ph - K


plot(suelo$pH, suelo$K,
     pch=19, col="blue",
     xlab= "pH", 
     ylab= "K")

# H0: “No existe una correlación entre pH y K”.
# H1: “Existe una correlación positiva entre el pH y K" 

cor.ar <- cor.test(suelo$pH, suelo$K)
cor.ar

# r = 0.5795727, p-value = 1.585e-05, df = 46, t = 4.8236

suelo.lm <- lm(suelo$pH  ~ suelo$K)
suelo.lm


#pH - Na


plot(suelo$pH, suelo$Na,
     pch=19, col="blue",
     xlab= "pH", 
     ylab= "Na")

# H0: “No existe una correlación entre pH y Na”.
# H1: “Existe una correlación positiva entre el pH y Na" 

cor.ar <- cor.test(suelo$pH, suelo$Na)
cor.ar

# r = -0.6932614, p-value = 4.724e-08, df = 46, t = -6.5242

suelo.lm <- lm(suelo$pH  ~ suelo$Na)
suelo.lm





























