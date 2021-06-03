#8

# Set the intercept to 1
intercept <- 1

# Set the slope to 0.5
slope <- 0.5

# Calculate the predicted y values
y_pred <- plogis(intercept + slope * x_actual)

# Calculate the log-likelihood for each term
log_likelihoods <- log(y_pred) * y_actual + log(1 - y_pred) * (1 - y_actual)

# Calculate minus the sum of the log-likelihoods for each term
-sum(log_likelihoods)




calc_neg_log_likelihood <- function(coeffs) {
  # Get the intercept coeff
  intercept <- coeffs[1]

  # Get the slope coeff
  slope <- coeffs[2]

  # Calculate the predicted y values
  y_pred <- plogis(intercept + slope * x_actual)

  # Calculate the log-likelihood for each term
  log_likelihoods <- log(y_pred) * y_actual + log(1 - y_pred) * (1 - y_actual)

  # Calculate minus the sum of the log-likelihoods for each term
  -sum(log_likelihoods)
}



# From previous step
calc_neg_log_likelihood <- function(coeffs) {
  intercept <- coeffs[1]
  slope <- coeffs[2]
  y_pred <- plogis(intercept + slope * x_actual)
  log_likelihoods <- log(y_pred) * y_actual + log(1 - y_pred) * (1 - y_actual)
  -sum(log_likelihoods)
}

# Optimize the metric
optim(
  # Initially guess 0 intercept and 1 slope
  par = c(intercept = 0, slope = 1),
  # Use calc_neg_log_likelihood as the optimization fn 
  fn = calc_neg_log_likelihood
)

# Compare the coefficients to those calculated by glm()
glm(has_churned ~ time_since_last_purchase, data = churn, family = binomial)
