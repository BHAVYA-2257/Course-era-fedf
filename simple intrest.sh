#!/usr/bin/env bash
# ===============================================
# Title   : Simple Interest Calculator
# Author  : Your Name
# Date    : 2025-08-21
# Purpose : A Bash script to calculate simple interest
# Formula : SI = (P * R * T) / 100
# ===============================================

# Function to calculate simple interest
calculate_si() {
    local P=$1
    local R=$2
    local T=$3
    # Use bc for floating point calculations
    SI=$(echo "scale=2; ($P * $R * $T) / 100" | bc)
    echo $SI
}

# User input
echo "Enter Principal (P):"
read P

echo "Enter Rate of Interest (R):"
read R

echo "Enter Time (T) in years:"
read T

# Validate inputs
if [[ -z "$P" || -z "$R" || -z "$T" ]]; then
    echo "Error: All values must be provided."
    exit 1
fi

# Calculate Simple Interest
SI=$(calculate_si $P $R $T)

# Display results
echo "----------------------------------"
echo "Principal       : $P"
echo "Rate of Interest: $R%"
echo "Time            : $T years"
echo "Simple Interest : $SI"
echo "----------------------------------"
