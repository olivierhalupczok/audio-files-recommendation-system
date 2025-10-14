#!/usr/bin/env bash
set -euo pipefail

# Create data directory
mkdir -p data

# Download competition data
kaggle competitions download -c audio-engagement-challenge

# Extract directly to data directory
unzip -o audio-engagement-challenge.zip -d data/

# Clean up
rm audio-engagement-challenge.zip