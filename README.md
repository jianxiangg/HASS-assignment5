# HASS-assignment5
Interactive Data Visualization Assignment 5
Done by: Gian Jian Xiang (1005684)

Pre-processing

1. FY2021 Singapore Government expenditure file (.csv) was downloaded from https://www.mof.gov.sg/singaporebudget/revenue-and-expenditure. Relevant data was extracted.
2. An R script was written to convert data format from wide to long, and then into .json.
3. Output .json file is then used for visualization.

Visualization

1. Icicle/Partition chart was used to display the FY2021 government expenditure by sector, ministry and budget type (Operating, Development).
2. A tooltip to display cell name, its corresponding value and the percentage with respect to its parent component, was created.