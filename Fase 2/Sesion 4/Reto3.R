#Dada una muestra aleatoria de tamaño n = 10 de una distribución normal
set.seed(124)
muestra <- rnorm(n = 10, mean = 110, sd = 7) # muestra pequeña
tail(as.data.frame(muestra))

#Decida si rechazar o no la hipótesis nula si el nivel de significancia es 
#alpha = 0.05
t0 <- (mean(muestra)-120)/(sd(muestra)/sqrt(10)) 
t.05 <- qt(p = 0.05, df = 9)
t0 < t.05 #Se rechaza la hipotesis


#Obtenga el p-value de la prueba
pvalue <- pt(t0, df = 9)

#Lleve a cabo la prueba con la función t.test
t.test(x = muestra,
       alternative = "less",
       mu = 120)
