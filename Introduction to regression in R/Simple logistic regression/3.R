#3


# Fit a logistic regression of churn vs. 
# length of relationship using the churn dataset
mdl_churn_vs_relationship <- glm(
  has_churned ~ time_since_first_purchase, 
  data = churn, 
  family = binomial
)

# See the result
mdl_churn_vs_relationship
