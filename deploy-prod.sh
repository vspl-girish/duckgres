#!/bin/bash

gcloud compute scp duckgres "prod-duckgres-01":~/duckgres-latest --zone "us-west2-c" --tunnel-through-iap  --project "relintex-infra"
echo "Copy Successful"
gcloud compute ssh "prod-duckgres-01" --command "sudo mv ~/duckgres-latest /opt/duckgres/." --zone="us-west2-c" --tunnel-through-iap  --project "relintex-infra"   
echo "Deploy Succeeded"
