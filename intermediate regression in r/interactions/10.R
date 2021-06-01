#10


# Fit linear regression of price vs. opening bid and auction 
# type, with an interaction.
mdl_price_vs_both <- lm(
  price ~ auction_type + openbid:auction_type + 0, # or price ~ auction_type * openbid
  data = auctions
)

# See the result
mdl_price_vs_both



