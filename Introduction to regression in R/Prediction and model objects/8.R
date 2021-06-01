#8


# Run a linear regression on return_2019 vs. return_2018
# using sp500_yearly_returns
mdl_returns <- lm(formula = return_2019~return_2018, data= sp500_yearly_returns)




# See the result
mdl_returns





# From previous step
mdl_returns <- lm(
  return_2019 ~ return_2018, 
  data = sp500_yearly_returns
)

# Create a data frame with return_2018 at -1, 0, and 1 
explanatory_data <- tibble(
  return_2018 = c(-1, 0, 1)
)

# Use mdl_returns to predict with explanatory_data
predict(mdl_returns, explanatory_data)
