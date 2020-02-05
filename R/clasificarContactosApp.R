
#' @title clasificarContactosApp
#' @description Funcion principal del paquete de clasificarContactos
#' 
#' @param path, string 
#' 
#' @export
#' @import logging
#'
#' @author Ander
clasificarContactosApp <- function(path){
  
  tryCatch(expr = {
    
    
    #path <- "~/BOOTCAMPS/18112019/clasificarContactos/"
    
    library(logging)
    
    #Generar el manejado de log
    addHandler(writeToFile, logger = 'log', file = paste0(path, "/log/logfile.log"))
    loginfo("Empezamos la app...", logger = 'log')
    
    config <- leerConfig(path)
    
    
    
    
  }, error = function(e){
    
    logerror("La aplicacion ha petado...", logger = 'log')
    stop()
  },finally = {
    
    loginfo("Fin de la ejecucion.", logger = 'log')
    removeHandler(writeToFile, logger = 'log')
  })

  
}
