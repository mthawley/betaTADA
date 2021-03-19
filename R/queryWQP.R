# this has replaced readWQP to avoid confusion

library(dataRetrieval)

queryWQP <- function(...){
  #
  inArgs  <- list(...)
  print(inArgs)

  # x <- inArgs
  # return(x)

  # query logic will go here
  #      do we have a good set of inputs?
  # currently an example only
  #
  options <- c('statecode','countycode','characteristicName')

  # make sure all args are valid parameters
  if (!all(names(inArgs) %in% options)){
    message(sprintf("These are not valid inputs. Check domain values and try again.\n"))
    return()
  }
  # Get info on size of data return
  sites <- whatWQPdata(inArgs)
  siteCount <- length(sites$resultCount)
  activityCount <- sum(sites$resultCount)

  # not sure of mode of messaging yet
  message(sprintf("Your query produced the following records: \n"))
  message(sprintf("site count %s\n", siteCount))
  message(sprintf("activity count %s\n", activityCount))

  # this takes input from the console for now
  # need to decide how to wire this in for package
  #
  print('Would you like to (1)download, (2)retry or (3)exit?\n')
  invar <- readline()
  if (invar == '1'){
    print('...downloading...')
    df <- readWQPdata(inArgs)
    return(df)
  }
  else if (invar == '2'){
    message(sprintf("Retry your query\n"))
  }
  else {
    message(sprintf("...exiting...\n"))
  }

}


d <- queryWQP(statecode="WV",countycode='037',characteristicName="Atrazine")



