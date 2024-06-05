# Caroline E Dale, Rohan Takhar, et al., 2024.

import sys, csv, re

codes = [{"code":"0202030S0AAATAT","system":"bnf"},{"code":"0202030S0AAEAEA","system":"bnf"},{"code":"0205040M0AAAMAM","system":"bnf"},{"code":"0204000R0AADGDG","system":"bnf"},{"code":"0202010B0AAABAB","system":"bnf"},{"code":"0205051F0AADMDM","system":"bnf"},{"code":"0205040I0BBAAAA","system":"bnf"},{"code":"0205010J0AAA8A8","system":"bnf"},{"code":"0206020R0AABCBC","system":"bnf"},{"code":"0206020I0BBAAAA","system":"bnf"},{"code":"0204000R0AACKCK","system":"bnf"},{"code":"0204000M0AAAKAK","system":"bnf"},{"code":"0202040H0BCAAAA","system":"bnf"},{"code":"0205052ACBBAEAE","system":"bnf"},{"code":"0202010P0BDAAAA","system":"bnf"},{"code":"0205051R0BBABAB","system":"bnf"},{"code":"0204000H0BFABAJ","system":"bnf"},{"code":"0205051F0BCABAE","system":"bnf"},{"code":"0202030C0AAA4A4","system":"bnf"},{"code":"0205010J0BBAAAG","system":"bnf"},{"code":"0205051F0AADZDZ","system":"bnf"},{"code":"0205051R0AAATAT","system":"bnf"},{"code":"0205051R0AAAFAF","system":"bnf"},{"code":"0204000H0AABEBE","system":"bnf"},{"code":"0202040H0AAAAAA","system":"bnf"},{"code":"0202010P0AAAAAA","system":"bnf"},{"code":"0206020R0AABKBK","system":"bnf"},{"code":"0205051L0AAAAAA","system":"bnf"},{"code":"0205052N0AAAGAG","system":"bnf"},{"code":"0202040H0BDAAAA","system":"bnf"},{"code":"0202030S0AADADA","system":"bnf"},{"code":"0205051AAAAAAAA","system":"bnf"},{"code":"0204000H0BKABAJ","system":"bnf"},{"code":"0205051E0AAADAD","system":"bnf"},{"code":"0205051Y0AAAAAA","system":"bnf"},{"code":"0202040H0BBAAAA","system":"bnf"},{"code":"0205010J0AABQBQ","system":"bnf"},{"code":"0204000E0BBABAA","system":"bnf"},{"code":"0204000R0AACSCS","system":"bnf"},{"code":"0205051R0AAAVAV","system":"bnf"},{"code":"0205051I0BBAAAA","system":"bnf"},{"code":"0202040A0BBAAAA","system":"bnf"},{"code":"0205051R0AAALAL","system":"bnf"},{"code":"0204000A0BBAAAA","system":"bnf"},{"code":"0205051L0BCAAAA","system":"bnf"},{"code":"0204000E0BBAEAG","system":"bnf"},{"code":"0204000K0AAAPAP","system":"bnf"},{"code":"0204000E0AAAAAA","system":"bnf"},{"code":"0205051G0BBAAAA","system":"bnf"},{"code":"0204000K0AAASAS","system":"bnf"},{"code":"0205010N0BBAAAA","system":"bnf"},{"code":"0205010J0AAAGAG","system":"bnf"},{"code":"0205051Y0BBAAAA","system":"bnf"},{"code":"0206020F0BLAEAD","system":"bnf"},{"code":"020400040BCAAAB","system":"bnf"},{"code":"0205040D0AAATAT","system":"bnf"},{"code":"0204000A0AAAAAA","system":"bnf"},{"code":"0205051I0AABBBB","system":"bnf"},{"code":"0205051F0AABWBW","system":"bnf"},{"code":"0202030S0AAEFEF","system":"bnf"},{"code":"0205040I0AAAAAA","system":"bnf"},{"code":"0205051R0BBAGAL","system":"bnf"},{"code":"0205051I0AAAAAA","system":"bnf"},{"code":"0204000Q0BBAAAA","system":"bnf"},{"code":"0205051L0AAAIAI","system":"bnf"},{"code":"0205051E0BBADAD","system":"bnf"},{"code":"0206020F0AAADAD","system":"bnf"},{"code":"0206020F0AAAEAE","system":"bnf"},{"code":"0204000Q0AAAAAA","system":"bnf"},{"code":"0205051R0AAABAB","system":"bnf"},{"code":"0202010P0AAABAB","system":"bnf"},{"code":"0205051F0AAAEAE","system":"bnf"},{"code":"0204000H0BKADAJ","system":"bnf"},{"code":"0204000H0AABFBF","system":"bnf"},{"code":"0205051I0AAAJAJ","system":"bnf"},{"code":"0205052N0AAAAAA","system":"bnf"},{"code":"0206020I0AAAAAA","system":"bnf"},{"code":"0206020F0BLADAD","system":"bnf"},{"code":"0205051I0BEAAAA","system":"bnf"},{"code":"0202040V0AAACAC","system":"bnf"},{"code":"0204000E0AAAGAG","system":"bnf"},{"code":"0206020F0BLACAD","system":"bnf"},{"code":"0206020A0AAAVAV","system":"bnf"},{"code":"0206020F0AAAIAI","system":"bnf"},{"code":"0205051L0BEAAAA","system":"bnf"},{"code":"0204000E0AAANAN","system":"bnf"},{"code":"0204000H0AAAJAJ","system":"bnf"},{"code":"0202010B0AAAXAX","system":"bnf"},{"code":"0205051F0AABYBY","system":"bnf"},{"code":"0206020F0AAAGAG","system":"bnf"},{"code":"0205052N0AAAIAI","system":"bnf"},{"code":"0205051S0AAAAAA","system":"bnf"},{"code":"0205052ACAAAEAE","system":"bnf"},{"code":"0205051L0BBAAAA","system":"bnf"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('antihypertensive-medication-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["antihypertensive-medication-225mg---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["antihypertensive-medication-225mg---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["antihypertensive-medication-225mg---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)