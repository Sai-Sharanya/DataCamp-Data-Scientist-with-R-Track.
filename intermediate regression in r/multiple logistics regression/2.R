#2


# Fit a logistic regression of churn status vs. length of
# relationship, recency, and an interaction
mdl_churn_vs_both_inter <- glm(
  has_churned ~ time_since_first_purchase * time_since_last_purchase, 
  data = churn, 
  family = binomial
)

# See the result
mdl_churn_vs_both_inter
