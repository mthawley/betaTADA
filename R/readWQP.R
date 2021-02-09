library(dataRetrieval)

readWQP <- function(...){
  # just a shell function that reads uses dataRetrieval::readWQPdata for now
  # and doesn't include any testing
  inArgs  <- list(...)
  df <- readWQPdata(inArgs)
  return(df)

}
