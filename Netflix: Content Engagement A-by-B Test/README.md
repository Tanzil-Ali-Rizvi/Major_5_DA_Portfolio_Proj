# [Netflix] Preview Length A/B Test Analysis

## 🎯 Business Problem
Netflix currently shows 30-second previews. We want to know if increasing this to 45 seconds increases the average watch time per user.

## 📊 Key Results
- **Control Mean:** 119.82 mins
- **Variant Mean:** 128.41 mins
- **Lift:** 7.17%
- **P-Value:** < 0.001 (Statistically Significant)

## 🛠️ Methodology
1. **Data Cleaning:** Removed outliers and handled null values using Pandas.
2. **Exploratory Data Analysis:** Visualized distributions using KDE plots to check for normality.
3. **Hypothesis Testing:** Conducted a Two-Sample T-Test to compare means.
4. **Impact:** Projected an annual retention value increase based on engagement lift.

## 📂 Visuals
The `/visuals` folder contains the distribution shift and confidence interval plots.
