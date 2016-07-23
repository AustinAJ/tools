# Predix Transform Hackathon 
This aviation data set contains 20 sample flights with 300+ tags for each flight. To load the data set, you will need two scripts, one to load the asset model, and one to load timeseries data for each tag. 

## Steps to load sample flight data

1. Go to {GIT_REPO}/ingestion_data/sample-aviation-data directory
2. Unzip the flight-data.zip file. You should see 20 flight csv files within the folder
3. execute ingest_ts.sh script to ingest the asset. It should take about 1 minute to complete the request.
4. Log in to UI to check ingestion status
5. execute ingest_asset.sh script to ingest timeseries data. It should take about 30 minutes to complete the ingestion
