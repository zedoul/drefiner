context("drefiner test")

test_that("testcase", {
  formulas <- rbind(c(Name = "Length",
                      Formula = "Sepal.Length + Petal.Length"),
                    c(Name = "Width",
                      Formula = "Sepal.Width + Petal.Width"))
  res <- drefiner(iris, formulas)
  expect_equal(res[1,1], 6.5)
})
