# Genera un vector de 44 entradas (aleatorias) llamado ran
ran <-rnorm(44)

#Escribe un loop que eleve al cubo las primeras 15 entradas y les sume 12
res <-ran

for(i in 1:15){
  res[i]<- ran[i]**3+12
}

#Guarda el resultado en un data frame, donde la primera columna sea el número aleatorio y la segunda el resultado, nómbralo df.al
df.al <-data.frame("Num aleatorio"=ran,"Resultado"=res)
df.al