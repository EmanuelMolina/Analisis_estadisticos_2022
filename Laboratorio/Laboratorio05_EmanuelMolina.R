ans <- read.csv("anscomb.csv", header =T) 
ans


op = par(mfrow = c(2, 2), mar = c(4.5, 4, 1, 1))
plot(anscombe$x1, anscombe$y1, pch = 20)
plot(anscombe$x2, anscombe$y2, pch = 20)
plot(anscombe$x3, anscombe$y3, pch = 20)
plot(anscombe$x4, anscombe$y4, pch = 20)
par(op)


cor.ar <- cor.test(anscombe$x1, anscombe$y1)
cor.ar

cor.ar <- cor.test(anscombe$x2, anscombe$y2)
cor.ar

cor.ar <- cor.test(anscombe$x3, anscombe$y3)
cor.ar

cor.ar <- cor.test(anscombe$x4, anscombe$y4)
cor.ar

mean(anscombe$x1)

mean(anscombe$y1) 

var(anscombe$x1)

var(anscombe$y1)

0.8165214**2
# R**2 = 0.6667072




























