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

├──.Rhistory

├──Democracy Score Over Time (Tunisia).R

├──Democracy score over time Tunisia.png

├──Democratization process.R

├──Outcomes of democratization episodes gloabl.png

├──README.md

├──Readme.txt

├──Starting Democracy Levels of Successful Transitions Since 2000.png

├──The Episodes of Regime Transformation (ERT) dataset.R

├──Tunisia’s Fragile Democratic Rollercoaster Insights from V-Dem ERT Data.Rmd

├──data.csv

├──post democratization episode status by country.png

├──success of democratization episodes over time.png




---


## 📦 Dependencies

- Make sure you have R (≥ 4.0) and the following packages installed:
- install.packages(c("ggplot2", "dplyr", "readr", "tibble", "scales"))


---


## 🛠️ How to Reproduce

- Clone this repository:

git clone https://github.com/Amirabs7/Democracy-Transitions-Analysis.git

- Install the R packages listed above.
- Open the RMarkdown file in RStudio /Tunisia’s Fragile Democratic Rollercoaster Insights from V-Dem ERT Data.Rmd

- Click Knit → choose HTML, PDF, or Word.

- The knitted report will generate all plots, tables, and narrative automatically.


---

## 🔁 Reproducibility & Data Provenance

**Source:** V-Dem ERT dataset (subset for Tunisia)  

**Cleaning/Filtering:** 
- Subset Tunisia data (`country_name == "Tunisia"`)  
- Removed non-episodes (`dem_ep_outcome_agg > 0`) for global plots  
- Created binary outcome for logistic regression (`success_binary = 1 if dem_ep_outcome_agg == 4`)

**Reproducibility:**  
- R version >= 4.3  
- Packages: ERT, dplyr, ggplot2, tibble  

**Random Seed:** 42 (used for reproducible plots and simulations)  

**Session Info:** Run `sessionInfo()` to reproduce exact environment


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
  


### 2. Global Democratization Outcomes  : 


[![Success Rates](Outcomes%20of%20democratization%20episodes%20gloabl.png)](Outcomes%20of%20democratization%20episodes%20gloabl.png)  


- Since 2000, most democratization episodes failed or stagnated.Only ~17% succeeded in reaching stable democracy (V-Dem ERT, 2024).
- Partial democratization (some liberalization but not full democracy) is common.
- Democratization is the exception, not the rule. The vast majority of transitions collapse back into authoritarianism or stall in hybrid regimes. Tunisia’s failed attempt fits this broader global pattern, showing that even with international support and initial enthusiasm, structural weaknesses (economic crises, elite resistance, weak institutions) usually prevent consolidation.




### 3. Starting Democracy Levels of Successful Transitions Since the 2000s : 


[![Starting Levels](Starting%20Democracy%20Levels%20of%20Successful%20Transitions%20Since%202000.png)](Starting%20Democracy%20Levels%20of%20Successful%20Transitions%20Since%202000.png)

- Successful democratizations since 2000 usually started in regimes that were not fully authoritarian, but had medium democracy levels (Polyarchy ~0.4–0.5).
- Almost no cases of success came from “hard” authoritarian regimes (Polyarchy <0.2).
- Full authoritarian collapses almost never democratize successfully. Success depends on pre-existing pluralism, semi-open institutions, or organized opposition. Tunisia was an unusual case: it started from a fairly authoritarian baseline (Polyarchy ~0.25), which helps explain why consolidation failed — the institutional and economic foundations weren’t strong enough to sustain democracy.


### 4. Success of Democratization Episodes Over Time : 


[![Success of Democratization](success%20of%20democratization%20episodes%20over%20time.png)](success%20of%20democratization%20episodes%20over%20time.png)


- From 1900–mid 20th century, almost all democratization attempts failed.Late 20th century (1970s–1990s) saw more successes (e.g., Latin America, Eastern Europe, Southern Europe). Since 2000, successes are rare again, with failure/stagnation dominating.
- The global “third wave” of democracy (1970s–1990s) was historically unique. The post–2000 era has been much harsher: authoritarian resilience, resource wealth, geopolitical rivalries, and weak international pressure mean that most attempts crash. Tunisia wasn’t a unique tragedy — it was part of a systemic reversal in global democratization


### 5.Post- democratization episode status by country :


[![Post-Democratization Status](post%20democratization%20episode%20status%20by%20country.png)](post%20democratization%20episode%20status%20by%20country.png)


- This graph focuses on other democratization episodes since 2000, mainly the following countries: Benin, Bolivia, Fiji, Honduras, Thailand, Zambia.
- Partial democracies sometimes struggle more to consolidate due to hybrid instability.
- Successful transitions often start from very low or intermediate institutional levels, not already “semi-free” states.
  

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
