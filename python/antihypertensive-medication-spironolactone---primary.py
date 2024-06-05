# Caroline E Dale, Rohan Takhar, et al., 2024.

import sys, csv, re

codes = [{"code":"0202030S0AADQDQ","system":"bnf"},{"code":"0202030S0AADSDS","system":"bnf"},{"code":"0202030S0AADVDV","system":"bnf"},{"code":"0202030S0AACYCY","system":"bnf"},{"code":"0202030S0AADJDJ","system":"bnf"},{"code":"0202030S0AACWCW","system":"bnf"},{"code":"0202030S0AADXDX","system":"bnf"},{"code":"0202030S0AADUDU","system":"bnf"},{"code":"0202030S0AADCDC","system":"bnf"},{"code":"0202030S0AADLDL","system":"bnf"},{"code":"0202030S0AADTDT","system":"bnf"},{"code":"0202030S0AADBDB","system":"bnf"},{"code":"0202030S0AADGDG","system":"bnf"},{"code":"0202030S0AADMDM","system":"bnf"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('antihypertensive-medication-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["antihypertensive-medication-spironolactone---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["antihypertensive-medication-spironolactone---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["antihypertensive-medication-spironolactone---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
