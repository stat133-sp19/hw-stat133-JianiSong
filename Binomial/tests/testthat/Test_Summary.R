library(testthat)
context("Test for Auxillary functions")

test_that("Aux_mean works as expected",{
  expect_equal(aux_mean(20,0.1),2)
  expect_length(aux_mean(20,0.5),1)
  expect_type(aux_mean(20,0.1), "double")
  expect_error(aux_mean(0,0.1))
  expect_error(aux_mean(15,-2))
})

test_that("aux_variance works as expected",{
  expect_equal(aux_variance(20,0.1),1.8)
  expect_length(aux_variance(20,0.5),1)
  expect_type(aux_variance(20,0.1),"double")
})

test_that("aux_mode works as expected",{
  expect_equal(aux_mode(20,0.1), 2)
  expect_length(aux_mode(20,0.5),1)
  expect_type(aux_mode(20,0.1),"integer")
  expect_error(aux_mode(20,2))
  expect_error(aux_mode(20,-0.6))
})

test_that("aux_skewness works as expected",{
  expect_equal(aux_skewness(20,0.1),(1-2*0.1)/(sqrt(20*0.1*(1-0.1))))
  expect_length(aux_skewness(15,0.5),1)
  expect_type(aux_skewness(20,0.1),"double")
  expect_error(aux_skewness(0,0.1))
  expect_error(aux_skewness(20,2))
  expect_error(aux_skewness(20,-0.6))

})

test_that("aux_kurtosis works as expected",{
  expect_equal(aux_kurtosis(20,0.1),23/90)
  expect_length(aux_kurtosis(15,0.5),1)
  expect_type(aux_kurtosis(20,0.1),"double")
  expect_error(aux_kurtosis(-15,0.5))
  expect_error(aux_kurtosis(0,1))
})
