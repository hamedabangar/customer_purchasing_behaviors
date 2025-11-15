# Repository Reorganization Implementation Guide

**Branch:** karmali  
**Date:** November 14, 2025  
**Purpose:** Implement logical folder structure and execution sequence for ML project

---

## 🎯 Overview

This guide provides step-by-step instructions to reorganize the repository into a professional, logical structure that follows ML project best practices and prepares the codebase for your final presentation.

## 📁 Target Structure

```
customer_purchasing_behaviors/
├── README.md (updated)
├── requirements.txt (new)
├── REORGANIZATION_GUIDE.md (this file)
│
├── data/
│   ├── raw/
│   │   └── customer_purchasing_behaviors.csv
│   └── processed/
│       └── customer_purchasing_behaviors_processed.csv
│
├── notebooks/
│   ├── 01_data_preprocessing/
│   │   └── Data_Preprocessing.ipynb
│   ├── 02_exploratory_analysis/
│   │   └── EDA.ipynb
│   ├── 03_clustering/
│   │   └── KMeans_Clustering.ipynb
│   ├── 04_predictive_modeling/
│   │   └── Predictive_Modeling.ipynb
│   ├── 05_evaluation/
│   │   └── Evaluation.ipynb
│   └── 06_insights/
│       └── Key_Insights.ipynb
│
├── outputs/
│   ├── figures/
│   │   ├── cluster_comparison.jpg
│   │   ├── Radar_chart.jpg
│   │   └── (other visualizations)
│   └── models/
│       └── (saved model files .pkl)
│
└── archive/
    └── experiments/
        ├── Customer Purchasing Behaviours.ipynb
        ├── EDA.ipynb
        └── README.md
```

---

## 🔧 Implementation Steps

### Step 1: Create New Folder Structure

Using GitHub web interface or git commands, create the following folders:

```bash
# If using command line:
git checkout karmali

# Create notebooks structure
mkdir -p notebooks/01_data_preprocessing
mkdir -p notebooks/02_exploratory_analysis
mkdir -p notebooks/03_clustering
mkdir -p notebooks/04_predictive_modeling
mkdir -p notebooks/05_evaluation
mkdir -p notebooks/06_insights

# Create outputs structure
mkdir -p outputs/figures
mkdir -p outputs/models

# Create archive
mkdir -p archive/experiments
```

**Or via GitHub Web Interface:**
1. Click "Add file" → "Create new file"
2. Type: `notebooks/01_data_preprocessing/.gitkeep`
3. Commit the file
4. Repeat for each folder listed above

---

### Step 2: Move Notebooks to New Structure

**File Movements Required:**

| Current Location | New Location | Rename? |
|-----------------|-------------|----------|
| `src/Data_Preprocessing.ipynb` | `notebooks/01_data_preprocessing/Data_Preprocessing.ipynb` | No |
| `EDA/EDA.ipynb` | `notebooks/02_exploratory_analysis/EDA.ipynb` | No |
| `models/CustPrchBehvr_KMeans.ipynb` | `notebooks/03_clustering/KMeans_Clustering.ipynb` | Yes |
| `src/Predictive_Modeling.ipynb` | `notebooks/04_predictive_modeling/Predictive_Modeling.ipynb` | No |
| `src/Evaluation.ipynb` | `notebooks/05_evaluation/Evaluation.ipynb` | No |
| `src/Key_Insights.ipynb` | `notebooks/06_insights/Key_Insights.ipynb` | No |

**Using Git Commands:**
```bash
# Move and rename files
git mv src/Data_Preprocessing.ipynb notebooks/01_data_preprocessing/Data_Preprocessing.ipynb
git mv EDA/EDA.ipynb notebooks/02_exploratory_analysis/EDA.ipynb
git mv models/CustPrchBehvr_KMeans.ipynb notebooks/03_clustering/KMeans_Clustering.ipynb
git mv src/Predictive_Modeling.ipynb notebooks/04_predictive_modeling/Predictive_Modeling.ipynb
git mv src/Evaluation.ipynb notebooks/05_evaluation/Evaluation.ipynb
git mv src/Key_Insights.ipynb notebooks/06_insights/Key_Insights.ipynb
```

**Via GitHub Web Interface:**
1. Navigate to the file
2. Click the pencil icon (Edit)
3. In the filename field, change the path (e.g., change `src/Data_Preprocessing.ipynb` to `notebooks/01_data_preprocessing/Data_Preprocessing.ipynb`)
4. Commit with message: "Reorganize: Move [filename] to new structure"

---

### Step 3: Move Output Files

**Visualization Files:**
```bash
git mv reports/cluster_comparison.jpg outputs/figures/cluster_comparison.jpg
git mv reports/Radar_chart.jpg outputs/figures/Radar_chart.jpg
```

**Keep Documentation:**
- Leave `reports/Log of Work for Kyuhwan Kim.docx` in reports/ folder

---

### Step 4: Archive Experimental Work

```bash
git mv experiments/Customer\ Purchasing\ Behaviours.ipynb archive/experiments/
git mv experiments/EDA.ipynb archive/experiments/
git mv experiments/README.md archive/experiments/
```

---

### Step 5: Clean Up Empty Folders

**Remove (or keep as empty):**
- `src/` folder (if now empty)
- `EDA/` folder (if now empty)
- `models/` folder (if now empty)  
- `experiments/` folder (if now empty)

```bash
# Check if empty, then remove
rmdir src EDA models experiments
```

---

### Step 6: Create requirements.txt

Create a new file `requirements.txt` in the root with:

```
pandas==2.0.3
numpy==1.24.3
scikit-learn==1.3.0
matplotlib==3.7.1
seaborn==0.12.2
jupyter==1.0.0
notebook==6.5.4
```

---

### Step 7: Update README.md

Add this section after the "Risks and Unknowns" section:

```markdown
---

## 📂 Repository Structure

```
customer_purchasing_behaviors/
├── notebooks/           # Analysis notebooks in execution order
│   ├── 01_data_preprocessing/
│   ├── 02_exploratory_analysis/
│   ├── 03_clustering/
│   ├── 04_predictive_modeling/
│   ├── 05_evaluation/
│   └── 06_insights/
├── data/
│   ├── raw/            # Original dataset
│   └── processed/      # Cleaned and preprocessed data
├── outputs/
│   ├── figures/        # Visualizations and charts
│   └── models/         # Saved model files
├── reports/            # Documentation and work logs
└── archive/            # Experimental and draft work
```

## 🚀 How to Run

### Prerequisites

```bash
# Install dependencies
pip install -r requirements.txt
```

### Execution Sequence

Run notebooks in the following order:

1. **Data Preprocessing** (`notebooks/01_data_preprocessing/Data_Preprocessing.ipynb`)  
   - Loads raw data from `data/raw/`
   - Handles missing values and outliers
   - Performs feature engineering and encoding
   - Outputs processed dataset to `data/processed/`
   - **Estimated time:** 5-10 minutes

2. **Exploratory Data Analysis** (`notebooks/02_exploratory_analysis/EDA.ipynb`)  
   - Analyzes distributions and correlations
   - Creates visualizations
   - Identifies patterns and relationships
   - **Estimated time:** 15-20 minutes

3. **Clustering** (`notebooks/03_clustering/KMeans_Clustering.ipynb`)  
   - Performs K-Means clustering (K=6)
   - Uses Elbow method and Silhouette analysis
   - Creates cluster profiles
   - **Estimated time:** 10-15 minutes

4. **Predictive Modeling** (`notebooks/04_predictive_modeling/Predictive_Modeling.ipynb`)  
   - Trains classification models
   - Predicts cluster membership for new customers
   - **Estimated time:** 10-15 minutes

5. **Evaluation** (`notebooks/05_evaluation/Evaluation.ipynb`)  
   - Evaluates clustering quality
   - Assesses predictive model performance
   - Compares models
   - **Estimated time:** 5-10 minutes

6. **Key Insights** (`notebooks/06_insights/Key_Insights.ipynb`)  
   - Synthesizes findings
   - Provides actionable recommendations
   - **Estimated time:** 10-15 minutes

### Quick Start

```bash
# Clone repository
git clone https://github.com/hamedabangar/customer_purchasing_behaviors.git
cd customer_purchasing_behaviors

# Checkout karmali branch
git checkout karmali

# Install dependencies
pip install -r requirements.txt

# Launch Jupyter
jupyter notebook

# Open and run notebooks in order (01 through 06)
```
```

---

## ✅ Verification Checklist

After completing the reorganization, verify:

- [ ] All 6 numbered notebook folders exist under `notebooks/`
- [ ] Each notebook is in its correct numbered folder
- [ ] `outputs/figures/` contains visualization files
- [ ] `archive/experiments/` contains experimental notebooks
- [ ] `requirements.txt` exists in root
- [ ] README.md updated with new structure and execution order
- [ ] Old folders (`src/`, `EDA/`, etc.) are removed or empty
- [ ] All notebooks still execute without errors
- [ ] File paths in notebooks updated if necessary

---

## 🎓 Benefits for Presentation

1. **Clear workflow**: Numbered folders show logical progression
2. **Professional appearance**: Industry-standard structure
3. **Easy navigation**: Anyone can understand the project flow
4. **Reproducible**: Clear execution order documented
5. **Comprehensive**: All stakeholder and risk information included

---

## 📝 Commit Message Template

```
Reorganize repository structure for final presentation

- Create numbered notebooks/ folder structure (01-06)
- Move analysis notebooks to appropriate sequential folders
- Create outputs/ folder for figures and models
- Archive experimental work
- Add requirements.txt
- Update README with execution order and "How to Run" section

This reorganization follows ML project best practices and prepares
the codebase for the final presentation by providing clear,
logical workflow visibility.
```

---

## 🆘 Troubleshooting

**Issue: File paths broken after moving notebooks**  
**Solution:** Update relative paths in notebooks. For example:
- Old: `pd.read_csv('../data/customer_purchasing_behaviors.csv')`
- New: `pd.read_csv('../../data/raw/customer_purchasing_behaviors.csv')`

**Issue: Can't create folders in GitHub web interface**  
**Solution:** Create a placeholder file (`.gitkeep`) in each folder

**Issue: Git won't remove empty folders**  
**Solution:** This is normal; git doesn't track empty directories

---

## 📞 Questions?

If you encounter issues during reorganization, check:
1. Are you on the `karmali` branch?
2. Do you have write permissions?
3. Are all notebooks saved before moving?

---

**Implementation Date:** _To be completed_  
**Implemented By:** _Your name_  
**Status:** 🟡 In Progress
