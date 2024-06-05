# Caroline E Dale, Rohan Takhar, et al., 2024.

import sys, csv, re

codes = [{"code":"0204000K0AABMBM","system":"bnf"},{"code":"0205020H0AAAJAJ","system":"bnf"},{"code":"0202030S0AAAUAU","system":"bnf"},{"code":"0204000E0AAABAB","system":"bnf"},{"code":"0205051F0AACACA","system":"bnf"},{"code":"0205010J0AAA4A4","system":"bnf"},{"code":"0205020H0AAAEAE","system":"bnf"},{"code":"0202030W0BBAAAA","system":"bnf"},{"code":"0202030S0AAEBEB","system":"bnf"},{"code":"0204000E0AAARAR","system":"bnf"},{"code":"0205052N0AAAJAJ","system":"bnf"},{"code":"0205051F0AAAFAF","system":"bnf"},{"code":"0206020C0AABEBE","system":"bnf"},{"code":"0204000R0AACYCY","system":"bnf"},{"code":"0205010J0AAAHAH","system":"bnf"},{"code":"0205020H0AAAHAH","system":"bnf"},{"code":"0204000R0AACHCH","system":"bnf"},{"code":"0205052N0AAABAB","system":"bnf"},{"code":"0205052N0AAAEAE","system":"bnf"},{"code":"0204000K0AAATAT","system":"bnf"},{"code":"0202040U0BBAAAA","system":"bnf"},{"code":"0202030S0AACPCP","system":"bnf"},{"code":"0204000K0AAABAB","system":"bnf"},{"code":"0206020T0AABGBG","system":"bnf"},{"code":"0206020A0AAAFAF","system":"bnf"},{"code":"0202010F0BBAAAA","system":"bnf"},{"code":"0205051F0AADUDU","system":"bnf"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('antihypertensive-medication-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["antihypertensive-medication-500mg---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["antihypertensive-medication-500mg---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["antihypertensive-medication-500mg---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
