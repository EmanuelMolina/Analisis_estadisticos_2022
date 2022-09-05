rm (list = ls ()) 
conjunto <- read.csv("cuadro1.csv", header = T) 
head(conjunto) 

H.media <- subset(conjunto$Altura, conjunto$Altura <= mean (conjunto$Altura)) 
H.16 <- subset (conjunto$Altura, conjunto$Altura < 16.5)

vecinos3 <- subset(conjunto$Vecinos, conjunto$Vecinos <= 3)
Vecinos4 <- subset(conjunto$Vecinos, conjunto$Vecinos >4)  

vecinos3
Vecinos4 

DBH.media <- subset(conjunto$Diametro, conjunto$Diametro < mean (conjunto$Diametro)) 
DBH.16 <- subset (conjunto$Diametro, conjunto$Diametro > 16)

DBH.media
DBH.16

#Añadir Cedro Rojo

Cedro_Rojo <- subset (conjunto$Especie, conjunto$Especie=="C") 
Cedro_Rojo

#Añadir Tsuga heterofila y Douglasia verde

Especie_HF <- subset (conjunto$Especie, conjunto$Especie == conjunto$Especie[c(1, 4)]) 

#observaciones <= a 16.9 en diametro y >18.5 en altura

sum(with(conjunto, Diametro <= 16.9))   

sum(with(conjunto, Altura > 18.5))  


hist(conjunto$Altura, col="green")
hist(H.media, col="green") 
hist(H.16, col="green", xlim = c(8, 18))  

hist(conjunto$Vecinos, col="green")  
hist(vecinos3, col="green") 
hist(Vecinos4, col="green") 

hist(conjunto$Diametro, ylim=c(0,15), col="green")
hist(DBH.media, col="green") 
hist(DBH.16, col="green")


mean(H.media) 
mean(H.16)  
mean(conjunto$Altura) 

mean(conjunto$Vecinos)  
mean(vecinos3) 
mean(Vecinos4) 

mean(conjunto$Diametro) 
mean(DBH.media) 
mean(DBH.16) 


sd(H.media)  
sd(H.16)  
sd(conjunto$Altura) 

sd(conjunto$Vecinos)  
sd(vecinos3) 
sd(Vecinos4) 

sd(conjunto$Diametro) 
sd(DBH.media) 
sd(DBH.16) 
















