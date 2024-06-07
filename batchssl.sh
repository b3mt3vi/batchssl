#!/bin/bash

# Define the list of targets
TARGET_FILE="$1"

# Run testssl.sh on each target
while IFS= read -r target; do
    echo "Scanning $target..."
    testssl "$target" > "results_$target.txt"
done < "$TARGET_FILE"

echo "Scanning completed. Check the results in the respective files."

