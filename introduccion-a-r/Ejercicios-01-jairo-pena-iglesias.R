## ---------------------------------------------------------------
## ------------- Ejercicios con R --------------------------------
## ------------- Jairo Peña Iglesias -----------------------------
## - Asignatura: Simulación estadística y análisis de series temporales
## --- Fecha: 20/02/2017 -----------------------------------------
## ---------------------------------------------------------------

#---------------------------------
#----------1. Introduccion--------
#---------------------------------

load("data/datosprimerasesion.Rdata")

ls() #define una lista de los objetos definidos en la sesion actual
names(escombrerashoras09)
dim(escombrerashoras09) #dim nos permite conocer el nº de filas y columnas
nrow(escombrerashoras09) #nrow = nº de filas
ncol(escombrerashoras09) #ncol = nº columnas
head(escombrerashoras09) #head permite visualizar las primeras lineas del conjunto

#---------------------------------
#----------2. Ejercicios----------
#---------------------------------

#---------------------------------
#----------Apartado 1-------------
#---------------------------------

#fila = individuo en escombrerashoras09
nrow(escombrerashoras09)
#columna = variable del conjunto escombrerashoras09
ncol(escombrerashoras09)
#tambien lo podemos realizar con la instruccion dim
dim(escombrerashoras09) #nº filas = individuo y nº columnas = variable
#individuos y variables del conjunto anscombe
dim(anscombe) 
#individuos y variables del conjunto cemento
dim(cemento)
#individuos y variables del conjunto geyser
dim(geyser)
#individuos y variables del conjunto newcomb
dim(newcomb)
#individuos y variables del conjunto prueba_acceso
dim(prueba_acceso)

#------------------------------
#----------Apartado 2----------
#------------------------------
#a) individuo (fila) 5503
escombrerashoras09[5503,] #corresponde a la fecha 2009-09-11
#b) la variable (columna) resistencia es la 2ª
cemento[,2]
#c)
u <- prueba_acceso$MEDIA_EXPEDIENTE[84934]

#------------------------------
#----------Apartado 3----------
#------------------------------

prueba_acceso$MEDIA_PARTES12 <- (prueba_acceso$MEDIA_PARTE1 + 
                                   prueba_acceso$MEDIA_PARTE2)/2
#-------------------------------
#----------Apartado 4-----------
#-------------------------------

x <- c(1.2, 4.3, 3.2, -3)
y <- c(0.042, -0.98, 0, 1.02)
