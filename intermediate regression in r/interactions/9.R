#9



# Take a glimpse at the dataset
glimpse(auctions)

# Model price vs. opening bid using auctions
mdl_price_vs_openbid <- lm(price ~ openbid, data = auctions)

# See the result
mdl_price_vs_openbid




# Using auctions, plot price vs. opening bid as a 
# scatter plot with linear regression trend lines
ggplot(auctions, aes(openbid, price)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE)
