source('readWQPdata_app.R')




test_that("multiplication works", {
  expect_equal(2 * 2, 4)
  print("did simple math")
})

test_that("test simple data query using agruments", {
  df <- readWQP(statecode="WV",countycode='037',characteristicName="Atrazine")
  # this is a lousy test...
  numrec <- nrow(df)
  expect_equal(numrec, 35)  # replace this with a df comparison?

})
