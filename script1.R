library(fivethirtyeight)
library(tidyverse)

data("steak_survey", package="fivethirtyeight")

sdat <- na.omit(steak_survey) %>%
  filter(region=="Mountain")

sdat %>%
  select(age, female, educ, steak_prep) %>%
  summary()

ggplot(sdat, 
       aes(x = steak_prep, fill = female)) + 
  geom_bar(position="dodge") +
  ggtitle(paste0("Steak Preparation Preference by Gender for ",
                 "Mountain"," Region"))

