# Caroline E Dale, Rohan Takhar, et al., 2024.

import sys, csv, re

codes = [{"code":"0205020E0BBAAAC","system":"bnf"},{"code":"0205051U0BBAAAA","system":"bnf"},{"code":"0202030C0AAAYAY","system":"bnf"},{"code":"0205040S0AAAIAI","system":"bnf"},{"code":"0205020M0BBAAAA","system":"bnf"},{"code":"0204000H0AABDBD","system":"bnf"},{"code":"0205051E0BBABAB","system":"bnf"},{"code":"0205051L0AAAMAM","system":"bnf"},{"code":"0205040S0AAABAB","system":"bnf"},{"code":"0205051F0AACCCC","system":"bnf"},{"code":"0205020E0AAACAC","system":"bnf"},{"code":"0205040S0BBAAAB","system":"bnf"},{"code":"0205051R0AAAJAJ","system":"bnf"},{"code":"0205020E0AAADAD","system":"bnf"},{"code":"0205040S0AAAJAJ","system":"bnf"},{"code":"0202030C0AAA5A5","system":"bnf"},{"code":"0202030C0AABDBD","system":"bnf"},{"code":"0205020M0BBABAB","system":"bnf"},{"code":"0205020E0BBACAA","system":"bnf"},{"code":"0205051F0AACFCF","system":"bnf"},{"code":"0205020M0BBACAC","system":"bnf"},{"code":"0202010J0BBAAAA","system":"bnf"},{"code":"0205051I0AAAVAV","system":"bnf"},{"code":"0205020M0BBAEAB","system":"bnf"},{"code":"0205020E0BBABAD","system":"bnf"},{"code":"0205020M0BBADAA","system":"bnf"},{"code":"0205020M0BBAFAC","system":"bnf"},{"code":"0205040D0AAAUAU","system":"bnf"},{"code":"0205051E0AAABAB","system":"bnf"},{"code":"0205051I0AAARAR","system":"bnf"},{"code":"0205051U0AAAAAA","system":"bnf"},{"code":"0202030C0AABCBC","system":"bnf"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('antihypertensive-medication-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["antihypertensive-medication-250microgram---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["antihypertensive-medication-250microgram---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["antihypertensive-medication-250microgram---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
