context("R/read_homolog_matrix.R")

test_that("read_homolog_matrix successfully imports data.table object", {
  dir <- ggParanoid_example_dir
  h_mat <- read_matrix(paste0(dir, "homology_matrix.csv.gz"))
  testthat::expect_type(h_mat, data.table)
})
