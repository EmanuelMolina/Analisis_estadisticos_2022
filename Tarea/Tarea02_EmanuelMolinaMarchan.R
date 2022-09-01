rm (list = ls ()) 
datos <- read.csv("cuadro1.csv", header = T) 
head(datos) 

H.media <- subset(datos$Altura, datos$Altura <= mean (datos$Altura)) 
H.16 <- subset (datos$Altura, datos$Altura < 16.5)

vecinos3 <- subset(datos$Vecinos, datos$Vecinos <= 3)
Vecinos4 <- subset(datos$Vecinos, datos$Vecinos >4)  

vecinos3
Vecinos4 

DBH.media <- subset(datos$Diametro, datos$Diametro < mean (datos$Diametro)) 
DBH.16 <- subset (datos$Diametro, datos$Diametro > 16)

DBH.media
DBH.16


nuevas.filas=data.frame(Arbol=c(51,52,53,54,55,56,57,58,59,60),
                        Fecha=c(12,13,14,15,15,15,13,13,15,15),
                        Especie=c("C", "H", "F", "C", "H", 
                                  "F", "C", "HH", "F", "C"),
                        Posicion=c("C", "D", "D", "S", "C", "D", "D", "S", "S", "D"),
                        Vecinos=c(3, 2, 4, 4, 5, 5, 2, 3, 5, 2),
                        Diametro=c(20, 25, 10, 10, 23, 12, 13, 13, 16, 14),
                        Altura=c(14, 12, 13, 10, 12, 11, 12, 10, 10, 10)) 

datos=rbind(datos, nuevas.filas) 


sum(with(datos, Diametro <= 16.9))   

sum(with(datos, Altura > 18.5))  


hist(H.media, col="green") 
hist(H.16, col="green")  
hist(datos$Altura, col="green")  

hist(datos$Vecinos, col="green")  
hist(vecinos3, col="green") 
hist(Vecinos4, col="green") 


mean(H.media) 
mean(H.16)  
mean(datos$Altura) 

mean(datos$Vecinos)  
mean(vecinos3) 
mean(Vecinos4) 

mean(datos$Diametro) 
mean(DBH.media) 
mean(DBH.16) 


sd(H.media)  
sd(H.16)  
sd(datos$Altura) 

sd(datos$Vecinos)  
sd(vecinos3) 
sd(Vecinos4) 

sd(datos$Diametro) 
sd(DBH.media) 
sd(DBH.16) 



hist(datos$Altura,ylim=c(0,15), col="green")
hist(datos$Diametro, ylim=c(0,15), col="green") 
hist(datos$Vecinos, col="green") 













