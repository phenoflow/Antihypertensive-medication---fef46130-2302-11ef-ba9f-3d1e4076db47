# Caroline E Dale, Rohan Takhar, et al., 2024.

import sys, csv, re

codes = [{"code":"0202030S0AAAVAV","system":"bnf"},{"code":"0204000K0BJAAAC","system":"bnf"},{"code":"0205030H0AAAAAA","system":"bnf"},{"code":"0205040M0BBAAAC","system":"bnf"},{"code":"0206020F0BMAAAC","system":"bnf"},{"code":"0202030S0AAEEEE","system":"bnf"},{"code":"0205010AAAAAAAA","system":"bnf"},{"code":"0202030S0AACQCQ","system":"bnf"},{"code":"0204000V0BBAAAA","system":"bnf"},{"code":"0205051F0AABRBR","system":"bnf"},{"code":"0204000V0AAAAAA","system":"bnf"},{"code":"0202030S0AAEDED","system":"bnf"},{"code":"0204000R0BWAAAH","system":"bnf"},{"code":"0202030S0AACRCR","system":"bnf"},{"code":"0205051F0AADCDC","system":"bnf"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('antihypertensive-medication-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["antihypertensive-medication-100mg---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["antihypertensive-medication-100mg---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["antihypertensive-medication-100mg---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
