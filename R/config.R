#' Title
#'
#' @param path 
#'
#' @return
#' 
#' @import XML
#'
#' @examples
leerConfig <- function(path){
  
  library(XML)
  
  
  configPath <- paste0(path, "config/config.xml")
  
  
  tryCatch(expr = {
    
    #Leer el xml y convertirlo a lista
    config <- XML::xmlToList(xmlParse(configPath))
    
    
  }, error = function(e){
    
    logerror("Config no encontrado en su ruta. Verifica que se llame config.xml",
             logger = 'log')
    stop()
  })
  
  
  
  loginfo("Config leido.", logger = 'log')
  
  
  
  config$columnas$predictorasNumericas <- trimws(strsplit(config$columnas$predictorasNumericas, ",")[[1]])
  loginfo("llegas aqui?", logger = 'log')
  
} 
