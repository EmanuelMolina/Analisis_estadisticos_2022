# nba datos 

nba <- matrix(0,15,8) 

colnames(nba) <- c("Western Conference","W","L","W/L%","GB","PS/G","PA/G","SRS")

rownames(nba)<- c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15")

teams <- c("UJ","PS","DN","LAC","DM","PTB","LAL","MG","GSW","SAS","NOP","SK","MT", "OCT","HR")

nba [, 1] <- teams

w <- c(52,51,47,47,42,42,42,38,39,33,31,31,23,22,17)
nba [,2] <- w

l <- c(20,21,25,25,30,30,30,34,33,39,41,41,49,50,55)
nba [,3] <- l

wl <- w / (w + l)
nba [,4] <- wl

gb <- c(0,1,5,5,10,10,10,14,13,19,21,21,29,30,35)
nba [,5] <- gb                                   

psg <- c(116.4,115.3,115.1,114,112.4,116.1,109.5,113.3,113.7,111.1,114.6,113.7,
         112.1,105,108.8)
nba [,6] <- psg

pag <- c(107.2,109.5,110.1,107.8,110.2,114.3,106.8,112.3,112.7,112.8,114.9,
         117.4,117.7,115.6,116.7)
nba [,7] <- pag

srs <- c(8.97,5.67,4.82,6.02,2.26,1.81,2.77,1.07,1.10,-1.58,-0.20,-3.45,-5.25,
         -10.13,-7.50)
nba [,8] <- srs

nba

# Manipular datos

# 1er elemento de "wins"
w[1]

# 3er elemento de "loss"
l[3]

# ultimo nombre en "teams"
teams[15]


length(teams) 
#cantidad de datos

sort(w, decreasing = TRUE) 
#ordenacion creciente o decreciente

rev(w) #invierte los valores


# subconjunto de indices logicos

#victorias de Utah Jazz
w[teams == 'UJ']

#equipos con victorias > 40
teams[w > 40]

#nombre de los equipos con derrotas entre 10 y 29
teams[l >= 10 & l <= 29]

# facores y variables cualitativas

#vector numerico

num_vector <- c(1, 2, 3, 1, 2, 3, 2)

#crear un factor apartir de num_vector
first_factor <- factor(num_vector)
first_factor

#factor de teams
teams = factor(teams)
teams

# secuencias

#operador dos puntos :
1:5
1:10
-3:7
10:1

#funcion secuencia
seq(from = 1, to = 10)
seq(from = 1, to = 10, by = 1)
seq(from = 1, to = 10, by = 2)
seq(from = -5, to = 5, by = 1)

# vectores repetidos

rep(1, times = 5) 
#repetir 1 cinco veces

rep(c(1, 2), times = 3) 
#repetir 1 y 2 tres veces

rep(c(1, 2), each = 2) 
#repetir 1 y 2 dos veces cada uno

rep(c(1, 2), length.out = 5) 
#repite 1 y 2 hasta 5 veces

rep(c(3, 2, 1), times = 3, each = 2) 
# repite 3, 2 y 1 cada uno 2 veces, en 3 ocaciones



# de vectores a estructura tabular - data frame 

dat = data.frame(Teams = teams, #con esta funcion se cre aun data frame
                 w = w, l = l,WLperc = wl) 
# funcion para crear un data frame
dat 

dat$Teams 
# $ se utiliza para extraer datos de una columna de un dataset

# se pueden utilizar notaciones de corchetes en la columna, como se hace con los vectores

dat$Wins[1] 
#para extraer el primer valor de "Wins"

dat$Wins[5] 
#para extraer el quinto valor de "Wins"

#subconjuntos logicos
dat$Wins[dat$Teams == 'UJ'] 
#extrae las victorias 

#dentro del data frame
dat$Teams[dat$Wins > 40] 
#extraer  valores  con victorias mayores a 40

dat$Teams[dat$Losses >= 10 & dat$Losses <= 29] 
#extraer  equipos entre 10 y 29 derrotas




w[1] - w

posiciones <- data.frame(Teams = teams, w = w, Losses = l, WLporc = wl,
                         GamesBehind = gb, PointsScored = psg, 
                         PointsAgainst = pag, Rating = srs)
posiciones

sort(posiciones$PointsScored, decreasing = FALSE) 

sort(posiciones$PointsScored, decreasing = TRUE) 




