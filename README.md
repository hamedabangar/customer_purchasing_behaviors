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

### 1. Data Preprocessing

* Handle missing values and outliers
* Encode categorical features (e.g., Gender, Product Category)
* Standardize numerical variables for clustering

### 2. Exploratory Data Analysis (EDA)

For more thorough results, see [EDA](EDA)

* Visualize distributions and pairwise relationships
* Analyze correlation between income, spending, and frequency
* Identify potential grouping patterns

### 3. Clustering

We apply **K-Means Clustering** to segment customers based on demographic and behavioral similarities.

* Use **Elbow Method** and **Silhouette Score** to determine the optimal number of clusters
* Visualize clusters using PCA for dimensionality reduction

### 4. Predictive Modeling

Once clusters are defined, we use **classification techniques** (e.g., Logistic Regression, Random Forest) to predict **future purchasing behavior** and cluster membership for new customers.

### 5. Evaluation

* Cluster compactness and separation metrics
* Predictive accuracy for classification models
* Interpretability and business relevance of each segment

---

## 💡 Key Insights (Expected Outcomes)

* Identification of distinct customer personas (e.g., high-value loyalists, budget-conscious buyers, occasional shoppers)
* Understanding which demographic or behavioral traits drive spending and frequency
* High-level strategic recommendations for:

  * **Personalization:** Tailored marketing campaigns per segment
  * **Expansion:** Identifying customer clusters underserved in current store locations

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

## 🚀 How to Run

1. Clone this repository:

   ```bash
   git clone https://github.com/hamedabangar/customer_purchasing_behaviors
   ```
2. Navigate to the project directory:

   ```bash
   cd customer-purchasing-behaviour
   ```
3. Install dependencies:

   ```bash
   pip install -r requirements.txt
   ```
4. Launch the notebook:

   ```bash
   jupyter notebook
   ```
5. Open `Customer_Purchasing_Behaviour.ipynb` and run all cells.

---

## 👥 Team Members

| Name     | Role                                    |
| -------- | --------------------------------------- |
| Member 1 | Data preprocessing, feature engineering |
| Member 2 | Exploratory Data Analysis               |
| Member 3 | Modeling and evaluation                 |
| Member 4 | Business analysis & visualization       |
| Member 5 | Documentation & presentation            |

---

## 🔮 Future Work

* Compare K-Means with other clustering methods (DBSCAN, Hierarchical)
* Develop customer lifetime value (CLV) models for each segment
* Integrate additional data sources (geographic or transactional data)
* Explore real-time personalization strategies

---

## 📎 Repository Structure

```
├── data/
│   └── customer_purchasing_behaviors.csv
├── notebooks/
│   └── Customer_Purchasing_Behaviour.ipynb
├── requirements.txt
├── README.md
└── visuals/
    ├── cluster_visualization.png
    └── correlation_matrix.png
```

---

---

**Author(s):** Team 15 — DSI Final Project
**Dataset Credit:** [Kaggle: Customer Purchasing Behaviors](https://www.kaggle.com/datasets/hanaksoy/customer-purchasing-behaviors/data)
