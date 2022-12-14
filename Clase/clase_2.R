# Emanuel Molina Marchan
# 16/98/2022
# clase 2


# ingresar datos ----------------------------------------------------------



dbh <- c(16.5, 25.3, 22.1, 17.2, 16.1, 8.1, 34.3, 5.4, 5.7,
         11.2, 24.1, 14.5, 7.7, 15.6, 15.9, 10.17, 17.5, 20.5,
         7.8, 27.3, 9.7, 6.5, 23.4, 8.2, 28.5, 10.4, 11.5,
         14.3, 17.2, 16.8)


length(dbh)
# medidas de tendencia central

media <- sum(dbh)/length(dbh)

mean(dbh)

median(dbh)

# media geometrica

exp(mean(log(dbh)))

# medidas de dispersion

sd(dbh)

var(dbh)

# el resultado de coef.var es en porcentaje

coef.var <- sd(dbh)/mean(dbh)*100
coef.var

# el 1er valor es es minimo y el ultimo es el maximo, el 2o num es el valor maximo del 1er cuartil, el 3er valor es el maximo del segundo cuartil y asi sucesuvamente

fivenum(dbh)

quantile(dbh, 0.15)

quantile(dbh, 0.30)


# grafica -----------------------------------------------------------------

boxplot(dbh, horizontal = T)

boxplot(dbh, col = "blue", ylab = "diametro (cm)",
        xlab = "sitio 1", main = "parcela BE")

stem(dbh, scale =2)

#el nombre correcto de grafica de barras es histograma 

hist(dbh, col ="blue", ylab = "frecuencia",
     xlab = "diametro (cm)",
     main = "sitio BE", ylim = c(0,10))

# modificar un dato en especifico

dbh[1] <- 16.5
dbh

#muestra aleatorea

dbh50 <- sample(dbh, 10, replace = TRUE)

set.seed(45)
rnorm(50, mean = 10, sd =2)

hist(dbh50)

dbh10 <- rnorm(10, mean =10, sd =2)
hist(dbh10)

dbh100 <- rnorm(100, mean=10, sd=2)
hist(dbh100)

dbh1000 <- rnorm(1000, mean=10, sd=2)
hist(dbh1000)


set.seed(45)

hist(dbh50)

dbh10 <- rnorm(10, mean =10, sd =2)
hist(dbh10)

dbh100 <- rnorm(100, mean=10, sd=2)
hist(dbh100)

dbh1000 <- rnorm(1000, mean=10, sd=2)
hist(dbh1000)




















