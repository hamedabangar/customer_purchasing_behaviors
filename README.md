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

## 👥 Stakeholders

**Primary stakeholders:**
- Retail store managers who will use cluster insights to tailor promotions and optimize inventory
- - Marketing teams responsible for developing targeted campaigns based on customer segment profiles
  - - Customer insights analysts who will interpret and apply the segmentation results
   
    - **Secondary stakeholders:**
    - - Regional sales directors planning expansion strategies
      - - Product development teams aligning offerings with customer preferences
       
        - **Value to stakeholders:** Store managers will use cluster insights to tailor promotions and optimize inventory. Marketing teams will leverage segment profiles for targeted campaigns. Regional directors will use purchasing behavior patterns and regional analysis to identify optimal locations for store expansion.
       
        - ## ⚠️ Risks and Unknowns
       
        - **Data limitations:**
        - - Limited historical depth (238 observations) may not capture seasonal trends or long-term behavioral shifts
          - - Dataset lacks temporal information, preventing time-series analysis of customer behavior changes
           
            - **Model limitations:**
            - - K-Means assumes spherical clusters, which may not reflect real customer groupings
              - - Clustering results depend on feature scaling and may be sensitive to outliers despite preprocessing
                - - Optimal number of clusters (K=6) is based on metrics but requires business validation
                 
                  - **Business risks:**
                  - - Segment interpretations require domain expertise to validate business relevance
                    - - External factors (market changes, economic conditions, new competitors) not reflected in current data
                      - - Regional patterns may shift due to demographic changes or local market dynamics
                       
                        - **Implementation considerations:**
                        - - Model will require periodic retraining as customer behaviors evolve
                          - - Prediction accuracy for new customers depends on how well they match existing segment patterns

---

## 📊 Data Overview

The dataset contains **238 observations** and **7 variables**, each representing demographic and behavioral features of retail customers.

| Feature            | Description                                               |
| ------------------ | --------------------------------------------------------- |
| user_id         | Unique identifier for each customer                       |
| age                | Age of the customer                                       |
| purchase_amount             | The total amount of purchases made by the customer (in USD)                                    |
| annual_income      | Annual income of the customer (USD)                       |
| loyalty_score     | A score assigned based on spending habits |
| purchase_frequency | Number of purchases made per year              |
| region   | Region where customer lives                           |

**Data Source:** Kaggle — *Customer Purchasing Behaviors Dataset*
**Size:** 238 rows × 7 columns

---

## 🧭 Methodology

### 1. [Data Preprocessing](src/Data_Preprocessing.ipynb)



* Handle missing values and outliers
* Encode the region categorical feature using one-hot encoding
* Scale numeric features: age, annual_income, purchase_amount, purchase_frequency, loyalty_score

### 2. [Exploratory Data Analysis (EDA)](EDA/EDA.ipynb)

* Visualize distributions and pairwise relationships
* Analyze correlation between income, spending, and frequency
* Identify potential grouping patterns

### 3. [Clustering](models/CustPrchBehvr_KMeans.ipynb)



We apply **K-Means Clustering** to segment customers based on demographic and behavioral similarities. We experimented with K in the range 2–10 and selected K = 6 based on a trade-off between the elbow in the inertia curve and peak silhouette score.

* Use **Elbow Method** and **Silhouette Score** to determine the optimal number of clusters
* Visualize clusters using PCA for dimensionality reduction

### 4. [Predictive Modeling](src/Predictive_Modeling.ipynb)

Once clusters are defined, we use **classification techniques** (e.g., Logistic Regression, Random Forest) to predict **cluster membership** for new customers.

### 5. [Evaluation](src/Evaluation.ipynb)

* Cluster compactness and separation metrics
* Predictive accuracy for classification models
* Interpretability and business relevance of each segment

---

## 💡 [Key Insights](src/Key_Insights.ipynb)

* We have identified 6 distinct customer personas for segmentation and marketing purposes
   * Cluster 0 is the most valuable and shows the highest average purchase amount (~$600) and loyalty score (~9)
   * Cluster 4 being the youngest with a average age of ~24 and the lowest purchase amount (~$168)
* Through our predictive modeling we are able to determine that past behavior is the strongest predictor of a segment.

* Business implications:

   * Personalization strategies can target high-value clusters with loyalty rewards

   * Low-frequency groups present opportunities for reactivation campaigns

   * Certain regions show strong spending behavior → candidates for store expansion

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

## ▶️ How to Run the Project

1. Clone the repo:

```
git clone https://github.com/hamedabangar/customer_purchasing_behaviors.git
cd customer_purchasing_behaviors
```



Install dependencies:
```
pip install -r requirements.txt
```

Run notebooks in the following order:

1. src/Data_Preprocessing.ipynb

2. EDA/EDA.ipynb

3. models/CustPrchBehvr_KMeans.ipynb

4. src/Predictive_Modeling.ipynb

5. src/Evaluation.ipynb

6. src/Key_Insights.ipynb




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
