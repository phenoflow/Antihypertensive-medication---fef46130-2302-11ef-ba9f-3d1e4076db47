# Caroline E Dale, Rohan Takhar, et al., 2024.

import sys, csv, re

codes = [{"code":"0205051I0AAAZAZ","system":"bnf"},{"code":"0205051I0AAAYAY","system":"bnf"},{"code":"0205051I0AAASAS","system":"bnf"},{"code":"0205051I0AAAWAW","system":"bnf"},{"code":"0205051I0AABTBT","system":"bnf"},{"code":"0205051I0AABNBN","system":"bnf"},{"code":"0205051I0AAATAT","system":"bnf"},{"code":"0205051I0AABCBC","system":"bnf"},{"code":"0205051I0AABQBQ","system":"bnf"},{"code":"0205051I0AABSBS","system":"bnf"},{"code":"0205051I0AACACA","system":"bnf"},{"code":"0205051I0AAAUAU","system":"bnf"},{"code":"0205051I0AAACAC","system":"bnf"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('antihypertensive-medication-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["antihypertensive-medication-enalapril---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["antihypertensive-medication-enalapril---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["antihypertensive-medication-enalapril---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
