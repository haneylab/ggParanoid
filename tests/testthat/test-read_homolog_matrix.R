context("Data import from PyParanoid")

test_that("read_matrix() successfully imports a data.table object", {
  dir = ggParanoid::ggParanoid_example_dir()
  file = "/homology_matrix.csv.gz"
  mat = paste0(dir, file)
  testthat::expect_equal("data.table" %in% class(ggParanoid:::read_matrix(mat)), TRUE)
})

test_that("to_matrix() effectively converts a data.table object into a matrix", {
  dt <- data.table::data.table(c("A", "B", "C", "D"), c(1,2,3,4), c(0,0,0,1))
  mat <- ggParanoid:::to_matrix(dt)
  testthat::expect_equal(class(mat) == "matrix", TRUE)
})

test_that("read_homolog_matrix() produces a properly formatted homolgy matrix", {
  dir <- ggParanoid::ggParanoid_example_dir()
  file <- "/homology_matrix.csv.gz"
  hmat <- ggParanoid::read_homolog_matrix(paste0(dir, file))
  testthat::expect_equal(class(hmat), "matrix")
  testthat::expect_equal(rownames(hmat), c("pseudomonas_fluorescens_pf0_1", "pseudomonas_sp_ch235",
                                           "pseudomonas_sp_ch267", "pseudomonas_sp_ch229", "pseudomonas_sp_pb103",
                                           "pseudomonas_sp_pb106"))
})
