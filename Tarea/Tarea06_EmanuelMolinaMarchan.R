erup <- read.csv("erupciones.csv", header =T) 
erup

plot(erup$eruptions, erup$waiting,
     pch=19, col="green",
     xlab= "erupciones",
     ylab= "Tiempo de espera") 

mean(erup$eruptions)
mean(erup$waiting)

sd(erup$eruptions)
sd(erup$waiting)

var(erup$eruptions)
var(erup$waiting)

cor.ar <- cor.test(erup$eruptions, erup$waiting)
cor.ar

# r = coef. cor = 0.9008112 
# Si existe una correlacion significativa entre ambas variables

# H0: No existe una correlación significativa entre la erupcion  y el tiempo de espera
# H1: Existe una correlación significativa entre la erupcion y el tiempo de espera 


erup.lm <- lm(erup$eruptions  ~  erup$waiting)

erup.lm

#valor de α = -1.87402 
#valor de β = 0.07563 

summary(erup.lm)

# p-value: < 2.2e-16, sí es significativo 

sum(erup.lm$residuals)

#  α y β son altamente significativas y ambas son significativas al modelo de regresion


-1.874016 + (0.075628*80) 
-1.874016 + (0.075628*40) 
-1.874016 + (0.075628*45) 
-1.874016 + (0.075628*53) 
-1.874016 + (0.075628*61) 








