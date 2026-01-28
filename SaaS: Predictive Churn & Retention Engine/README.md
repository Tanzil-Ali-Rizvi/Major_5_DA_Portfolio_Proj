# [SaaS] Predictive Churn Engine

## 🎯 Business Problem
The goal was to identify high-risk customers before they cancel their subscriptions. By focusing on **Recall**, the model ensures that the customer success team catches as many potential "churners" as possible.

## 📊 Key Results
- **Recall:** 82% (Successfully identified the majority of at-risk users).
- **Primary Drivers:** Support ticket volume and low monthly active usage were the strongest predictors of churn.
- **Business Action:** Automated a high-priority alert system for the Support Team when a customer’s "Churn Score" exceeds 0.7.

## 🛠️ Methodology
1. **Data Synthesis:** Simulated 5,000 users with features including support tickets, usage hours, and contract type.
2. **Preprocessing:** Handled categorical variables via One-Hot Encoding and split data for robust validation.
3. **Modeling:** Trained a **Random Forest Classifier** to handle non-linear relationships between support fatigue and usage.
4. **Optimization:** Tuned class weights to prioritize the "Churn" class, achieving a balanced trade-off between precision and recall.

## 📂 Visuals
- `churn_confusion_matrix.png`: Visualizes model performance in predicting churn vs. retention.
