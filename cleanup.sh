#!/bin/bash
# Find and remove all *.log, *.aux, and *pdf files
find . -name "*.log" -type f -delete
find . -name "*.aux" -type f -delete
find . -name "*.pdf" -type f -delete