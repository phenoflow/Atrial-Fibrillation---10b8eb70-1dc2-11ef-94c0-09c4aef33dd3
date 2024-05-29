# Katherine I. Morley, Joshua Wallace , Spiros C. Denaxas, Ross J. Hunter, Riyaz S. Patel, Pablo Perel, Anoop D. Shah, Adam D. Timmis, Richard J. Schilling, Harry Hemingway, 2024.

import sys, csv, re

codes = [{"code":"790N200","system":"readv2"},{"code":"793L000","system":"readv2"},{"code":"793L100","system":"readv2"},{"code":"790N000","system":"readv2"},{"code":"790My00","system":"readv2"},{"code":"790N300","system":"readv2"},{"code":"790N400","system":"readv2"},{"code":"7934600","system":"readv2"},{"code":"790M.00","system":"readv2"},{"code":"X504","system":"readv2"},{"code":"K542","system":"readv2"},{"code":"K384","system":"readv2"},{"code":"K179","system":"readv2"},{"code":"K178","system":"readv2"},{"code":"K241","system":"readv2"},{"code":"K17","system":"readv2"},{"code":"K541","system":"readv2"},{"code":"K244","system":"readv2"},{"code":"K576","system":"readv2"},{"code":"K243","system":"readv2"},{"code":"K245","system":"readv2"},{"code":"K247","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('atrial-fibrillation-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["biventricular-atrial-fibrillation---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["biventricular-atrial-fibrillation---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["biventricular-atrial-fibrillation---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
