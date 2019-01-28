context("ggParanoid")

test_that("example data file exists", {
  dir <- ggParanoid_example_dir()
  filename <- "/homology_matrix.csv.gz"
  testthat::expect_true(file.exists(paste0(dir, filename)))
})

test_that("read_matrix() successfully imports data.table object", {
  dir <- ggParanoid_example_dir()
  filename <- "/homology_matrix.csv.gz"
  h_mat <- read_matrix(paste0(dir, filename))
  testthat::expect_true(all(c("data.table", "data.frame") %in% class(h_mat)))
})

test_that("to_matrix() properly converts data.table object to matrix object", {
  dt <- data.table(c("A", "B", "C", "D"), c(1,2,3,4), c(0,0,0,1))
  mat <- to_matrix(dt)
  testthat::expect_equal(class(mat), "matrix")
})

test_that("read_homolog_matrix() produces matrix of type 'integer'", {
  filename <- paste0(ggParanoid_example_dir(), "/homology_matrix.csv.gz")
  hm <- read_homolog_matrix(filename)
  testthat::expect_type(hm, "integer")
})
