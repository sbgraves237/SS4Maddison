test_that("MaddisonSources", {
  expect_lte(length(MaddisonSources), 
               nrow(MaddisonCountries)) 
  since2008 <- paste("gdppc since 2008: Total Economy Database (TED)", 
      "from the Conference Board for all countries included in TED and UN", 
      "national accounts statistics for all others.")
  expect_equal(attr(MaddisonSources, 'since2008'), 
               since2008)
})
