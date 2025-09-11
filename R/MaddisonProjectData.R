#' Maddison Project data 
#'
#' The 
#' \href{https://en.wikipedia.org/wiki/Maddison_Project}{Maddison project} 
#' collates historical economic statistics from many sources. 
#'
#' @format ## `MaddisonData`
#' A data frame with 4 columns:
#' \describe{
#'   \item{countrycode}{3-letter ISO country code}
#'   \item{year}{Year}
#'   \item{gdppc}{Real Gross Domestic Product (GDP) per capita in 2011$ at 
#'      [purchasing power parity (PPP)](
#'      https://en.wikipedia.org/wiki/Purchasing_power_parity)
#'   }
#'   \item{pop}{population}
#' }
#' @format ## `MaddisonCountries`
#' A data frame with 3 columns: 
#' \describe{
#'   \item{countrycode}{3-letter ISO country code}
#'   \item{country}{Country name used by the Maddison project}
#'   \item{region}{Geographic region including `country`}
#' }
#' @examples
#' # Get the country for a countrycode
#' subset(MaddisonCountries, countrycode=='GBR', country)
#' # Find Yugoslavia 
#' subset(MaddisonCountries, grepl('Yugo', country), 1:3)
#' # number of countries by region 
#' table(MaddisonCountries$region)
#' # What are "Western Offshoots"? 
#' subset(MaddisonCountries, grepl('Of', region), c(country, countrycode))
#' 
#' @source <https://www.rug.nl/ggdc/historicaldevelopment/maddison/releases/maddison-project-database-2020?lang=en>"Groningen Growth and Development Centre"
