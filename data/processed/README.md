# customer_purchasing_behaviors
DSI Cohort 7  Team Project ML 15 : Customer Purchasing Behaviors  


# About This Folder  (For illustrative purposes only. A sample guideline for processing related scenarios)

This folder holds the processed (cleaned and transformed) version of our customer purchasing data for our team machine learning project. If you’re a student or reviewer, this is the data ready to use in analysis and modeling notebooks. 

# How Was It Processed?

**Missing Values:** Rows missing important information like age, annual income, or purchase amounts were fixed by either filling in values (imputed with medians) or removing them.

**Duplicate Data:** Any users who appeared more than once were removed, so each record is unique.

**Outliers:** Numbers in income, age, etc. that were far outside normal ranges—like extremely high incomes—were examined and either capped or excluded.

**Features:** Categorical data (like 'region') was converted into model-friendly formats. New columns, like "average purchase frequency" and "normalized loyalty score," were added to better describe each customer.

**Scaling:** All numbers were standardized (so they’re on a similar scale) to improve model accuracy and fairness.

# Processed Dataset Files
customer_purchasing_behaviors_processed.csv: This is the cleaned dataset we use for all our analysis and machine learning work.

# Notes for Reviewers and Teammates
Every cleaning and engineering step above is shown in detail in our project notebooks—for full reproducibility. If any new processed files show up here later, they'll follow the same cleaning rules.
