# Caroline E Dale, Rohan Takhar, et al., 2024.

import sys, csv, re

codes = [{"code":"0202010D0AABCBC","system":"bnf"},{"code":"0205052Y0AAABAB","system":"bnf"},{"code":"0205052X0AAABAB","system":"bnf"},{"code":"0202010D0AABNBN","system":"bnf"},{"code":"0202040S0AAAMAM","system":"bnf"},{"code":"0202010D0AABQBQ","system":"bnf"},{"code":"0202040S0AAAJAJ","system":"bnf"},{"code":"0202010D0AACHCH","system":"bnf"},{"code":"0205052R0AAAAAA","system":"bnf"},{"code":"0202010D0AACZCZ","system":"bnf"},{"code":"0205052P0AAABAB","system":"bnf"},{"code":"0204000W0AAAAAA","system":"bnf"},{"code":"0202010D0AADFDF","system":"bnf"},{"code":"0202010L0AAABAB","system":"bnf"},{"code":"0204000B0AAAAAA","system":"bnf"},{"code":"0202010L0AAASAS","system":"bnf"},{"code":"0202010D0AADGDG","system":"bnf"},{"code":"0202010D0AABVBV","system":"bnf"},{"code":"0202010D0AABDBD","system":"bnf"},{"code":"0202010D0AABFBF","system":"bnf"},{"code":"0202040S0AAAFAF","system":"bnf"},{"code":"0205052R0AAACAC","system":"bnf"},{"code":"0202010D0AACLCL","system":"bnf"},{"code":"0202010D0AACUCU","system":"bnf"},{"code":"0205052X0AAAAAA","system":"bnf"},{"code":"020400040BEAAAA","system":"bnf"},{"code":"0202010F0AAAAAA","system":"bnf"},{"code":"0202010L0AAAKAK","system":"bnf"},{"code":"0202010L0AAAPAP","system":"bnf"},{"code":"0202040S0AAAPAP","system":"bnf"},{"code":"0202010L0AAACAC","system":"bnf"},{"code":"0202010D0AABKBK","system":"bnf"},{"code":"0202040S0AAABAB","system":"bnf"},{"code":"0202010D0AADBDB","system":"bnf"},{"code":"0202010L0AAAUAU","system":"bnf"},{"code":"0202010D0AACPCP","system":"bnf"},{"code":"0202010D0AABGBG","system":"bnf"},{"code":"0202040S0AAARAR","system":"bnf"},{"code":"0202010D0AABJBJ","system":"bnf"},{"code":"0202010D0AABEBE","system":"bnf"},{"code":"020400040BEABAB","system":"bnf"},{"code":"0202010L0AAAXAX","system":"bnf"},{"code":"0202040S0AAAQAQ","system":"bnf"},{"code":"0202010D0AACRCR","system":"bnf"},{"code":"0205052R0AAABAB","system":"bnf"},{"code":"0202040S0AAAHAH","system":"bnf"},{"code":"0202010D0AACECE","system":"bnf"},{"code":"0202010L0AAAYAY","system":"bnf"},{"code":"0205052P0AAAAAA","system":"bnf"},{"code":"0202010D0AABXBX","system":"bnf"},{"code":"0205051P0AAAAAA","system":"bnf"},{"code":"0202010D0AACICI","system":"bnf"},{"code":"0202010D0AABTBT","system":"bnf"},{"code":"0202010L0AAAMAM","system":"bnf"},{"code":"0202010L0AAATAT","system":"bnf"},{"code":"0205052Y0AAACAC","system":"bnf"},{"code":"0202010F0AAAKAK","system":"bnf"},{"code":"0204000W0AAABAB","system":"bnf"},{"code":"0202010D0AABWBW","system":"bnf"},{"code":"0202010D0AAAUAU","system":"bnf"},{"code":"0202010D0AACWCW","system":"bnf"},{"code":"0202010L0AAAQAQ","system":"bnf"},{"code":"0205052X0AAACAC","system":"bnf"},{"code":"0205052Y0AAAAAA","system":"bnf"},{"code":"0202010L0AAANAN","system":"bnf"},{"code":"0205051K0AAABAB","system":"bnf"},{"code":"0202010D0AACTCT","system":"bnf"},{"code":"0202010D0AACJCJ","system":"bnf"},{"code":"0202040V0AAAAAA","system":"bnf"},{"code":"0202010D0AADDDD","system":"bnf"},{"code":"0202010D0AACMCM","system":"bnf"},{"code":"0202010D0AAAFAF","system":"bnf"},{"code":"0202040S0AAANAN","system":"bnf"},{"code":"0202010D0AADCDC","system":"bnf"},{"code":"0202040S0AAAIAI","system":"bnf"},{"code":"0202080B0AAAAAA","system":"bnf"},{"code":"0205052A0AAABAB","system":"bnf"},{"code":"0202080B0AAABAB","system":"bnf"},{"code":"0202010D0AABHBH","system":"bnf"},{"code":"0202010D0AACBCB","system":"bnf"},{"code":"0202040S0AAAKAK","system":"bnf"},{"code":"0202040S0AAAAAA","system":"bnf"},{"code":"0205052A0AAAAAA","system":"bnf"},{"code":"0202010D0AADEDE","system":"bnf"},{"code":"0205051K0AAAAAA","system":"bnf"},{"code":"0202010L0AAAJAJ","system":"bnf"},{"code":"0202010D0AABZBZ","system":"bnf"},{"code":"0202010D0AACSCS","system":"bnf"},{"code":"0202010D0AABPBP","system":"bnf"},{"code":"0202010D0AABMBM","system":"bnf"},{"code":"0202010D0AABBBB","system":"bnf"},{"code":"0205052A0AAACAC","system":"bnf"},{"code":"0202010D0AABUBU","system":"bnf"},{"code":"0202010D0AACGCG","system":"bnf"},{"code":"0202010L0AAALAL","system":"bnf"},{"code":"0202010D0AACYCY","system":"bnf"},{"code":"0202010L0AAAVAV","system":"bnf"},{"code":"0205052P0AAACAC","system":"bnf"},{"code":"0202010D0AABIBI","system":"bnf"},{"code":"0202010D0AACNCN","system":"bnf"},{"code":"0205051H0AAAAAA","system":"bnf"},{"code":"0202010D0AACKCK","system":"bnf"},{"code":"0202010D0AACDCD","system":"bnf"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('antihypertensive-medication-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["antihypertensive-medication-chlor---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["antihypertensive-medication-chlor---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["antihypertensive-medication-chlor---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)