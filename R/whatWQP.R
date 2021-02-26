library(dataRetrieval)


whatWQP <- function(...){
  # taps WQP to see how many records the search query will provide
  # this is so make sure the query is sufficiently narrow before downloading
  inArgs  <- list(...)
  df <- whatWQPdata(inArgs)
  activity_count <- sum(df$activityCount)
  return(activity_count)
}

