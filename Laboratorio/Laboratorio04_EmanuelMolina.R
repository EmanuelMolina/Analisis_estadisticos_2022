esp.url <- paste0("https://raw.githubusercontent.com/mgtagle/",
                  "PrincipiosEstadistica2021/main/cuadro1.csv")
inventario <- read.csv(esp.url) 

str(inventario) 
dim(inventario) 
head(inventario)
tail(inventario)
names(inventario)
colnames(inventario)
summary(inventario)

names(inventario[1:5])  
summary(inventario[3:5]) 

is.factor(inventario$Posicion) 

inventario$Posicion <- factor(inventario$Posicion)  
is.factor(inventario$Posicion) 

summary(inventario[3:5]) 

freq_position <- table(inventario$Posicion) 
freq_position

prop_position <- (freq_position/sum(freq_position)) 
prop_position 

perc_position <- (prop_position*100) 
perc_position 

barplot(freq_position, las= 1, border= NA, cex.names=0.7) 

pie(freq_position, col= topo.colors(4))  

pie(freq_position, col= topo.colors(4), 
    labels = paste(levels(inventario$Posicion), round(perc_position, 2), "%")) 


freq_esp <- table(inventario$Especie) 
freq_esp

prop_esp <- (freq_esp/sum(freq_esp)) 
prop_esp 

perc_esp <- (prop_esp*100) 
perc_esp 

barplot(freq_esp, las= 1, border= NA, cex.names=0.7) 

pie(freq_esp, col= topo.colors(3))  

pie(freq_esp, col= topo.colors(3), 
    labels = paste(levels(inventario$Esp), round(perc_esp, 2), "%")) 


diam_hist <- hist(inventario$Diametros, las = 1, col = '#ffe0b3')  

diam_hist
diam_hist$breaks 
diam_hist$mids

h1 <- hist(inventario$Diametros, xaxt= "n",
           breaks = c(6, 8, 10, 12, 14, 16, 18, 20, 22,24),
           col= "#00cc99", xlab= "Diametro (cm)",
           ylab= "Frecuencia",
           main= "",
           las= 1, 
           ylim= c(0,14)) 
axis(1, h1$mids) 


h1 <- hist(inventario$Altura, xaxt= "n",
           breaks = c(8, 10, 12, 14, 16, 18, 20, 22),
           col= "green", xlab= "Altura (m)",
           ylab= "Frecuencia",
           main= "",
           las= 1, 
           ylim= c(0,14)) 
axis(1, h1$mids)




