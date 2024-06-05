# Caroline E Dale, Rohan Takhar, et al., 2024.

import sys, csv, re

codes = [{"code":"0204000R0AACUCU","system":"bnf"},{"code":"0204000R0AAAHAH","system":"bnf"},{"code":"0204000R0AACMCM","system":"bnf"},{"code":"0204000R0AACZCZ","system":"bnf"},{"code":"0204000R0AAABAB","system":"bnf"},{"code":"0204000R0AAALAL","system":"bnf"},{"code":"0204000R0AACRCR","system":"bnf"},{"code":"0204000R0AADHDH","system":"bnf"},{"code":"0204000R0AADDDD","system":"bnf"},{"code":"0204000R0AACQCQ","system":"bnf"},{"code":"0204000R0AADEDE","system":"bnf"},{"code":"0204000R0AACJCJ","system":"bnf"},{"code":"0204000R0AADADA","system":"bnf"},{"code":"0204000R0AACTCT","system":"bnf"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('antihypertensive-medication-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["antihypertensive-medication-propranolol---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["antihypertensive-medication-propranolol---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["antihypertensive-medication-propranolol---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
