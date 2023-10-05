#!/bin/bash

# array with countries and capitals
declare -A countries=(
  ["Nigeria"]="Abuja, F.C.T."
  ["Kenya"]="Niarobi"
  ["Spain"]="Madrid"
  ["Canada"]="Ontorio"
  ["Germany"]="Berlin"
  ["China"]="Beijing"
)

# array and print country-capital pairs
for country in "${!countries[@]}"; do
    printf "%-20s %s\n" "$country" "${countries[$country]}"
done
