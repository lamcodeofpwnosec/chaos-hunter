#!/bin/bash
# Script Name: chaos_target_hunter.sh
# Description: This script automates the process of retrieving target data from the Chaos project by ProjectDiscovery.
#              It downloads the index file, fetches the URLs for target data, unzips the downloaded archives,
#              and consolidates the results into a single file containing all the targets.
# Author: lmcodeofpwnosec
# Date: 18/10/2024

# Download the index file from the Chaos project
wget "https://chaos-data.projectdiscovery.io/index.json"

# Extract the URLs from the index file and download the corresponding zip files
cat index.json | grep "URL" | sed 's/"URL": "//;s/",//' | while read -r host; do
    wget "$host"
done

# Unzip all downloaded .zip files
for archive in *.zip; do
    unzip "$archive"
done

# Clean up by removing the zip files
rm -f *.zip

# Consolidate all .txt files into a single file named alltargets.txt
cat *.txt >> alltargets.txt

# Inform the user that the process is complete
echo "Hunting complete. The consolidated results are saved in alltargets.txt"

