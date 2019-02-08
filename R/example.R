#' ggParanoid_example
#'
#' ggParanoid comes with sample data in it's `inst/extdata` directory. `ggParanoid_example` makes it easy to access.
#'
#' @param path Name of the file. If `NULL`, it will list all files in `extdata`.
#' @export
#' @examples
#' # list all files
#' ggParanoid_example()

ggParanoid_example <- function(path = NULL) {
  if (is.null(path)) {
    dir(system.file("extdata", package = "ggParanoid"))
  } else {
    system.file("extdata", path, package = "ggParanoid", mustWork = TRUE)
  }
}

#' @rdname ggParanoid_example
#' @export
ggParanoid_example_dir <- function(){
  system.file("extdata", package = "ggParanoid")}
