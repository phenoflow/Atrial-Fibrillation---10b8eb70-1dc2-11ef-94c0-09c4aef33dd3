# Katherine I. Morley, Joshua Wallace , Spiros C. Denaxas, Ross J. Hunter, Riyaz S. Patel, Pablo Perel, Anoop D. Shah, Adam D. Timmis, Richard J. Schilling, Harry Hemingway, 2024.

import sys, csv, re

codes = [{"code":"ZV45K00","system":"readv2"},{"code":"7920","system":"readv2"},{"code":"792..11","system":"readv2"},{"code":"7908200","system":"readv2"},{"code":"7920200","system":"readv2"},{"code":"ZV45K11","system":"readv2"},{"code":"7907200","system":"readv2"},{"code":"7920z00","system":"readv2"},{"code":"7920000","system":"readv2"},{"code":"ZV45800","system":"readv2"},{"code":"7920300","system":"readv2"},{"code":"7920.11","system":"readv2"},{"code":"7920100","system":"readv2"},{"code":"7920y00","system":"readv2"},{"code":"791C200","system":"readv2"},{"code":"7906200","system":"readv2"},{"code":"K409","system":"readv2"},{"code":"K093","system":"readv2"},{"code":"K408","system":"readv2"},{"code":"K333","system":"readv2"},{"code":"K40","system":"readv2"},{"code":"K401","system":"readv2"},{"code":"K113","system":"readv2"},{"code":"K103","system":"readv2"},{"code":"K402","system":"readv2"},{"code":"K123","system":"readv2"},{"code":"K403","system":"readv2"},{"code":"K404","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('atrial-fibrillation-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["atrial-fibrillation-homograft---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["atrial-fibrillation-homograft---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["atrial-fibrillation-homograft---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
