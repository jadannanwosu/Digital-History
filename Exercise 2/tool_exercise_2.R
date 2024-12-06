library(tidyverse)
data <- read_csv('/Users/jennenwosu/digital_history/Digital-History/historical_trade_data.csv')

head(data)

data %>%
  filter(Exports > 200000) %>%
  mutate(trade_balance = Exports - Imports) %>%
  ggplot(aes(x = Year, y = trade_balance)) +
  geom_line()

ggsave('line_plot.png')
