# Caroline E Dale, Rohan Takhar, et al., 2024.

import sys, csv, re

codes = [{"code":"0206020L0BBABAB","system":"bnf"},{"code":"0206020Q0AAAAAA","system":"bnf"},{"code":"0202040T0AAAAAA","system":"bnf"},{"code":"0205052V0BBAEAF","system":"bnf"},{"code":"0204000N0AAABAB","system":"bnf"},{"code":"0205051I0BBADAD","system":"bnf"},{"code":"0205051Q0AAACAC","system":"bnf"},{"code":"0205051L0BCADAD","system":"bnf"},{"code":"0206020R0BBAJAR","system":"bnf"},{"code":"0204000M0AAAHAH","system":"bnf"},{"code":"0205052ADAAAAAA","system":"bnf"},{"code":"0205052I0AAAJAJ","system":"bnf"},{"code":"0206020Q0BBAAAA","system":"bnf"},{"code":"0205051J0AAABAB","system":"bnf"},{"code":"0205052ADBBAAAA","system":"bnf"},{"code":"0205051L0BBADAD","system":"bnf"},{"code":"0205052Q0BBACAC","system":"bnf"},{"code":"0205051L0AAADAD","system":"bnf"},{"code":"0206020C0AABGBG","system":"bnf"},{"code":"0205052V0AAAFAF","system":"bnf"},{"code":"0206020R0BHACAR","system":"bnf"},{"code":"0204000G0AAAAAA","system":"bnf"},{"code":"0205051L0AAAYAY","system":"bnf"},{"code":"0206020R0AAAHAH","system":"bnf"},{"code":"0206020R0BVAAAR","system":"bnf"},{"code":"0205051Q0BBACAC","system":"bnf"},{"code":"0204000U0BCAAAA","system":"bnf"},{"code":"0205052B0BBABAB","system":"bnf"},{"code":"0206020Q0AAAFAF","system":"bnf"},{"code":"0204000N0BFAAAB","system":"bnf"},{"code":"0202030S0AADDDD","system":"bnf"},{"code":"0205051I0AAADAD","system":"bnf"},{"code":"0206020R0BGAAAH","system":"bnf"},{"code":"0205051W0AAACAC","system":"bnf"},{"code":"0205010J0AAA9A9","system":"bnf"},{"code":"0202040B0AAABAB","system":"bnf"},{"code":"0205052B0AAABAB","system":"bnf"},{"code":"0205052Y0BBAAAA","system":"bnf"},{"code":"0205052Y0BBABAB","system":"bnf"},{"code":"0206020R0AAARAR","system":"bnf"},{"code":"0205051I0AAAPAP","system":"bnf"},{"code":"0205052N0AAAKAK","system":"bnf"},{"code":"0204000K0AAAZAZ","system":"bnf"},{"code":"0206020W0AAABAB","system":"bnf"},{"code":"0205051L0AAAZAZ","system":"bnf"},{"code":"0204000G0BBAAAA","system":"bnf"},{"code":"0205051F0AABPBP","system":"bnf"},{"code":"0206020R0CDAAAR","system":"bnf"},{"code":"0204000U0AAAAAA","system":"bnf"},{"code":"0205051H0BBAAAA","system":"bnf"},{"code":"0206020R0BBAFAR","system":"bnf"},{"code":"0206020R0AABGBG","system":"bnf"},{"code":"0206020T0AAA2A2","system":"bnf"},{"code":"0205051W0BBACAC","system":"bnf"},{"code":"0205052Q0BCACAC","system":"bnf"},{"code":"0202040T0BBAAAA","system":"bnf"},{"code":"0205051Q0BCACAC","system":"bnf"},{"code":"0204000M0AAAGAG","system":"bnf"},{"code":"0202040B0BBABAB","system":"bnf"},{"code":"0202040B0AAAJAJ","system":"bnf"},{"code":"0205051J0AAACAC","system":"bnf"},{"code":"0206020R0CKAAAR","system":"bnf"},{"code":"0204000R0AACPCP","system":"bnf"},{"code":"0205052Q0AAACAC","system":"bnf"},{"code":"0205051L0BEADAD","system":"bnf"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('antihypertensive-medication-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["antihypertensive-medication-320mg---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["antihypertensive-medication-320mg---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["antihypertensive-medication-320mg---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
