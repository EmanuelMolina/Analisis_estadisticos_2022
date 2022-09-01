# clase 3
# Emanuel Molina Marchan
#23/08/2022



# Importar datos csv de excel ---------------------------------------------

read.csv("cumbres.csv", header = T)

#Revisar los primeros 6 datos
head (est)

#Revisar ultimos 6 datos
tail (est)

viv <- read.csv("vivero.csv", header =T)
viv$Tratamiento <- as.factor(viv$Tratamiento)
summary(viv) 

viv <- read.csv("vivero.csv", header =T)
boxplot(viv$IE ~ viv$Tratamiento) 

viv$Tratamiento <- as.factor(viv$Tratamiento)

boxplot(viv$IE ~ viv$Tratamiento)
summary(viv)
 






















