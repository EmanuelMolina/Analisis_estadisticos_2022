
# Laboratorio 2 -----------------------------------------------------------

data("chickwts") 

head(chickwts) 

feeds <- table(chickwts$feed) 
feeds 

barplot(feeds) 
barplot(feeds[order(feeds, decreasing = TRUE)],
        horiz = TRUE, las = 1, col= "green")  

# Descargar datos abiertos de gobierno 

rm (list = ls ())  

fert <- "https://www.agricultura.gob.mx/sites/default/files/sagarpa/Publicaciones/datos_abiertos/2021/fertilizantes/6to-listado-fertilizantes-2021v2.csv"

ferti <- read.csv(fert, header= T, fileEncoding = "Latin1") 

apoyos <- table (ferti$ESTADO) 
apoyos

barplot(apoyos, col="green", 
        ylim= c(0, 8000), 
        ylab="Apoyos de la 4T", 
        xlab= "Estados")

mun <- table(ferti$MUNICIPIO) 
mun

library(dplyr)   

EsxMun <- ferti%>%
  group_by(ESTADO, MUNICIPIO) %>%
  summarise(n = n())

Gro<- ferti %>% filter(ESTADO=="GUERRERO") %>% 
  group_by(MUNICIPIO) %>%
  summarise(n=n()) %>% 
  filter(n >= 200) %>% 
  mutate(porciento = n / sum(n)* 100)

barplot(Gro$porciento)

write.csv(Gro, "Clase/Guerrero.csv", row.names = F)






