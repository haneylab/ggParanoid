#' My function
#'
#' This function reads a homology matrix into ggParanoid
#'
#' @param file Name of the homology matrix file
#' @param ... Additional parameters from data.table::fread()
#' @inherit data.table::fread()
#' @export
read_homolog_matrix <- function(file, ...){
  dt <- read_matrix(file, ...)
  to_matrix(dt)
}


read_matrix <- function(file, ...){
  data.table::fread(file, ...)
}

to_matrix <- function(dt){
  as.matrix(dt, rownames = TRUE)
}

