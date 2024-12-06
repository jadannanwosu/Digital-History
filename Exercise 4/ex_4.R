library(tidyverse)
setwd('/Users/jennenwosu/digital_history/Digital-History')
census_data <- read_csv('census_data.csv')

census_data %>%
  filter(year %in% c(1820, 1830, 1840)) %>%
  filter(stateicp == 54 & county == 370) %>%
  group_by(year) %>%
  summarize(tot_pop = sum(ntotal)) %>%
  ggplot(aes(x = year, y = tot_pop)) +
  geom_line()
  

