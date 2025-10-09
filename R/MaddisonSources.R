#' Maddison Project data 
#'
#' @description
#' The 
#' \href{https://en.wikipedia.org/wiki/Maddison_Project}{Maddison project} 
#' collates historical economic statistics from many sources. 
#' `MaddisonCountries` is a [`data.frame`] of all (`countrycode`, `country`, 
#' `region`) combinations in those data. 
#'
#' @format ## `MaddisonSources`
#' A named list of [tibble::tibble]s, one for each country, named with the ISO country 
#' codes. Each tibble has one row for each source for the indicated ISO and 
#' two columns: 
#' \describe{
#'   \item{years}{
#'      character variable of year(s) for this source starting with year 1 CE. 
#'    }
#'   \item{source}{character variable giving the source for the `years` 
#'      described.
#'   }
#' }
#' In addition, `MaddisonSources` has an attribute `since2008`, which says, 
#' "gdppc since 2008: Total Economy Database (TED) from the Conference Board 
#' for all countries included in TED and UN national accounts statistics for 
#' all others."
#' @examples
#' MaddisonSources[['GBR']]
#' MaddisonSources[c('GBR', 'USA')]
#' @source <https://www.rug.nl/ggdc/historicaldevelopment/maddison/releases/maddison-project-database-2020?lang=en>"Groningen Growth and Development Centre"
"MaddisonSources"
