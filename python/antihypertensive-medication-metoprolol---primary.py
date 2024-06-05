# Caroline E Dale, Rohan Takhar, et al., 2024.

import sys, csv, re

codes = [{"code":"0204000K0AABJBJ","system":"bnf"},{"code":"0204000K0AAAMAM","system":"bnf"},{"code":"0204000K0AABABA","system":"bnf"},{"code":"0204000K0AAAQAQ","system":"bnf"},{"code":"0204000K0AABGBG","system":"bnf"},{"code":"0204000K0AAAYAY","system":"bnf"},{"code":"0204000K0AAACAC","system":"bnf"},{"code":"0204000K0AABFBF","system":"bnf"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('antihypertensive-medication-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["antihypertensive-medication-metoprolol---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["antihypertensive-medication-metoprolol---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["antihypertensive-medication-metoprolol---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
