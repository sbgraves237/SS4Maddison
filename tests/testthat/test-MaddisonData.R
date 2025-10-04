test_that("MaddisonData", {
# Get the country for a countrycode
  GBR <- MaddisonData[MaddisonData$countrycode=='GBR', ]
  expect_equal(ncol(GBR), 4)
  expect_gt(nrow(GBR), 206)
})
