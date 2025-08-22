## **Tunisia and Global Democratization: Insights from V-Dem ERT Data**  



## 📌 Overview  
This project provides a data-driven analysis of democratic transitions, focusing on Tunisia’s post-Arab Spring trajectory while situating it within global patterns of democratization and reversal. Using the Varieties of Democracy (V-Dem) Episodes of Regime Transformation (ERT) dataset, this work quantifies the dynamics of regime change, highlights critical turning points, and compares Tunisia to other countries with democratization episodes since 2000.

The goal is to provide an evidence-based perspective on the fragility, resilience, and global patterns of democratization, offering  insights for researchers and policymakers.


---

## What this project shows
- Political science research and R data analysis using tidyverse and ggplot2.
- Insights into Tunisia’s democratic trajectory, fragility, and global comparisons.
- Reproducible RMarkdown report with  visualizations and narrative.

---

📍 **Data Source**:  
[V-Dem ERT Dataset v2](https://www.v-dem.net/) – Episodes of Regime Transformation  

---


## 🗂️ Repository Structure

📊 plots/
- Visualizations created in R (PDF, PNG), showing democracy scores, regime timelines, etc.

📜 scripts/
R scripts used for:
- Cleaning and filtering ERT data
- Calculating democracy indices
- Creating visualizations

📝 reports/
- RMarkdown file containing the full narrative and interpretation:
- ➤ Tunisia’s Fragile Democratic Rollercoaster Insights from V-Dem ERT Data.Rmd

📁 data/
- data.csv (processed subset from V-Dem ERT dataset)



---


## 📦 Dependencies

- Make sure you have R (≥ 4.0) and the following packages installed:
- install.packages(c("ggplot2", "dplyr", "readr", "tibble", "scales", "lubridate", "stringr"))


---


## 🛠️ How to Reproduce

- Clone this repository:

git clone https://github.com/Amirabs7/Tunisia-Democracy-Analysis.git

- Install the R packages listed above.
- Open the RMarkdown file in RStudio / RStudio Cloud:
reports/Tunisia’s Fragile Democratic Rollercoaster Insights from V-Dem ERT Data.Rmd

- Click Knit → choose HTML, PDF, or Word.

- The knitted report will generate all plots, tables, and narrative automatically.


---


## 📊 Key Visualizations and Key Insights :
*(Click any image to view full resolution)*  

### 1. Tunisia’s Democracy Score Over Time  
[![Polyarchy Index](Democracy%20score%20over%20time%20Tunisia.png)](Democracy%20score%20over%20time%20Tunisia.png)  
*Post-2011 surge, 2014 peak, and gradual decline after 2019.*  


Tunisia’s Democratic Journey :

- Authoritarian Baseline (Pre-2011): Rigid autocracy with extremely low Polyarchy scores (~0.08).
- Arab Spring Breakthrough (2010-2011): Polyarchy jumped from 0.08 → 0.45 (+463%), driven by protests and Ben Ali’s ouster.
- Democratic Peak & Consolidation (2012-2014): Polyarchy reached 0.55 with free elections, press freedom, and a landmark constitution.
- Gradual Backsliding (Post-2019): Decline to ~0.35 due to presidential power grabs, institutional weakening, and socioeconomic stagnation.

Root Causes of Democratic Erosion :

- Chronic socioeconomic gridlock, corruption, and regional inequality.
- Executive power consolidation (2021 constitutional crisis).
- Weak institutional safeguards and elite consensus.
  


### 2. Global Democratization Outcomes  
[![Success Rates](Outcomes%20of%20democratization%20episodes%20gloabl.png)](Outcomes%20of%20democratization%20episodes%20gloabl.png)  
*Only 17% of episodes achieve full democratic success (V-Dem ERT).*  


Global Comparisons :

- Other democratization episodes since 2000: Benin, Bolivia, Fiji, Honduras, Thailand, Zambia
- Partial democracies sometimes struggle more to consolidate due to hybrid instability
- Successful transitions often start from very low or intermediate institutional levels, not already “semi-free” states
  

### 3. Starting Democracy Levels vs. Success  
[![Initial Conditions Matter](Starting%20Democracy%20Levels%20of%20Successful%20Transitions%20Since%202000.png)](Starting%20Democracy%20Levels%20of%20Successful%20Transitions%20Since%202000.png)  
*Transitions from partial autocracy (Polyarchy ~0.3) succeed most often.*  

Predictive Insights :

- Logistic regression shows higher starting Polyarchy scores do not always guarantee success
- Countries with very low institutional quality sometimes achieve more dramatic breakthroughs
- Tunisia exemplifies the complex, non-linear nature of democratization

---



**❓ Why This Case Study Matters: A Beacon for the Arab World** :

Tunisia is a case study with both national and global significance:

- Provides lessons for the Arab world and transitional regimes globally.
- Demonstrates how revolutions can succeed initially but face long-term consolidation challenges.
- Highlights the fragility of democratic institutions and the importance of robust governance.


> **Visual Evidence:** See [Tunisia's Democracy Score Over Time](Democracy%20score%20over%20time%20Tunisia.png) for the full trajectory.

---


## 🔍 Explore the Full Analysis
[![RMarkdown](https://img.shields.io/badge/Open_Full_Report-RMarkdown-blue?logo=R)](Tunisia%E2%80%99s%20Fragile%20Democratic%20Rollercoaster%20Insights%20from%20V-Dem%20ERT%20Data.Rmd)



  
  ## 👩‍💻 Author
  
Amira Ben Salem  : 📧 besamira77@gmail.com


---

**Disclaimer & Ethical Note:**

Educational Purpose: This project was created for portfolio/educational purposes to demonstrate skills in data cleaning, exploration, and machine learning.
Data Source: The analysis is based on a publicly available dataset. I do not claim to own or have collected this data.
Limitations: The findings and clusters are exploratory in nature and are based on the specific methodology and assumptions detailed in the notebook. They are not definitive and should not be considered a complete representation of reality.
Not Endorsement: This project is not affiliated with, endorsed by, or sponsored by any mentioned companies or entities.

---

  
