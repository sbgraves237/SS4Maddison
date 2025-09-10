test_that("path_package2", {
# search for a file matching a regular expression
# Example 1  
  mpdXlsx <- path_package2('^mpd.*xlsx$') 
  searched <- attr(mpdXlsx, 'searched')
# A call to "expect*" seems to be needed to trigger testing    
  expect_equal(class(mpdXlsx), 'character')
  if(length(mpdXlsx)>0){
    mpdList <- strsplit(mpdXlsx, .Platform$file.sep)[[1]]
    if(length(grep('^mpd.*xlsx$', tail(mpdList, 1)))<1){
      print(mpdXlsx)
      stop("object returned by path_package2('^mpd.*xlsx$')", 
         ' did not contain the search string.')
      if(length(searched)<1){
        stop("object returned by path_package2('^mpd.*xlsx$')", 
           ' did not have a "searched" attribute.')
      }
    }
  }
  searched1 <- strsplit(searched[1], .Platform$file.sep)[[1]]
  if(length(grep('SS4Maddison', searched1))<1){
    print(searched1)
    stop("'searched' attribute of object returned by ", 
             "path_package2('^mpd.*xlsx$')[1] did not include ", 
             'SS4Maddison.')
  }
# Example 2  
  mpdXlsx0 <- path_package2('^mpd.*xlsx$', nparents=0, subdirs=character(0))
  searched0 <- attr(mpdXlsx0, 'searched')
  if(length(mpdXlsx0)>0){
    mpdList <- strsplit(mpdXlsx0, .Platform$file.sep)[[1]]
    if(length(grep('^mpd.*xlsx$', tail(mpdList, 1)))<1){
      print(mpdXlsx0)
      stop("object returned by path_package2('^mpd.*xlsx$',",
           " nparents=0, subdirs=character(0)) did not contain", 
           ' the search string.')
    }
  }
  if(length(searched0)!=1){
    print(mpdXlsx0)
    stop("object returned by path_package2('^mpd.*xlsx$',",
         " nparents=0, subdirs=character(0)) should have length 1;" 
         , " had length = ", length(searched0))
  }
  searched01 <- strsplit(searched0[1], .Platform$file.sep)[[1]]
  if(length(grep('SS4Maddison', searched01))<1){
    print(searched0)
    stop("'searched' attribute of object returned by ", 
             "path_package2('^mpd.*xlsx$', nparents=0, ", 
             "subdirs=character(0)) did not contain 'SS4Maddison'.")
  } 
})
