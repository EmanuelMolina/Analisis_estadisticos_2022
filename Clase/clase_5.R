# las pruebas de "t" son de tres
# tienen dos muestras dependientese independientes 
# cuando es un mismo grupo se compara con un valor muestral
# tenemos un valor de alpha de 0.05 
# se requiere generar una hipotesis
# se requieren minimo 30 datos u observaciones 
# deben provenir de una distribucion normal 
# debemos comparar la varianza para que sean iguales
# cuando la varaianza no es igual se debe hacer la preuba de "t"  
# la hipotesis nula (H0) dice que no existe diferencia
# la hipotesis alterna (H1) dice que existe diferencia entre lo que estoy comprando
# si la media sale del intervalo de confianza si hay diferencia significativa 


#Emanuel Molina 
#Clase 5 
#06/09/22

viv <- read.csv("vivero.csv", header =T)

summary(viv) 

#media teorica 0.9375

#hipotesis nula: no existen diferencias significativa entre el indice de esveltez de nuestraplanta
# con el que menciona conafor 

boxplot(viv$IE)

hist(viv$IE)


# NORMALIDAD DE DATOS -----------------------------------------------------

#el valor de p= value, alpha (a)= 0.05, w= prueba de shapiro

shapiro.test(viv$IE) 

ks.test(viv$IE, "pnorm", mean= mean(viv$IE), sd= sd(viv$IE)) 

t.test(viv$IE, mu= 0.9375)

#mu= media teorica
#df = degree of free (grados de libertad); n-1

# se rechaza la H0, existe diferencia significativa 

# * 0.05 alta diferencia significativa
# ** 0.05 muy alta diferencia significativa
# *** 0.05 extrema diferencia significativa

t.test(viv$IE, mu= 0.89)

# prueba de normalidad de datos, estadistica paremetrica si se portan normal
# si no existe diferencia normal, se utilizan pruebas no parametricas 
# todos los datos provienen de una distribucion normal, si no es normal hace falta muestreo



data("chickwts")  

summary(chickwts) 

#H0 no existe diferencia significativa entre el peso con tratamiento y la media teorica de 300gr

hist(chickwts$weight)

shapiro.test(chickwts$weight)

t.test(chickwts$weight, mu= 300, alternative = "less") 

#el alternative es para generar dos colas y para establecer si estamos buscando menor "less" o mayor valor "greater"
# aun existe diferencia significativa 



#El ANOVA se utiliza para medir mas de dos muestras

#variables dependientes diferente tiempo mismas muestras   
#Ej. dependiente: dieferentes años medidos pero mismo arboles 

#variables independientes 
#Ej: se miden mismas varibles pero en distintas muestarss 

#en las pruebas independientes se utiliza la varianza 


# Prueba de t en dos muestras ---------------------------------------------

boxplot(viv$IE ~ viv$Tratamiento) 

shapiro.test(viv$IE)

var.test(viv$IE ~ viv$Tratamiento)  
#las varianzas son iguales con p=0.053

#F se usa cuando se comparan varianzas 

t.test(viv$IE ~ viv$Tratamiento, var.equal = T)

#aqui los grados de libertad son n-2

#la planta fertilizada obtiene mejores resultados que la planta sin fertilizar 
# se rechaza H0, con un valor de p= 0.0048, si existe diferencia significativa entre muestras 

#t de student (t tabulado) dice que con df son 1.68 
#cuando t cal es menor que t tabulado no existe diferencia significativa 


invent <- read.csv("inventario.csv", header = T) 
View(invent)

invent$Tratamiento <- as.factor(invent$Tratamiento)
invent$Fecha <- as.factor(invent$Fecha)

#H0: no existe diferencia significativa een dap en rodalA y rodalB

boxplot(invent$Diametro ~ invent$Tratamiento ) 

#los datos que salen de la tendencia se llaman out layer

shapiro.test(invent$Diametro)

var.test(invent$Diametro ~ invent$Tratamiento)

t.test(invent$Diametro ~ invent$Tratamiento, var.equal= T)





# con diametro de copa 

boxplot(invent$Dcopa ~ invent$Tratamiento ) 

shapiro.test(invent$Dcopa)

var.test(invent$Dcopa ~ invent$Tratamiento)

t.test(invent$Dcopa ~ invent$Tratamiento, var.equal= T)



# Muestras dependientes ---------------------------------------------------

boxplot(invent$Kilogramo ~ invent$Fecha )

shapiro.test(invent$Kilogramo)

var.test(invent$Kilogramo  ~ invent$Fecha) 

#paired se indica que son dependientes 

t.test(invent$Kilogramo  ~ invent$Fecha, paired = TRUE) 

#no existe diferencia significativa, son iguales estadisticamente 





