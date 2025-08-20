## **Analyzing Tunisia's Democratic Transition: A Data-Driven Study of Rise and Reversal**  



## 📌 Overview  
**Tunisia**'s political trajectory since the Arab Spring has been one of the most significant and closely watched in the 21st century. This project provides a comprehensive, data-driven analysis of this remarkable journey, from the euphoric rise of its democracy to the concerning signs of its erosion.

Leveraging the robust and granular Varieties of Democracy **(V-Dem)** Episodes of Regime Transformation (ERT) dataset, this work moves beyond narrative to quantify the precise dynamics of Tunisia's transition. We track key democratic indicators over time, identify critical turning points, and assess the long-term stability of its political institutions.

The analysis aims to offer an objective, evidence-based perspective on the complex forces that have shaped modern Tunisia, providing a valuable resource for understanding the fragility and resilience of democratic experiments.



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

**The Authoritarian Baseline (Pre-2011)**   : 
Tunisia's political landscape for decades prior to 2011 was characterized by a rigid, stable autocracy. The V-Dem data quantifies this reality with stark clarity.
Extremely Low Polyarchy Score: Consistently hovering around 0.08 throughout the 2000s, Tunisia ranked among the world's most closed political systems. This score is a numerical representation of a society where the very concept of competitive political power was absent.

Defining Characteristics of an Autocracy:

 - ✖ No Free Elections: Elections were purely ceremonial, serving to legitimize the ruling party's hold on power rather than to offer any genuine choice to the electorate.
 - ✖ Comprehensively Suppressed Civil Liberties: The state maintained strict control through pervasive surveillance, censorship of all media, and the suppression of any form of dissent or political organization outside the official apparatus.
 - ✖ Absence of Political Pluralism: The political arena was effectively monopolized by the Constitutional Democratic Rally (RCD), creating a system devoid of any legitimate opposition or alternative voices.

**The Arab Spring Breakthrough (2010-2011)**:
The period from late 2010 to 2011 represents one of the most dramatic and rapid democratic transformations ever recorded in modern history.
Unprecedented Polyarchy Surge: Tunisia's score skyrocketed from 0.08 to 0.45 in a single year, a staggering increase of 463%. This vertiginous rise on the graph is the data visualization of a revolutionary rupture.

Primary Catalysts:

- ✨ Mass Protests (The Jasmine Revolution): Sparked by the self-immolation of Mohamed Bouazizi, widespread popular unrest demonstrated the total withdrawal of public consent from the authoritarian regime.
- ✨ Ben Ali's Ouster (Jan 2011): The flight of President Zine El Abidine Ben Ali on January 14, 2011, was the pivotal event that dismantled the core of the old regime and created a power vacuum filled by hopeful, democratic forces.
- ✨ Interim Democratic Government: The establishment of a transitional government and the High Authority for the Realisation of the Objectives of the Revolution initiated steps toward genuine political reform, including the election of a National Constituent Assembly.

**The Democratic Peak & Consolidation (2012-2014):**
This brief window represents the zenith of Tunisia's democratic experiment, a period of intense institution-building and political openness.
Peak Score: The Polyarchy score reached its apex at 0.55 in 2014, a level signifying a functioning, if fragile, electoral democracy.

Concrete Achievements:

- ✓ Free and Competitive Elections: The peaceful election of the National Constituent Assembly in 2011 and the subsequent presidential and parliamentary elections demonstrated a clear break with the past.
- ✓ Significant Gains in Press Freedom: A vibrant and critical media landscape emerged, openly debating issues and scrutinizing officials without fear of state retribution.
- ✓ Enhanced Judicial Independence: Efforts were made to reform the judiciary and distance it from the executive control that characterized the old regime.
- ✓ Landmark New Constitution (2014): Widely praised as one of the most progressive in the region, the new constitution was a crowning achievement, forged through consensus and enshrining rights and democratic principles.

**The Gradual Backsliding (Post-2019)**:
The data reveals that the decline was not a sudden collapse but a gradual erosion, accelerating sharply after 2019 and culminating in a constitutional crisis.
Steady Decline: The score fell from its 0.55 peak to approximately 0.35, representing a 36% decline and a return to a level last seen in the early, chaotic days of the transition.

**Root Causes of Democratic Erosion)**:

- 🔻 Chronic Socioeconomic Gridlock: Public disillusionment grew as successive elected governments failed to address high unemployment, regional inequality, and corruption, eroding the legitimacy of the democratic system itself.
- 🔻 Presidential Power Grabs: President Kais Saied's actions in July 2021—suspending parliament, dismissing the government, and later ruling by decree—represented a decisive break from the constitutional order and a massive reversal of checks and balances.
- 🔻 Systematic Weakening of Institutions: The independent electoral commission was dismantled, the judiciary was brought under executive influence, and the parliament was rendered impotent, systematically disassembling the safeguards of democracy.

**Global Lessons and Comparative Context**:
Tunisia's story is not just a national tragedy but a case study with profound implications for the study of democratization worldwide.

Fragility Factors Exposed:

- ⚠️ Weak Institutional Safeguards: The data shows that democratic institutions, while established, remained too young and fragile to withstand a determined assault from within.
- ⚠️ Lack of Elite Consensus: Democracy was never fully embraced by all powerful factions within the state, leaving it vulnerable to counter-revolutionary forces.
- ⚠️ The Limits of Civil Society: While robust, Tunisian civil society could not compensate for the failure of political parties and state institutions to deliver tangible improvements in citizens' lives.

**Comparative Context:**

▸ A Regional Beacon, Briefly: For a time, Tunisia's data outlier status showed it had vastly outperformed its Arab Spring peers like Egypt (which reverted to autocracy) and Libya (which descended into civil war).
▸ A New Parallel: Its recent trajectory now sadly parallels the pattern of democratic erosion seen in other countries where populist leaders have weakened institutions, such as Hungary and Poland, demonstrating that this phenomenon is a global challenge.


**❓ Why This Case Study Matters: A Beacon for the Arab World** :

Tunisia's journey is not merely a national story; it is of profound regional and global significance because it represents the first, last, and most complete experiment with democracy in the modern Arab world. Its trajectory from creation to backsliding provides invaluable, and tragically unique, insights.

1. Revolutionary Optimism (2011-2014): The Arab Spring's Sole Success Story
While the Arab Spring ignited protests from the Gulf to the Atlantic, Tunisia was the only country to successfully dismantle its autocratic regime and establish a genuine, pluralistic democratic process. Its explosive, hope-filled breakthrough proved that democratic transition was possible in a region long thought immune to it. The peaceful adoption of a progressive constitution in 2014 wasn't just a national achievement; it became a symbolic beacon, demonstrating that Arab political culture was compatible with liberal democracy and providing a tangible model for others to follow.

2. Consolidation Failures (2015-2019): A Cautionary Tale for Political Transition
Tunisia's subsequent stagnation is a masterclass in the challenges of democratic consolidation. Its struggle was not with initial revolution, but with the arduous day-after task of building a functional state. The gradual grinding down of democratic momentum by persistent economic failure, deep political polarization, and the weakness of nascent institutions highlights a critical lesson: overthrowing a dictator is easier than replacing his system with a stable, legitimate, and effective alternative. This phase exposed the fatal gap between political freedom and socioeconomic dignity, a lesson for any future revolutionary movement in the region.

3. Authoritarian Resilience (2020-Present): The Blueprint for Democratic Erosion
The methodical dismantling of Tunisia's democratic gains is perhaps its most globally relevant chapter. It demonstrates a modern playbook for authoritarian takeovers not through a classic coup, but through constitutional coups d'état—where a leader uses the very tools of democracy to suspend it. This pattern, echoing events in Hungary or Poland, shows how easily hard-won progress can be undone from within when institutions are too fragile to resist. For the Arab world, Tunisia's backsliding serves as a potent reminder of autocracy's deep-rooted resilience and a sobering counterpoint to the initial revolutionary optimism, making it a complete and essential case study in the full cycle of democratic hope and despair.

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

  
