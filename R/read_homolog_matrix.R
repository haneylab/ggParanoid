#' My function
#'
#' This function reads a homology matrix into ggParanoid
#'
#' @param file is a path to the homology matrix file
#' @return data.table
#'
#' @examples
#' test_sqr(5)
#'
#' @export
read_matrix <- function(file, ...){
  data.table::fread(file, ...)
}
