test_that("multiplication works", {
  expect_equal(2 * 2, 4)
})

test_that("read query from file works", {
  df <- readWQP(statecode="WV",countycode='037',characteristicName="Atrazine")
  # this is a lousy test...
  numrec <- nrow(df)
  expect_equal(numrec, 35)  # replace this with a df comparision?

})
