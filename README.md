# OFAC Sanctioned Users --> Emails

This script pulls the list of OFAC sanctioned users and creates a return separated list of emails in the current working directory.

The official list is available in text format here: https://www.treasury.gov/ofac/downloads/sdnlist.txt

___

### How it works 

 1. `curl` list and save to file in `/tmp/`
 2. Use `grep` to regex for emails 
 3. `sort | uniq` to ensure no duplicates are in the list 
 4. Print list to `stdout` 
 5. Cleanup files in `/tmp`
 


___
### To do:

 - Enable this to run as a `cron` job or similar to check for updates automatically. Will need a "source" file to check changes against 
 - Add a flag for CSV support instead of return separated 
 - Make compatible for Vercel Cron
 - Add more features
 - Test more
