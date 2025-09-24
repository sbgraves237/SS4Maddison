#' Maddison Project data 
#'
#' @description
#' The 
#' \href{https://en.wikipedia.org/wiki/Maddison_Project}{Maddison project} 
#' collates historical economic statistics from many sources. 
#' `MaddisonCountries` is a [`data.frame`] of all (`countrycode`, `country`, 
#' `region`) combinations in those data. 
#'
#' @format ## `MaddisonCountries`
#' A data frame with 3 columns: 
#' \describe{
#'   \item{countrycode}{3-letter ISO country code}
#'   \item{country}{Country name used by the Maddison project}
#'   \item{region}{Geographic region including `country`}
#' }
#' @source <https://www.rug.nl/ggdc/historicaldevelopment/maddison/releases/maddison-project-database-2020?lang=en>"Groningen Growth and Development Centre"
"MaddisonCountries"
