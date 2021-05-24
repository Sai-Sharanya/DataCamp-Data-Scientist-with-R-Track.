#4


# Print votes_processed
votes_processed

# Find total and fraction of "yes" votes
votes_processed %>%
  summarize(total = n(),
            percent_yes = mean(vote == 1))
