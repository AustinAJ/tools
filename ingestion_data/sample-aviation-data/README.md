# Predix Transform Hackathon
This aviation data set contains 20 sample flights with 300+ tags for each flight. To upload the data set, you will need two scripts - one to load the asset model, and one to load timeseries data for each tag. 

## Steps to load sample flight data

1. Unzip the flight-data.zip file. You should see 20 flight csv files within the folder
2. Open a browser and go to https://apm-tubs-hackapm-basic.run.aws-usw02-pr.ice.predix.io/{YOUR_TENANT_NAME}
3. Login in as an admin and click on the Setup tab. You will need Username, Password, and Tenant UUID for the following steps

### Ingest assets
1. Open ingest_asset.sh file in a text editor
2. Replace the tenant value with the tenant UUID
3. Replace "username=C3EB5163CB124AECA9839272371BA873_ingestor&password=Pa55w0rd" with the appropriate username and password
4. Execute ingest_asset.sh script to ingest the asset. It should take about 1 minute to complete the request

### Ingest timeseries data 
1. Open ingest_ts.sh script in a text editor
2. Replace the tenant value with the tenant UUID
3. Replace "username=C3EB5163CB124AECA9839272371BA873_ingestor&password=Pa55w0rd" with the appropriate username and password
4. Execute ingest_ts.sh script to ingest the timeseries data. It should take about 30 minutes to complete the ingestion



*Please reach out to any Hackathon staff if you have any questions or issues.
Good luck & have fun!
