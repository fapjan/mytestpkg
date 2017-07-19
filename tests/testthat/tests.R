library(mytestpkg)

context('the basis test')

## first function test
test.mean <- MultMean(c(8,10),3)

test_that('my function works', {
  expect_equal(test.mean,27)
})


## second function test
test.100 <- Sample100(runif(120,0,1))

test_that('also my second function works', {
  expect_equal(length(test.100),100)
})
