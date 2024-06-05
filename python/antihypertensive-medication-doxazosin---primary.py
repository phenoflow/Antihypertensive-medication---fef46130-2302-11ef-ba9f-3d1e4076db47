# Caroline E Dale, Rohan Takhar, et al., 2024.

import sys, csv, re

codes = [{"code":"0205040D0AAAQAQ","system":"bnf"},{"code":"0205040D0AABABA","system":"bnf"},{"code":"0205040D0AAACAC","system":"bnf"},{"code":"0205040D0AAAYAY","system":"bnf"},{"code":"0205040D0AAAXAX","system":"bnf"},{"code":"0205040D0AAASAS","system":"bnf"},{"code":"0205040D0AAAWAW","system":"bnf"},{"code":"0205040D0AABBBB","system":"bnf"},{"code":"0205040D0AAAPAP","system":"bnf"},{"code":"0205040D0AAAHAH","system":"bnf"},{"code":"0205040D0AAARAR","system":"bnf"},{"code":"0205040D0AAAIAI","system":"bnf"},{"code":"0205040D0AAAZAZ","system":"bnf"},{"code":"0205040D0AAAFAF","system":"bnf"},{"code":"0205040D0AAAAAA","system":"bnf"},{"code":"0205040D0AAABAB","system":"bnf"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('antihypertensive-medication-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["antihypertensive-medication-doxazosin---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["antihypertensive-medication-doxazosin---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["antihypertensive-medication-doxazosin---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
