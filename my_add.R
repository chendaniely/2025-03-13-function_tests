my_add <- function(x) {
  return(x + 10)
}

stopifnot(my_add(10) == 20)
stopifnot(my_add(100) == 110)
stopifnot(my_add(10.5) == 20.5)
stopifnot(TRUE)
# stopifnot(FALSE)

library(testthat)

expect_equal(my_add(10.5), 20.5)


# tdd

my_add <- function(x) {
  # after you define the test you implement
  return(x + 10)
}
expect_equal(my_add(10.5), 20.5)
