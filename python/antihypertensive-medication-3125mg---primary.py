# Caroline E Dale, Rohan Takhar, et al., 2024.

import sys, csv, re

codes = [{"code":"0205052N0AAAHAH","system":"bnf"},{"code":"0204000H0AABJBJ","system":"bnf"},{"code":"0204000H0AAAMAM","system":"bnf"},{"code":"0205020H0AAALAL","system":"bnf"},{"code":"0205010J0AABPBP","system":"bnf"},{"code":"0205051F0AACICI","system":"bnf"},{"code":"0205051F0AAADAD","system":"bnf"},{"code":"0205051R0BBAFAK","system":"bnf"},{"code":"020400040BBAAAA","system":"bnf"},{"code":"0205052ACBBACAC","system":"bnf"},{"code":"0205051R0BBAAAA","system":"bnf"},{"code":"0204000H0AABIBI","system":"bnf"},{"code":"0205051P0BBAAAA","system":"bnf"},{"code":"0204000B0BBAAAA","system":"bnf"},{"code":"0205052ACAAACAC","system":"bnf"},{"code":"0205051F0BCADAD","system":"bnf"},{"code":"0204000E0AAAQAQ","system":"bnf"},{"code":"0204000K0AAAFAF","system":"bnf"},{"code":"0205051R0AAAGAG","system":"bnf"},{"code":"0204000K0AAAWAW","system":"bnf"},{"code":"0205051N0AAAAAA","system":"bnf"},{"code":"0205010J0AABBBB","system":"bnf"},{"code":"0205051I0AACBCB","system":"bnf"},{"code":"0204000E0AAAMAM","system":"bnf"},{"code":"0205051F0AABVBV","system":"bnf"},{"code":"0205051R0AAAKAK","system":"bnf"},{"code":"0205051I0AABFBF","system":"bnf"},{"code":"0205051F0AADLDL","system":"bnf"},{"code":"0202030S0AADKDK","system":"bnf"},{"code":"0205051I0AABLBL","system":"bnf"},{"code":"0204000H0BFAAAM","system":"bnf"},{"code":"0204000K0AABLBL","system":"bnf"},{"code":"0202030S0AACXCX","system":"bnf"},{"code":"0202030C0AABABA","system":"bnf"},{"code":"0204000K0AABIBI","system":"bnf"},{"code":"0205051F0AADQDQ","system":"bnf"},{"code":"0205052Y0BBACAC","system":"bnf"},{"code":"0202040B0AAAMAM","system":"bnf"},{"code":"0202030S0AAEGEG","system":"bnf"},{"code":"0205051R0AAAAAA","system":"bnf"},{"code":"0202010B0AAAUAU","system":"bnf"},{"code":"0205052N0AAALAL","system":"bnf"},{"code":"0204000K0AABKBK","system":"bnf"},{"code":"0205051F0AABTBT","system":"bnf"},{"code":"0202030S0AADPDP","system":"bnf"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('antihypertensive-medication-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["antihypertensive-medication-3125mg---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["antihypertensive-medication-3125mg---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["antihypertensive-medication-3125mg---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
