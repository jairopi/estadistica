# ----------Esto es un comentario-----------------------------------------
#
#Primera sesión con R. Lunes 20 de Febrero
#
#-------------------------------------------------------------------------

x <- 3
y <-  x + 10
z <-  exp(x + y)

peso <- c(54, 70, 65, 78, 68, 85) #Esto es un vector de valores numericos
altura <- c(160, 170, 172, 185, 160, 175)
#al ser de la misma longitud puedo juntar los dos vectores anteriores en un 
#conjunto de datos o data.frame
constitucion <- data.frame(peso, altura)

constitucion[2,2] #obtengo el 2º valor de la 2ª columna
constitucion[,2] #obtengo todas las filas de la 2ª columna
constitucion[3,] #obtengo todos los valores de la 3ª fila
constitucion$peso #hace referencia a columnas (peso) usando su nombre (peso)
constitucion$altura #solo tomo la columna altura
#calculamos el indice de masa corporal, añadiendo la columna IMC a la 
#tabla constitucion
constitucion$IMC <- constitucion$peso/(constitucion$altura/100)^2
constitucion #mostramos la tabla constitucion
