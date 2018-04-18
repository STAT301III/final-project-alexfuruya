EDA

library(tidyverse)

# Selecting some variables for EDA
hospice <- read_tsv_chunked("data/unprocessed/28961-0002-Data.tsv")
