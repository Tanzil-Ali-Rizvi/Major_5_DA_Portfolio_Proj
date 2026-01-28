# [Amazon] Logistics Bottleneck & Cost Optimization

## 🎯 Business Problem
Amazon's regional delivery data showed rising "recovery costs" (refunds and customer support) across five major hubs. The primary objective was to determine if delays were driven by geographic factors (distance) or systemic operational inefficiencies at specific hub locations.

## 📊 Key Results
- **Primary Bottleneck:** Identified **New York (JFK8)** as the critical operational outlier.
- **Financial Impact:** Isolated a **$192,199 monthly loss** in recovery costs at the JFK8 hub alone.
- **Statistical Proof:** Multivariate regression confirmed that **Hub Location**, not travel distance, was the significant driver of delays ($p < 0.001$).

## 🛠️ Methodology
1. **Feature Engineering:** Simulated 15,000 orders incorporating distance, priority (Standard/Express), and hub-specific latency factors.
2. **Cost Logic:** Applied weighted financial penalties ($15/hr for standard, $25/hr for priority) to quantify the operational drain.
3. **Multivariate Regression:** Utilized Ordinary Least Squares (OLS) to isolate the "Hub Effect" from the "Distance Effect."
4. **Strategic Insight:** Provided data-backed justification to prioritize internal warehouse process optimization over expanding the delivery fleet.

## 📂 Visuals
The `/visuals` folder contains:
- `hub_cost_efficiency_matrix.png`: A dual-plot visualization comparing total recovery costs and delay rates by hub.
- `regression_summary.txt`: Detailed statistical output providing scientific proof of the findings.
