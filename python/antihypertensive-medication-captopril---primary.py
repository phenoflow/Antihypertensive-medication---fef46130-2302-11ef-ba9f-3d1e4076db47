# Caroline E Dale, Rohan Takhar, et al., 2024.

import sys, csv, re

codes = [{"code":"0205051F0AADSDS","system":"bnf"},{"code":"0205051F0AADFDF","system":"bnf"},{"code":"0205051F0AAA2A2","system":"bnf"},{"code":"0205051F0AACKCK","system":"bnf"},{"code":"0205051F0AADEDE","system":"bnf"},{"code":"0205051F0AACNCN","system":"bnf"},{"code":"0205051F0AACJCJ","system":"bnf"},{"code":"0205051F0AACGCG","system":"bnf"},{"code":"0205051F0AACHCH","system":"bnf"},{"code":"0205051F0AACLCL","system":"bnf"},{"code":"0205051F0AABZBZ","system":"bnf"},{"code":"0205051F0AACDCD","system":"bnf"},{"code":"0205051F0AADPDP","system":"bnf"},{"code":"0205051F0AACZCZ","system":"bnf"},{"code":"0205051F0AABSBS","system":"bnf"},{"code":"0205051F0AACUCU","system":"bnf"},{"code":"0205051F0AAAKAK","system":"bnf"},{"code":"0205051F0AABKBK","system":"bnf"},{"code":"0205051F0AADADA","system":"bnf"},{"code":"0205051F0AACRCR","system":"bnf"},{"code":"0205051F0AADDDD","system":"bnf"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('antihypertensive-medication-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["antihypertensive-medication-captopril---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["antihypertensive-medication-captopril---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["antihypertensive-medication-captopril---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
