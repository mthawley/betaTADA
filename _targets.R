library(targets)
source("R/readWQP.R")
options(tidyverse.quiet = TRUE)
tar_option_set(packages = c("tidyverse","dataRetrieval"))

list(
    tar_target(query_file, "temp/InputQuery.csv", format = "file"),
    tar_target(raw_data, read_csv(query_file))
)

