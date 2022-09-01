
# Tarea 1 -----------------------------------------------------------------

#Problema 1

Pinus <- c (3140)
Mezquite <- c (1453)
Encinos <- c (450)
Teka <- c (1200)
Juniperos <- c (720)

superficie <- c (Pinus, Mezquite, Encinos, Teka, Juniperos) 


barplot(superficie, col ="green", ylab = "Superficie (ha)",
        xlab = "Genero", names.arg = c("Pinus", "Mezquite", "Encinos", "Teka", "Juniperos")) 


sort(superficie)


barplot(sort(superficie, decreasing = TRUE), col ="green", ylab = "Superficie (ha)",
        xlab = "Generos", names.arg = c("Pinus", "Mezquite", "Encinos", "Teka", "Juniperos")) 


mean(superficie)



# Problema 2 --------------------------------------------------------------

germinacion <- c(4, 1, 6, 2, 4, 2, 4, 2, 4, 6, 3, 5, 3, 2, 5, 4, 0, 5, 4,
                 2, 4, 5, 3, 5, 3, 5, 4, 3, 6, 2) 

mean(germinacion)

sd(germinacion)



# Problema 3 --------------------------------------------------------------

Altura <- c(38, 14, 44, 11, 9, 21, 39, 28, 41, 4, 35, 24, 36, 12,
            20, 31, 24, 25, 10, 21, 11, 36, 37, 20, 26)

mean(Altura)

sd(Altura)





































