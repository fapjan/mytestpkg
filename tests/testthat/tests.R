library(mytestpkg)

context('the basis test')

test.mean <- MultMean(c(8,10),3)

test_that('my function works', {
  expect_equal(test.mean,27)
})
