#1


# Using churn, plot time_since_last_purchase
ggplot(churn, aes(time_since_last_purchase)) +
  # as a histogram with binwidth 0.25
  geom_histogram(binwidth = 0.25) +
  # faceted in a grid with has_churned on each row
  facet_grid(rows = vars(has_churned))



# Redraw the plot with time_since_first_purchase
ggplot(churn, aes(time_since_first_purchase)) +
  geom_histogram(binwidth = 0.25) +
  facet_grid(rows = vars(has_churned))
