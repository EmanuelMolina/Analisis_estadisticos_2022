suelo <- read.csv("https://www.dropbox.com/s/3pi3huovq6qce42/obs.csv?dl=1")
suelo

suelo$zone <- as.factor(suelo$zone)
suelo$wrb1 <- as.factor(suelo$wrb1)

summary(suelo$Clay1)
summary(suelo$Clay2)
summary(suelo$Clay5)

#P1: El nivel de arcilla aumenta de manera conjunta con la profundidad del suelo 


# Actividad dos -----------------------------------------------------------

stem(suelo$Clay1)

hist(suelo$Clay1)

#P2: La variable Clay1 presenta un sesgo a la derecha 


# Actividad tres ----------------------------------------------------------

boxplot(suelo$Clay1)

#P3: Si existen outlayers

#P4: Los valores de 72, 71 y 67 son los outlayers

clay1.sub <- subset(suelo, Clay1 >=65)
head(clay1.sub)


# Actividad cuatro --------------------------------------------------------

mean(suelo$Clay1)

Clay1 <- c(suelo$Clay1)
Clay2 <- c(suelo$Clay2)
Clay5 <- c(suelo$Clay5)

tcp <- c(Clay1, Clay2, Clay5)

mean(tcp)

quantile(Clay1, 0.30)

t.test(quantile(Clay1, 0.30)  ~  mean(tcp)) 

#P5: 


# Actividad cinco ---------------------------------------------------------

cor.suelo <- cor.test(suelo$Clay1, suelo$Clay5)
cor.suelo

#P6: EXiste una correlacion positiva de 0.8977721 
#P7: Si existe una correlación entre las variables Clay1 y Clay 5, con p-value < 2.2e-16


# Actividad seis ----------------------------------------------------------

#P8: Si, con "lm" se puede determinar el valor de α y β


clay5.lm <- lm(suelo$Clay5 ~ suelo$Clay1) 
clay5.lm

#P9: 18.7586 + (0.8289*x) 


summary(clay5.lm)
#P10: son altamente significativos con p<2e-16 ***

suelo$residual <- clay5.lm$residuals
sum(suelo$residual**2)/145
#P11: El porcentaje de varianza es 32.3413


# Actividad siete ---------------------------------------------------------

#P12: Si, con un ANOVA

plot(suelo$Clay5 ~ suelo$zone)
#P13: Existen indicios que algunas zonas son distintas, pero no las cuatro 


by(suelo$Clay5, suelo$zone, summary) 
#P14: Las medias de las zonas van decresiendo conforme aumenta la zona


# Actividad ocho ----------------------------------------------------------

suelo.aov <- aov(suelo$Clay5 ~  suelo$zone)  
summary(suelo.aov) 

#P15: Si existe diferencia significativa con p-value <2e-16 ***


TukeyHSD(suelo.aov, conf.level = 0.95) 
plot(TukeyHSD(suelo.aov))

#P16: No existe diferencia significativa entre zona 1 y 2, sin embargo, entre las demas si existen diferencias significativas 
