# Data and Scripts for _Early post-fire mobilization of levoglucosan distinctly contrasts black carbon dynamics in small coastal mountain watersheds_ 

Submitted for Publication in Biogeochemistry Letters

Contact [Riley Barton](mailto:rileybbarton@gmail.com) with any questions

-------

**Important Note:** The scripts in this repository are written in R-Markdown. Before starting, make sure your R-Markdown settings in RStudio say:
Evaluate Chunks in directory: **Project**

You can find this option in RStudio under: Tools > Global Options > R-Markdown

**Pre-Data Processing Instructions:**

Before data processing and interpretation, run the following script to get key burn metrics:

`CoastalFires_dNBR.Rmd`

Notes: 
 - The script is written in R-Markdown chunks that must be completed in order.
 - This is required before running the DataFrameWrangling and DataAnalysis scripts.
 
 
**Initial Data Processing Instructions:**

In order to combine the datasets and process data prior to data analysis, run the following script:

`CoastalFires_DataFrameWrangling.Rmd`

Notes: 
 - The script is written in R-Markdown chunks that must be completed in order.
 - This data processing is required before running the DataAnalysis script.

**Data Analysis:**

In order to create Figures 3 and 5 and conduct statistical analyses associated with the manuscript, run the following script:

`CoastalFires_DataAnalysis.Rmd`

Notes: 
 - The script is written in R-Markdown chunks that must be completed in order.
 - This will result in a variety of statistical outputs as an option to print figures:
    - Figure 3: Levoglucosan and BPCA over time-since-fire
    - Figure 5: the results of the NMDS.
 
**Cumulative Load:**

In order to determine cumulative loads of Levoglucosan and BPCA associated with the manuscript, run the following script:

`CoastalFires_CumulativeLoad.Rmd`

Notes: 
 - The script is written in R-Markdown chunks that must be completed in order.
 - This will result in cumulative load estimates and visualizations via creation of Figure 4
 
**Optional Figure Creation:**

Run the following scripts to create Figures 1 and 2:

`CoastalFires_Fig1_Map.Rmd`
`CoastalFires_Fig2_Levo_Q.Rmd`

Notes: 
 - These scripts are written in R-Markdown chunks that must be completed in order.
 - Figure 1 is the map of the CZU Lightning Complex Fires and sampling locations
 - Figure 2 shows watershed-specific levoglucosan concentrations and discharge values over the study period
 

**References:**

These scripts utilize data from multiple sources. The `CoastalFires_DataFrameWrangling.Rmd` script will pull this data from the following repositories:
 - Barton R ; Richardson C ; Montalvo M ; Powers-McCormack B ; Forbes B ; Myers-Pigg A (2025): Levoglucosan data from five coastal streams impacted by the 2020 CZU Lightning Complex Fires, California, United States. River Corridor Hydro-biogeochemistry from Molecular to Multi-Basin Scales SFA, ESS-DIVE repository. Dataset. doi:10.15485/2543089 accessed via https://data.ess-dive.lbl.gov/datasets/doi:10.15485/2543089 on 2025-08-27

 - Barton R ; Richardson C ; Pae E ; Montalvo M ; Redmond M ; Zimmer M ; Wagner S (2025): Hydrology, rather than wildfire burn extent, determines post-fire organic and black carbon export from mountain rivers in central coastal California [Dataset], CUAHSI HydroShare, doi:10.4211/hs.26f08ef7fe344fcb9d3da45160b697fe accessed via https://doi.org/10.4211/hs.26f08ef7fe344fcb9d3da45160b697fe on 2025-08-27
