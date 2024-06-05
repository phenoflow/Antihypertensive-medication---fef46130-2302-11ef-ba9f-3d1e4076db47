# Caroline E Dale, Rohan Takhar, et al., 2024.

import sys, csv, re

codes = [{"code":"0205010J0AABEBE","system":"bnf"},{"code":"0205010J0AABSBS","system":"bnf"},{"code":"0205010J0AABHBH","system":"bnf"},{"code":"0205010J0BCAABK","system":"bnf"},{"code":"0205010J0AABIBI","system":"bnf"},{"code":"0205010J0AABFBF","system":"bnf"},{"code":"0205010J0AABRBR","system":"bnf"},{"code":"0205010J0AABTBT","system":"bnf"},{"code":"0205010J0AABKBK","system":"bnf"},{"code":"0205010J0AAA3A3","system":"bnf"},{"code":"0205010J0AABLBL","system":"bnf"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('antihypertensive-medication-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["antihypertensive-medication-hydralazine---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["antihypertensive-medication-hydralazine---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["antihypertensive-medication-hydralazine---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
