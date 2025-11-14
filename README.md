# customer_purchasing_behaviors
DSI Cohort 7  Team Project ML 15 : Customer Purchasing Behaviors  
# 🛒 Customer Purchasing Behaviour

## Overview

This project explores **customer segmentation and purchasing patterns** using data from the [Customer Purchasing Behaviors Dataset](https://www.kaggle.com/datasets/hanaksoy/customer-purchasing-behaviors/data).
Our goal is to understand how clustering techniques can reveal meaningful customer segments that inform **personalization strategies** and **future store expansion** decisions.

The analysis combines **exploratory data analysis (EDA)**, **K-Means clustering**, and **predictive modeling** to identify key behavioral patterns within the customer base.

---

## 💼 Business Problem

Retailers increasingly rely on data-driven insights to improve marketing precision and optimize store networks.
This project addresses three core business questions:

1. **How can we use clustering to segment the customer base?**
2. **How can these segments inform future personalization strategies?**
3. **How can this segmentation influence future store expansion decisions?**

By identifying natural customer clusters and predicting their purchasing tendencies, retailers can focus resources more effectively — improving customer satisfaction and return on investment.

---

## 📊 Data Overview

The dataset contains **238 observations** and **7 variables**, each representing demographic and behavioral features of retail customers.

| Feature            | Description                                               |
| ------------------ | --------------------------------------------------------- |
| user_id         | Unique identifier for each customer                       |
| age                | Age of the customer                                       |
| purchase_amount             | The total amount of purchases made by the customer (in USD)                                    |
| annual_income      | Annual income of the customer (USD)                       |
| loyalty_score     | A score assigned by the retailer based on spending habits |
| purchase_frequency | Number of purchases made over a given period              |
| region   | Region where customer lives                           |

**Data Source:** Kaggle — *Customer Purchasing Behaviors Dataset*
**Size:** 238 rows × 7 columns

---

## 🧭 Methodology

### 1. [Data Preprocessing](src\Data_Preprocessing.ipynb)



* Handle missing values and outliers
* Encode categorical features (e.g., Gender, Product Category)
* Standardize numerical variables for clustering

### 2. [Exploratory Data Analysis (EDA)](EDA\EDA.ipynb)

* Visualize distributions and pairwise relationships
* Analyze correlation between income, spending, and frequency
* Identify potential grouping patterns

### 3. [Clustering](models\CustPrchBehvr_KMeans.ipynb)



We apply **K-Means Clustering** to segment customers based on demographic and behavioral similarities.

* Use **Elbow Method** and **Silhouette Score** to determine the optimal number of clusters
* Visualize clusters using PCA for dimensionality reduction

### 4. [Predictive Modeling](src\Predictive_Modeling.ipynb)

Once clusters are defined, we use **classification techniques** (e.g., Logistic Regression, Random Forest) to predict **cluster membership** for new customers.

### 5. [Evaluation](src\Evaluation.ipynb)

* Cluster compactness and separation metrics
* Predictive accuracy for classification models
* Interpretability and business relevance of each segment

---

## 💡 [Key Insights](src\Key_Insights.ipynb)

* We have identified 6 distinct personas for segmentation and marketing purposes
* Through our predictive modeling we are able to determine that past behavior is the strongest predictor of a segment.

* Loyalty Score, Purchase Amount & Frequency and Annual Income & Age are the key drivers.

* High-level strategic recommendations for:

  * **Personalization:** Tailored marketing campaigns per segment
  * **Expansion:** Identifying customer clusters underserved in current store locations

---

## Conclusion

The customer segmentation analysis successfully identified six distinct personas, each with unique behaviors and needs. By understanding these segments, the business can move from a one-size-fits-all approach to a highly personalized strategy.

The key drivers of customer value are loyalty, purchase amount, and frequency, while regional analysis points to clear opportunities for targeted expansion.

By implementing these data-driven recommendations, the business can enhance customer satisfaction, improve marketing ROI, and make smarter decisions about future growth.


---



## ⚙️ Environment Setup

### Prerequisites

* Python 3.9+
* Jupyter Notebook

### Recommended Libraries

Install dependencies using `pip install -r requirements.txt`, or manually install the following:

```bash
pip install numpy pandas matplotlib seaborn scikit-learn plotly
```

**requirements.txt**

```
numpy
pandas
matplotlib
seaborn
scikit-learn
plotly
```

---


## 👥 Team Members

| Name     |                                   |
| -------- | --------------------------------------- |
| Sunbal Cheema |
| Karmali Karmali |
| Hamed Abangar |
| Kyuhwan Kim | 
| Thomas Schaefer | 

---

## 🔮 Future Work

* Compare K-Means with other clustering methods (DBSCAN, Hierarchical)
* Develop customer lifetime value (CLV) models for each segment
* Integrate additional data sources (geographic or transactional data)
* Explore real-time personalization strategies

---

## 📎 Repository Structure

```
├── data/raw
│   └── customer_purchasing_behaviors.csv
├── EDA/
│   └── EDA.ipynb
├── models
│   └── CustPrchBehvr_KMeans.ipynb
│── reports
│   └── cluster_comparison.jpg
│   └── Radar_chart.jpg
│── src
│   └── Data_Preprocessing.ipynb
│   └── Evaluation.ipynb
│   └── Key_Insights.ipynb
│   └── Predictive_Modeling.ipynb
├── README.md

```

---

---

**Author(s):** Team 15 — DSI Final Project
**Dataset Credit:** [Kaggle: Customer Purchasing Behaviors](https://www.kaggle.com/datasets/hanaksoy/customer-purchasing-behaviors/data)

---

**Reflection videos**

Links to be shared here