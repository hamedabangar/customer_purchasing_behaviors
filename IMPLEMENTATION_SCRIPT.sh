#!/bin/bash

# Repository Reorganization Implementation Script
# Run this from the root of your repository on the karmali branch

echo "=== Customer Purchasing Behaviors - Repository Reorganization ==="
echo "Starting implementation of all 7 steps..."
echo ""

# Ensure we're on karmali branch
git checkout karmali || { echo "Error: Could not checkout karmali branch. Exiting."; exit 1; }

# STEP 1: Create folder structure
echo "Step 1: Creating folder structure..."
mkdir -p notebooks/01_data_preprocessing
mkdir -p notebooks/02_exploratory_analysis
mkdir -p notebooks/03_clustering
mkdir -p notebooks/04_predictive_modeling
mkdir -p notebooks/05_evaluation
mkdir -p notebooks/06_insights
mkdir -p outputs/figures
mkdir -p outputs/models
mkdir -p archive/experiments

# Create .gitkeep files to track empty folders
touch notebooks/01_data_preprocessing/.gitkeep
touch notebooks/02_exploratory_analysis/.gitkeep
touch notebooks/03_clustering/.gitkeep
touch notebooks/04_predictive_modeling/.gitkeep
touch notebooks/05_evaluation/.gitkeep
touch notebooks/06_insights/.gitkeep
touch outputs/figures/.gitkeep
touch outputs/models/.gitkeep
touch archive/experiments/.gitkeep

echo "✓ Folder structure created"
echo ""

# STEP 2: Move notebooks to new structure
echo "Step 2: Moving notebooks to new structure..."

# Move Data_Preprocessing
if [ -f "src/Data_Preprocessing.ipynb" ]; then
    git mv src/Data_Preprocessing.ipynb notebooks/01_data_preprocessing/Data_Preprocessing.ipynb || { echo "Error: Failed to move Data_Preprocessing.ipynb"; exit 1; }
    echo "✓ Moved Data_Preprocessing.ipynb"
fi

# Move EDA
if [ -f "EDA/EDA.ipynb" ]; then
    git mv EDA/EDA.ipynb notebooks/02_exploratory_analysis/EDA.ipynb || { echo "Error: Failed to move EDA.ipynb"; exit 1; }
    echo "✓ Moved EDA.ipynb"
fi

# Move and rename KMeans clustering
if [ -f "models/CustPrchBehvr_KMeans.ipynb" ]; then
    git mv models/CustPrchBehvr_KMeans.ipynb notebooks/03_clustering/KMeans_Clustering.ipynb || { echo "Error: Failed to move CustPrchBehvr_KMeans.ipynb"; exit 1; }
    echo "✓ Moved and renamed CustPrchBehvr_KMeans.ipynb"
fi

# Move Predictive_Modeling
if [ -f "src/Predictive_Modeling.ipynb" ]; then
    git mv src/Predictive_Modeling.ipynb notebooks/04_predictive_modeling/Predictive_Modeling.ipynb || { echo "Error: Failed to move Predictive_Modeling.ipynb"; exit 1; }
    echo "✓ Moved Predictive_Modeling.ipynb"
fi

# Move Evaluation
if [ -f "src/Evaluation.ipynb" ]; then
    git mv src/Evaluation.ipynb notebooks/05_evaluation/Evaluation.ipynb || { echo "Error: Failed to move Evaluation.ipynb"; exit 1; }
    echo "✓ Moved Evaluation.ipynb"
fi

# Move Key_Insights
if [ -f "src/Key_Insights.ipynb" ]; then
    git mv src/Key_Insights.ipynb notebooks/06_insights/Key_Insights.ipynb || { echo "Error: Failed to move Key_Insights.ipynb"; exit 1; }
    echo "✓ Moved Key_Insights.ipynb"
fi

echo "" 

# STEP 3: Move output files
echo "Step 3: Moving output files..."

if [ -f "reports/cluster_comparison.jpg" ]; then
    git mv reports/cluster_comparison.jpg outputs/figures/cluster_comparison.jpg || { echo "Error: Failed to move cluster_comparison.jpg"; exit 1; }
    echo "✓ Moved cluster_comparison.jpg"
fi

if [ -f "reports/Radar_chart.jpg" ]; then
    git mv reports/Radar_chart.jpg outputs/figures/Radar_chart.jpg || { echo "Error: Failed to move Radar_chart.jpg"; exit 1; }
    echo "✓ Moved Radar_chart.jpg"
fi

echo ""

# STEP 4: Archive experimental work
echo "Step 4: Archiving experimental work..."

if [ -f "experiments/Customer Purchasing Behaviours.ipynb" ]; then
    git mv "experiments/Customer Purchasing Behaviours.ipynb" archive/experiments/ || { echo "Error: Failed to archive Customer Purchasing Behaviours.ipynb"; exit 1; }
    echo "✓ Archived Customer Purchasing Behaviours.ipynb"
fi

if [ -f "experiments/EDA.ipynb" ]; then
    git mv experiments/EDA.ipynb archive/experiments/ || { echo "Error: Failed to archive experimental EDA.ipynb"; exit 1; }
    echo "✓ Archived experimental EDA.ipynb"
fi

if [ -f "experiments/README.md" ]; then
    git mv experiments/README.md archive/experiments/ || { echo "Error: Failed to archive experiments README.md"; exit 1; }
    echo "✓ Archived experiments README.md"
fi

echo ""

# STEP 5: Clean up empty folders (will remove .gitkeep files from old folders)
echo "Step 5: Cleaning up old folder structure..."
echo "(Empty folders don't need explicit removal in git)"
echo ""

# STEP 6: Create requirements.txt
echo "Step 6: Creating requirements.txt..."

cat > requirements.txt << EOF
# Customer Purchasing Behaviors - Project Dependencies
# Install with: pip install -r requirements.txt

pandas==2.0.3
numpy==1.24.3
scikit-learn==1.3.0
matplotlib==3.7.1
seaborn==0.12.2
jupyter==1.0.0
notebook==6.5.4
EOF

git add requirements.txt || { echo "Error: Failed to add requirements.txt"; exit 1; }
echo "✓ Created requirements.txt"
echo ""

# STEP 7: Update README (this part needs manual editing after the script)
echo "Step 7: README update needed..."
echo "⚠ You need to manually add the following sections to README.md:"
echo "   - Repository Structure section"
echo "   - How to Run section"
echo "   - Execution Sequence with time estimates"
echo "   See REORGANIZATION_GUIDE.md Step 7 for the exact content to add."
echo ""

# Stage all changes
echo "Staging all changes..."
git add -A || { echo "Error: Failed to stage changes"; exit 1; }
echo ""

# Show status
echo "Current status:"
git status
echo ""

# Commit message
echo "Ready to commit! Run the following command:"
echo ""
echo 'git commit -m "Reorganize repository structure for final presentation

- Create numbered notebooks/ folder structure (01-06)
- Move analysis notebooks to appropriate sequential folders
- Create outputs/ folder for figures and models  
- Archive experimental work
- Add requirements.txt

Follows ML project best practices and prepares codebase for presentation."'
echo ""
echo 'git push origin karmali'
echo ""

echo "=== Implementation Complete! ==="
echo ""
echo "Next steps:"
echo "1. Review the changes with 'git status'"
echo "2. Run the git commit command shown above"
echo "3. Push to karmali branch"
echo "4. Update README.md with Step 7 content from REORGANIZATION_GUIDE.md"
echo "5. Verify all notebooks still execute correctly"
echo ""
echo "Good luck with your presentation! 🎓"
