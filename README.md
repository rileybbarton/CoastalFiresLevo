# Data and Scripts for _Rapid mobilization of levoglucosan distinctly contrasts black carbon dynamics in fire-affected watersheds in central coastal California_ 

Submitted for Publication in L&O Letters

Contact [Riley Barton](mailto:rileybbarton@gmail.com) with any questions

-------

**Initial Data Processing Instructions:**

In order to combine the datasets and process data prior to data analysis, run the following script:

`CoastalFires_DataFrameWrangling.Rmd`

Notes: 
 - The script is written in R-Markdown chunks that must be completed in order.
 - This data processing is required before running the DataAnalysis script. We have already run these scripts.
 - The output of this script is a file titled `CoastalFires_CombinedData.csv` which is utilized for further data 
analysis and figure production and can be found in the folder titled `Output`.

**Data Analysis:**

In order to conduct all statistical analyses associated with the manuscript, run the following script:

`CoastalFires_DataAnalysis.Rmd`

  - This will result in a variety of statistical outputs as well as figures showcasing the results of the NMDS.
    Both a labeled and unlabeled NMDS figure will be found in the `Output` folder titled:

  - `NMDS_unlabeled.png`

  - `NMDS_labeled.png`

> Note: The script is written in R-Markdown chunks that must be completed in order. 
