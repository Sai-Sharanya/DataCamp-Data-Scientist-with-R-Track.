#1


# Load the dplyr package
library(dplyr)

# Print the votes dataset
votes

# Filter for votes that are "yes", "abstain", or "no"
votes %>%
  filter(vote <= 3)
