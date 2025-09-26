test_that("MaddisonCountries", {
# Get the country for a countrycode
  GBR0 <- data.frame(country='United Kingdom')
  row.names(GBR0) <- 'GBR'
  expect_equal(GBR0, 
    subset(MaddisonCountries, countrycode=='GBR', country)
  )
# Find Yugoslavia 
  YUG0 <- data.frame(countrycode='YUG', 
                     country='Former Yugoslavia', 
                     region = 'Eastern Europe')
  row.names(YUG0) <- 'YUG'
  expect_equal(YUG0, 
        subset(MaddisonCountries, grepl('Yugo', country), 1:3)
  ) 
# number of countries by region 
  expect_equal(8, length(table(MaddisonCountries$region)))
# What are "Western Offshoots"? 
  expect_equal(c(4, 2), dim(subset(MaddisonCountries, 
              grepl('Of', region), c(country, countrycode))))
})
