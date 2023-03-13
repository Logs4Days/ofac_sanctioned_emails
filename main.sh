#!/bin/bash

# Get OFAC list from US Treasury
curl https://www.treasury.gov/ofac/downloads/sdnlist.txt > /tmp/sdnlist.txt

# Get emails from OFAC list and remove duplicates
grep -i -o '[A-Z0-9._%+-]\+@[A-Z0-9.-]\+\.[A-Z]\{2,4\}' /tmp/sdnlist.txt > /tmp/OFAC_Emails.txt
sort /tmp/OFAC_Emails.txt | uniq > /tmp/Return_OFAC_Emails.txt

# Print list to sdout
cat /tmp/Final_OFAC_Emails.txt

# Cleanup
rm /tmp/sdnlist.txt
rm /tmp/OFAC_Emails.txt
