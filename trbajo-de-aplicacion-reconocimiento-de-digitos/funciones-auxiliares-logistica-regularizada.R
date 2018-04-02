#######################
## Función sigmoidal ##
#######################
g <- function (z)
{
  g.tmp <- 1/(1 + exp( - z))
  ##  
  return(g.tmp) 
}
###################################
## Función de coste regularizada ##
###################################
Jreg <- function(theta, lambda, x.mat, y)
{
  ## completar aquí devolviendo el valor J.tmp
  h.tmp <- g(x.mat%*%theta) 
  J.tmp <- - mean(y * log(h.tmp) + (1 - y) * log(1-h.tmp)) +
    lambda / length(y) * sum(c(0, theta[-1])^2)
  ##
  return(J.tmp)
}
###################################################
## Gradiente de la función de coste regularizada ##
###################################################
gradJreg <- function(theta, lambda, x.mat, y)
{
  # teneís que calcular el gradiente aquí
    gradJ.tmp <- 1 / length(y) * t(x.mat) %*% (g(x.mat %*% theta) - y) +
      2 * lambda / length(y) * c(0, theta[-1]) 
  # fin completar
    return(gradJ.tmp)
}
