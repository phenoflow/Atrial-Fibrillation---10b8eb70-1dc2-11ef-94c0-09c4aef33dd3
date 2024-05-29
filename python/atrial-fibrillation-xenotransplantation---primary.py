# Katherine I. Morley, Joshua Wallace , Spiros C. Denaxas, Ross J. Hunter, Riyaz S. Patel, Pablo Perel, Anoop D. Shah, Adam D. Timmis, Richard J. Schilling, Harry Hemingway, 2024.

import sys, csv, re

codes = [{"code":"7900","system":"readv2"},{"code":"ZV59600","system":"readv2"},{"code":"7901100","system":"readv2"},{"code":"7900000","system":"readv2"},{"code":"7901","system":"readv2"},{"code":"7900z00","system":"readv2"},{"code":"7901y00","system":"readv2"},{"code":"7901z00","system":"readv2"},{"code":"K01","system":"readv2"},{"code":"K024","system":"readv2"},{"code":"K018","system":"readv2"},{"code":"K022","system":"readv2"},{"code":"K012","system":"readv2"},{"code":"K011","system":"readv2"},{"code":"K02","system":"readv2"},{"code":"K028","system":"readv2"},{"code":"K019","system":"readv2"},{"code":"K029","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('atrial-fibrillation-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["atrial-fibrillation-xenotransplantation---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["atrial-fibrillation-xenotransplantation---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["atrial-fibrillation-xenotransplantation---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
