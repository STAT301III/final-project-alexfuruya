# EDA

# Loading packages
library(tidyverse)

# Loading data
hospice <- read_tsv("data/unprocessed/28961-0002-Data.tsv")

# Looking at number of missing values
count_na <- hospice %>% 
  summarise_all(funs(sum(is.na(.)))) %>%
  gather(count_na) %>% 
  arrange(desc(value)) %>%
  filter(value > 0)

