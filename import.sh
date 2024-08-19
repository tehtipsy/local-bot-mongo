#!/bin/bash
set -e

# Loop through all JSON files in the /data directory
for file in /data/*.json; do
    # Extract the filename without extension
    filename=$(basename -- "$file")
    collection="${filename%.*}"
    
    # Import the collection
    mongoimport --db "$DB_NAME" --collection "$collection" --file "$file" --jsonArray
done