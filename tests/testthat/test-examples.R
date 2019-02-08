context("Example data")

test_that("ggParanoid_example returns the correct number of files", {
  testthat::expect_equal(length(ggParanoid::ggParanoid_example()), 1)
})

test_that("homology_matrix.csv.gz is in the correct location", {
  dir <- ggParanoid::ggParanoid_example_dir()
  file <- "/homology_matrix.csv.gz"
  testthat::expect_equal(file.exists(paste0(dir, file)), TRUE)
})
