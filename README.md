# PROJECT 
# *Sanctions Risk: Assessment Model for Data Analysis*

![](https://github.com/AlonaDrok/my_project_2025_11/blob/main/sanc.png) 

### **Dataset Content** 

This Sanctions Risk project contains UK Sanctions, OFAC SDN, FATF datasets. These are datasets is specific for identification and compliance purposes, that contain identifying information about entities (individuals, organizations, ship/vessels and jurisdictions) that are subject to restrictions, asset freezes, or enhanced monitoring due to activities such as terrorism, proliferation, or money laundering. Most of this data is presented as text categories.  

To understand what data datasets includes, the basic data described below: 

 

**Full Name / Entity Name**  -  Textual - official name individuals or organizations. 

**Aliases / AKA (Also Known As)** - Textual - all known alternative names or spellings. 

**Date & Place of Birth** - Textual/Date - biographical information for identification. 

**Identification Numbers** - Textual - passport #, national ID, reg. Number (ships/aircraft). 

**Address** - Textual -  address, country of residence, or registration location. 

**Sanctions Regime**  - Textual -  rules under which sanctions are applied 

**Entity Type** -  Categorical - Individual, Entity, Ship/Vessel, Aircraft). 

**Jurisdiction (FATF Specific)** - Categorical - Name of the country identified as black or grey list 

**Tonnage and Length of ship** – Textual/Numerical - description of characteristics 

 

 

  ### **Data download sources** 

(https://sanctionslist.ofac.treas.gov/Home/SdnList) 

(https://www.gov.uk/government/publications/the-uk-sanctions-list) 

FATF_list.xlsx was created from (https://www.fatf-gafi.org/en/countries/black-and-grey-lists.html) 

### **Business Requirements** 

To understand which characteristics of data from the UK sanctions list, the OFAC SDN list are most effective for identifying and assessing risks, taking into account the largest number of sanctions in a regional context, analyze the breakdown of sanctions by entity type and compare the OFAC and UK lists 

### **Hypotheses and Approaches** 

H1: Distribution of Ship Tonnage (Gross Tonnage) to describe the characteristics of the ship in the sanctions list 
![](https://github.com/AlonaDrok/my_project_2025_11/blob/main/histogram.png)
Figure 1: Distribution of Ship Tonnage (Gross Tonnage) (histogram) 

H2: The distribution of SDN types on the OFAC list shows the distribution of sanctions by entity type 
![](https://github.com/AlonaDrok/my_project_2025_11/blob/main/bar_chart.png)
Figure 2: Distribution of SDN Types in OFAC List (bar chart) 

H3: Visualization of the comparison of the UK sanctions list and the OFAC VDN list shows the top 15 countries on whose entities sanctions have been imposed in terms of quantitative indicators 
![](https://github.com/AlonaDrok/my_project_2025_11/blob/main/line_plot_uk.png)
Figure 3.1: Visualization of the comparison of df_UK_sanctions_list and df_ofac_sdn Count of UK Sanctioned per Country (the top 15) (line plot) 
![](https://github.com/AlonaDrok/my_project_2025_11/blob/main/line_plot_ofac.png)
Figure 3.2: Visualization of the comparison of df_OFAC_sanctions_list and df_ofac_sdn \n Count of OFAC Sanctioned per Country (the top 15) (line plot) 

H4: The distribution of tonnage by the 5 most common flags of countries provides an understanding of which vessels from which countries violate the sanctions regime 
![](https://github.com/AlonaDrok/my_project_2025_11/blob/main/violin_plot.png)
Figure 4: Tonnage distribution by top 5 most common flags (Violin Plot) 

### **Project Plan** 

Datasets for the project will be sourced directly from official primary sources to ensure accuracy and consistency. Key sources include the US Treasury Department’s Office of Foreign Assets Control (OFAC), the UK Sanctions List via GOV.UK, and the Financial Action Task Force (FATF) website. The data will be processed and stored for future use. The data will be used to create visualizations that will provide insight into the relationships between variables and help answer hypotheses.  

Rationale to map the business requirements to the Data Visualizations and ML tasks 

Data visualization helped visualize and analyze sanctions lists by geographic region to understand which countries have the most sanctions imposed and reflect this in terms of quantitative indicators of imposed sanctions and reflect this on the example of sanction lists of ships; give quantitative characteristics in terms of entity type. 

### **Analysis techniques used** 

The data was started in Python via Jupyter Notebook.  

The next step was to process the files and create consolidated data according to the OFAC lists in PostgreSQL. The tables were created according to the described file dat_spec.txt. Files sdn.csv,  add.csv, alt.csv were imported into the created tables and consolidated as cons_data_ofac.csv and also added an illustration file OFAC_cons_str.pdf.  
1[](https://github.com/AlonaDrok/my_project_2025_11/blob/main/sql_cons_sh.png)
 

All further data processing was carried out in Python in a Jupyter notebook. File OFAC_SDN.sql has been added. The FATF data file was downloaded from an Excel spreadsheet previously created from lists in official sources.  Preprocessing was performed using the Python pandas and NumPy modules. The data was adapted for the present work taking into account the specifics of the data use. The EDA steps were performed by using the Python modules matplotlib, seaborn and plotly. A combination of graphical models was developed that together visualize key characteristics of sanctioned vessels and individuals/entities on the lists, combining distributions, classifications, and geographic data. 

 ![](https://github.com/AlonaDrok/my_project_2025_11/blob/main/comb_plot.png)

Together, histograms, line and pair plot, and bar charts provide an understanding of sanction lists, illustrating their content . 

Some bug were fixes made thanks to hints when run the code. AI was used to fix some code errors. 

Limitations: the data is somewhat specific, so its processing and visualization differs from standard ones. In this project, the data was analyzed and illustrated to give an overall picture of sanctions and show the areas of influence, including in a geographical context. In the future, I plan to develop this project to optimize the work. 

### **Summary of Findings**

We can draw the following conclusions from this project:   

\- Analyzing transactions and clients to which countries should pay increased attention; 

\- It is necessary to additionally analyze the essence of the transaction and accompanying documents, as otherwise it may cause unjustified risks (for example, by analyzing the lists of top countries from the general analysis and analysis of data on vessels); 

\- For correct work, it is necessary to take into account data from all lists, i.e. the data in them is different. 

 

### **Suggestions for further work:**

\- Data enrichment: Identify potential external data sources (e.g., ship registers, corporate registries) to enrich existing records, allowing for more complete identification and compliance checks.  

\- Conduct network graph analysis using additional sources to visualize the connections between sanctioned individuals, organizations, and vessels, revealing complex ownership structures and hidden risks not apparent in simple tabular data. 

\- Using machine learning methods to build predictive models based on historical data to optimize processes. 


### **Ethical considerations**

In accordance with GDPR, no personally identifiable information (PII) was included in the analyses. All data used in this project is public and available for use. 

### **Unfixed bugs** 

After conducting a set of tests, I haven't found any bugs. Initial problems have been fixed. AI was used to fix some code errors. 

### **Developement Roadmap** 

Among the difficulties I encountered were problems finding data that I could use in the project, which were resolved by searching the Internet.  New skills and tools that I plan to learn further include deeper exploration of Python and SQL, visualization of spatiotemporal trends in a plot diagram using interactive functionality.  

I also plan to learn how to apply machine learning methods to build predictive models (historical data), build forecasting models, network analysis such as building relationships between customers, accounts, and transactions, etc. 

### **Main Data Analysis libraries**

\- numpy                                                                  

\- pandas  

\- matplotlib  

\- seaborn  

\- plotly

### **Credits** 

The Code Institute course materials for the course “Data Analysis with Artificial Intelligence” were used as a template for the code in this project. 
 
The code for feature development was adapted from (https://sanctionslist.ofac.treas.gov/Home/SdnList) 

(https://www.gov.uk/government/publications/the-uk-sanctions-list) 

FATF_list.xlsx was created from (https://www.fatf-gafi.org/en/countries/black-and-grey-lists.html)  

All files including graphs were created and uploaded to GitHub 

 
