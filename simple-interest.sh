#!/bin/bash

# Simple Interest Calculator
# This script computes simple interest based on user input
# Formula: Simple Interest = (Principal × Rate × Time) / 100
# Amount = Principal + Simple Interest

echo "================================"
echo "   Simple Interest Calculator   "
echo "================================"
echo ""

# Get principal amount from user
echo "Enter the Principal amount (in currency units):"
read principal

# Validate principal input
if ! [[ "$principal" =~ ^[0-9]+(\.[0-9]{1,2})?$ ]]; then
    echo "Error: Principal must be a valid number."
    exit 1
fi

# Get rate of interest from user
echo "Enter the Rate of Interest (in percentage per annum):"
read rate

# Validate rate input
if ! [[ "$rate" =~ ^[0-9]+(\.[0-9]{1,2})?$ ]]; then
    echo "Error: Rate of Interest must be a valid number."
    exit 1
fi

# Get time period from user
echo "Enter the Time Period (in years):"
read time

# Validate time input
if ! [[ "$time" =~ ^[0-9]+(\.[0-9]{1,2})?$ ]]; then
    echo "Error: Time Period must be a valid number."
    exit 1
fi

echo ""
echo "================================"
echo "        Calculation Results     "
echo "================================"

# Calculate simple interest
# Formula: SI = (P × R × T) / 100
simple_interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

# Calculate total amount
# Formula: Amount = Principal + Simple Interest
total_amount=$(echo "scale=2; $principal + $simple_interest" | bc)

# Display results
echo "Principal (P):           $principal"
echo "Rate of Interest (R):    $rate% per annum"
echo "Time Period (T):         $time years"
echo "Simple Interest (SI):    $simple_interest"
echo "Total Amount:            $total_amount"
echo "================================"
echo ""

# Additional information
echo "Formula Used:"
echo "Simple Interest = (P × R × T) / 100"
echo "Simple Interest = ($principal × $rate × $time) / 100"
echo "Simple Interest = $simple_interest"
echo ""
echo "Total Amount = Principal + Simple Interest"
echo "Total Amount = $principal + $simple_interest"
echo "Total Amount = $total_amount"
echo ""
