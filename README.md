ETL Project - Group Six
Team Members:   Elyse Sulkey, Jasmin Raven, Spencer Fox

Group Six created a database of Dogecoin historical data pulled from two separate Kaggle sets. Both datasets were originally formatted as csv files. 

We imported both csv files into Pandas Dataframes and used pandas, numpy, and datetime to clean the data. For both files, we dropped rows with missing values, convereted the datatypes to datetime, floats, and integers (respective of rows), formatted monetary values to 6 decimal places and rounded volume values to whole numbers, sorted the values by date in descending order, and exported the cleaned dataframes out as new csv files.   

We then created an SQL table in PgAdmin for both csv files. We used QuickDBD to map out our tables, using the same column names and assigning the equivalent datatypes then assigning the date column as our primary key. In PGadmin, we added additional code to our scheme including dropping pre-existing tables and performing an outer join on the two tables using the date columns are our joinging point.  

We decided on performing an outer joing on our tables in order to keep both sets of data for date, open, close, high, low, and volume values while also allowing us to add in and compare the data for the adjusted close and market cap values that were unique to the two different data sets. 

Data Sources:
https://www.kaggle.com/dhruvildave/dogecoin-historical-data
https://www.kaggle.com/deepshah16/meme-cryptocurrency-historical-data?select=Wrapped+Bitcoin.csv
# etlproject-groupsix