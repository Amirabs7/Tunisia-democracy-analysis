**Exploring Rise, Reversal, and Fragility using V-Dem ERT Data**  

---

## 📌 Overview  
Tunisia has had a unique political trajectory in the MENA region since the Arab Spring in 2011. This repository presents an in-depth, data-driven analysis of Tunisia’s democratic journey, leveraging the **Varieties of Democracy (V-Dem) Episodes of Regime Transformation (ERT) dataset** to uncover trends, turning points, and long-term risks in its fragile transition.

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
- RMarkdown file containing the full narrative and interpretation: ➤ Tunisia’s Fragile Democratic Rollercoaster Insights from V-Dem ERT Data.Rmd

📁 data/
- data.csv (processed subset from V-Dem ERT dataset)

🔁 .Rhistory
- RStudio session history (optional, can be ignored)




--


## 📦 Dependencies

-Make sure you have R (≥ 4.0) and the following packages installed:
-install.packages(c("ggplot2", "dplyr", "readr", "tibble", "scales", "lubridate", "stringr"))
-The ERT dataset was processed using tidyverse methods and custom filtering functions.


--

## 🛠️ How to Reproduce

- Clone this repository:

git clone https://github.com/Amirabs7/Tunisia-Democracy-Analysis.git

- Install the R packages listed above.
- Open the RMarkdown file in RStudio / RStudio Cloud:
reports/Tunisia’s Fragile Democratic Rollercoaster Insights from V-Dem ERT Data.Rmd

- Click Knit → choose HTML, PDF, or Word.

- The knitted report will generate all plots, tables, and narrative automatically.

---

## 📊 Key Visualizations  
*(Click any image to view full resolution)*  

### 1. Tunisia’s Democracy Score Over Time  
[![Polyarchy Index](Democracy%20score%20over%20time%20Tunisia.png)](Democracy%20score%20over%20time%20Tunisia.png)  
*Post-2011 surge, 2014 peak, and gradual decline after 2019.*  

### 2. Global Democratization Outcomes  
[![Success Rates](Outcomes%20of%20democratization%20episodes%20gloabl.png)](Outcomes%20of%20democratization%20episodes%20gloabl.png)  
*Only 17% of episodes achieve full democratic success (V-Dem ERT).*  

### 3. Starting Democracy Levels vs. Success  
[![Initial Conditions Matter](Starting%20Democracy%20Levels%20of%20Successful%20Transitions%20Since%202000.png)](Starting%20Democracy%20Levels%20of%20Successful%20Transitions%20Since%202000.png)  
*Transitions from partial autocracy (Polyarchy ~0.3) succeed most often.*  

---

## 📈 Key Insights

### 🔴 Authoritarian Baseline (Pre-2011)
- **Polyarchy Score:** 0.08 (2000s)
- **Characteristics:**
  - ✖ No free elections
  - ✖ Suppressed civil liberties
  - ✖ Absence of political pluralism

### 🟢 Arab Spring Breakthrough (2010-2011)
- **Polyarchy Surge:** 0.08 → 0.45 (+463% in 1 year)
- **Catalysts:**
  - ✨ Mass protests (Jasmine Revolution)
  - ✨ Ben Ali's ouster (Jan 2011)
  - ✨ Interim democratic government

### 🏆 Democratic Peak (2012-2014)
- **Peak Score:** 0.55 (2014)
- **Achievements:**
  - ✓ Competitive elections
  - ✓ Press freedom gains
  - ✓ Judicial independence
  - ✓ New constitution (2014)

### ⚠️ Backsliding (Post-2019)
- **Decline to:** 0.35 (-36% from peak)
- **Causes:**
  - 🔻 Presidential power grabs (2021 parliament suspension)
  - 🔻 Eroded checks and balances
  - 🔻 Crackdowns on opposition

### 🌍 Global Lessons
- **Fragility Factors:**
  - ⚠️ Weak institutional safeguards
  - ⚠️ Lack of elite consensus
  - ⚠️ Civil society suppression
- **Comparative Context:**
  - ▸ Outperformed Egypt/Libya post-2011
  - ▸ Now parallels democratic erosion in Hungary/Poland

### ❓ Why This Matters
A textbook case of:
1. Revolutionary optimism (2011-2014)
2. Consolidation failures (2015-2019)
3. Authoritarian resilience (2020-present)

> **Visual Evidence:** See [Tunisia's Democracy Score Over Time](Democracy%20score%20over%20time%20Tunisia.png) for the full trajectory.

---


## 🔍 Explore the Full Analysis
[![RMarkdown](https://img.shields.io/badge/Open_Full_Report-RMarkdown-blue?logo=R)](Tunisia%E2%80%99s%20Fragile%20Democratic%20Rollercoaster%20Insights%20from%20V-Dem%20ERT%20Data.Rmd)

---
  
  ## 👩‍💻 Author
  
Amira Ben Salem  : 📧 besamira77@gmail.com

  ---



  
