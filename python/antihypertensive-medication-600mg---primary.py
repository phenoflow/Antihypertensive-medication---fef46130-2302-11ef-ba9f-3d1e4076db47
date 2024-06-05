# Caroline E Dale, Rohan Takhar, et al., 2024.

import sys, csv, re

codes = [{"code":"0206020R0BBAIAP","system":"bnf"},{"code":"0205052W0BBACAC","system":"bnf"},{"code":"0205052W0AAACAC","system":"bnf"},{"code":"0206020C0AAARAR","system":"bnf"},{"code":"0206020C0BEAAAA","system":"bnf"},{"code":"0206020C0BYAAAJ","system":"bnf"},{"code":"0206020R0BRADAP","system":"bnf"},{"code":"0206020C0BWAEAJ","system":"bnf"},{"code":"0206020C0AAAJAJ","system":"bnf"},{"code":"0205020H0AAAKAK","system":"bnf"},{"code":"0206020R0CFACAP","system":"bnf"},{"code":"0206020C0BRAAAJ","system":"bnf"},{"code":"0206020R0CHABAP","system":"bnf"},{"code":"0206020C0BBAAAA","system":"bnf"},{"code":"0206020C0AABIBI","system":"bnf"},{"code":"0206020C0BPACAJ","system":"bnf"},{"code":"0206020C0BUAAAJ","system":"bnf"},{"code":"0206020C0AAAAAA","system":"bnf"},{"code":"0206020R0AABFBF","system":"bnf"},{"code":"0206020R0AABPBP","system":"bnf"},{"code":"0206020C0BQAAAA","system":"bnf"},{"code":"0206020R0BGADBF","system":"bnf"},{"code":"0206020C0BSAAAJ","system":"bnf"},{"code":"0206020R0AAAPAP","system":"bnf"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('antihypertensive-medication-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["antihypertensive-medication-600mg---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["antihypertensive-medication-600mg---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["antihypertensive-medication-600mg---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
