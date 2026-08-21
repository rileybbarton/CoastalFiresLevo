# Data and Scripts for _Early post-fire mobilization of levoglucosan distinctly contrasts black carbon dynamics in small coastal mountain watersheds_ 

Associated with a manuscript, of the same name, accepted for publication in Biogeochemistry Letters

Contact [Riley Barton](mailto:rileybbarton@gmail.com) with any questions

-------

**Important Note:** The scripts in this repository are written in R-Markdown. Before starting, make sure your R-Markdown settings in RStudio say:
Evaluate Chunks in directory: **Project**

You can find this option in RStudio under: Tools > Global Options > R-Markdown

**Optional Pre-Analysis Data Processing Instructions:**

Running the following scripts will give you outputs that are already saved in the "data" folder. However, if you want to see how how watershed burn metrics were determined and how the final dataset was gathered and combined from multiple sources, run the following scripts in order:

_Calculating Watershed Burn Metrics_

`CoastalFires_dNBR.Rmd`

Notes: 
 - This script takes dNBR data to calculate burn extent and severity for each watershed.
 - The script is written in R-Markdown chunks that must be completed in order.
 - This is required before running the DataFrameWrangling and DataAnalysis scripts.
 
 
_Combining Datasets_

`CoastalFires_DataFrameWrangling.Rmd`

Notes: 
 - This script combines the datasets necessary for statistical analysis.
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

These scripts utilize data from multiple sources:
 - Barton R ; Richardson C ; Montalvo M ; Powers-McCormack B ; Forbes B ; Myers-Pigg A (2025): Levoglucosan data from five coastal streams impacted by the 2020 CZU Lightning Complex Fires, California, United States. River Corridor Hydro-biogeochemistry from Molecular to Multi-Basin Scales SFA, ESS-DIVE repository. Dataset. doi:10.15485/2543089 accessed via https://data.ess-dive.lbl.gov/datasets/doi:10.15485/2543089 on 2026-08-21

 - Barton R ; Richardson C ; Pae E ; Montalvo M ; Redmond M ; Zimmer M ; Wagner S (2025): Hydrology, rather than wildfire burn extent, determines post-fire organic and black carbon export from mountain rivers in central coastal California [Dataset], CUAHSI HydroShare, doi:10.4211/hs.26f08ef7fe344fcb9d3da45160b697fe accessed via https://doi.org/10.4211/hs.26f08ef7fe344fcb9d3da45160b697fe on 2026-08-21

 - Richardson C ; Montalvo M ; Barton R ; Wagner S ; Redmond M ; Paytan A ; Zimmer M (2024): Exploring the Complex Effects of Wildfire on Stream Water Chemistry: Insights From Concentration‐Discharge Relationships [Dataset], HydroShare, http://www.hydroshare.org/resource/ccbaedcab7dc47c8a565511795e444ac on 2026-08-21

 - MTBS Project: "CZU AUG LIGHTNING" (2021): MTBS Data Access: Fire Level Geospatial Data, http://mtbs.gov/direct-download on 2026-08-21.

 - U.S. Geological Survey: National Hydrography Dataset (NHD) – USGS National Map Downloadable Data Collection, U.S. Geological Survey [data set], https://www.usgs.gov/national-hydrography (last access: 2021).
