#!/bin/sh

tenant=C3EB5163CB124AECA9839272371BA873
#ingestor=C3EB5163CB124AECA9839272371BA873_ingestor
#pwd=Pa55w0rd

output=$( curl -X POST -H "Authorization: Basic aW5nZXN0b3IuOWNmMzNjZTM3YmY2NGM1NjgxYjUxNWE2ZjZhYWRmNDc6" -H "Content-Type: application/x-www-form-urlencoded" -d 'grant_type=password&username=C3EB5163CB124AECA9839272371BA873_ingestor&password=Pa55w0rd&=' "https://d9ef106c-7048-486e-a79f-9c80827b8a14.predix-uaa.run.aws-usw02-pr.ice.predix.io/oauth/token" )
echo "here is output... $output\n"
token=`echo "$output" |awk -F=":" -v RS="," '$1~/"access_token"/ {print}' |sed 's/\"//g' | sed 's/{access_token://'`

echo "token is $token"
echo "==========================\n"

FILES=./flight-data/*
for f in $FILES
do
  echo "Processing $f file..."
  echo $f 
  curl -v -X POST -H "Authorization: bearer $token" -H "tenant: $tenant" -H "Content-Type: multipart/form-data;" -F "file=@$f" "https://apm-timeseries-services-hackapm.run.aws-usw02-pr.ice.predix.io/v1/data/add?file_type=ODBExportCSV"
  echo "=======================\n"
  echo "\n"
done



