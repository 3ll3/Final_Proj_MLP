Instructions on the order to run files (starting withe step1) and what these files do.
Please note, if you have postgres and hadoop running on a UCB insance then skip to Step2-mlp.sh.

Step1-mlp.sh: 
Run the Step1 file if you do no currently have a drive mounted on /data. Thsi will take some time as this will set up postgres.

Step2-mlp.sh: 
Will update pip by wgetting the update and install needed python packages: numpy, cython, pandas, xlrd. This script will end 

Step3-mlp.sh: 
Will wget all of the data files from their origin urls on Census, Zillow, and Texas A&M sites respectively.
In addition to getting the data files, this script will also utilize wget to download python scripts and DDL scripts the team created.

Please see the complete list of data files and python files imported using wget below:

Data File Name:
complete-data.xlsx
Affordability_Income_2016Q2.csv
MSA_M2015_dl.xlsx
CountyCrossWalk_Zillow.csv
Metro_MedianRentalPrice_1Bedroom.csv
Metro/Metro_MedianRentalPrice_2Bedroom.csv
Metro_MedianRentalPrice_3Bedroom.csv
Metro_MedianRentalPrice_4Bedroom.csv
Metro_MedianRentalPrice_5BedroomOrMore.csv
Metro_MedianRentalPrice_Studio.csv

Python File Name: 
zillow_process.py
aff_clean.py
traffic_clean_transform.py
clean_census.py
clean_mapping.py

The traffic_clean_transform.py runs first against the traffic data set.
Then the remaining .py files take inputs  to clean and transform the data.

Here are the .py files and the commands passed to them:
aff_clean.py -> "CountyCrossWalk_Zillow.csv" "income.csv" "mapping.csv"
zillow_process.py -> "Metro_MedianRentalPrice_1Bedroom.csv" "z1bedroom.csv"
zillow_process.py -> "Metro_MedianRentalPrice_2Bedroom.csv" "z2bedroom.csv"
zillow_process.py -> "Metro_MedianRentalPrice_3Bedroom.csv" "z3bedroom.csv"
zillow_process.py -> "Metro_MedianRentalPrice_4Bedroom.csv" "z4bedroom.csv"
zillow_process.py -> "Metro_MedianRentalPrice_5BedroomOrMore.csv" "z5bedroom.csv"
zillow_process.py -> "Metro_MedianRentalPrice_Studio.csv" "zstudio.csv"

Step 3 continued by making 10 sub directories in HDFS and placing the clean data files into their respective directories.
Step 3 finished by running the DDL scripts : hive_traffic_aff.sql, census_income_schema.sql, mapping_schema.sql, zillow_load.sql which load create tables in HDFS utilizing hive.





               
