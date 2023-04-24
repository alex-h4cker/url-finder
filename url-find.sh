#!/bin/bash

# Define the URL to be scraped
url="domain" #change it

# Use curl to get the HTML content of the page
html=$(curl -s $url)

# Use grep to extract all URLs from the HTML content
urls=$(echo $html | grep -oP '(?<=href=")[^"]*(?=")')

# Loop through each URL and print it out
for url in $urls; do
    echo $url
done
