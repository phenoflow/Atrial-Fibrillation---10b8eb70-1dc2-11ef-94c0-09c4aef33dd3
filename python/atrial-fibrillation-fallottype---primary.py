# Katherine I. Morley, Joshua Wallace , Spiros C. Denaxas, Ross J. Hunter, Riyaz S. Patel, Pablo Perel, Anoop D. Shah, Adam D. Timmis, Richard J. Schilling, Harry Hemingway, 2024.

import sys, csv, re

codes = [{"code":"7902500","system":"readv2"},{"code":"7902z00","system":"readv2"},{"code":"7902000","system":"readv2"},{"code":"7902100","system":"readv2"},{"code":"7902y00","system":"readv2"},{"code":"7902300","system":"readv2"},{"code":"7902400","system":"readv2"},{"code":"7902","system":"readv2"},{"code":"7902.11","system":"readv2"},{"code":"K048","system":"readv2"},{"code":"K049","system":"readv2"},{"code":"K044","system":"readv2"},{"code":"K041","system":"readv2"},{"code":"K042","system":"readv2"},{"code":"K045","system":"readv2"},{"code":"K043","system":"readv2"},{"code":"K082","system":"readv2"},{"code":"K046","system":"readv2"},{"code":"K04","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('atrial-fibrillation-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["atrial-fibrillation-fallottype---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["atrial-fibrillation-fallottype---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["atrial-fibrillation-fallottype---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
