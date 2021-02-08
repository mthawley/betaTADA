library(dataRetrieval)

getWCPdata <- function(inURL){
  # just a shell function that reads uses dataRetrieval::readWQPdata for now
  # using an input URL
  df <- readWQPdata(inURL)
  return(df)
}
