# Katherine I. Morley, Joshua Wallace , Spiros C. Denaxas, Ross J. Hunter, Riyaz S. Patel, Pablo Perel, Anoop D. Shah, Adam D. Timmis, Richard J. Schilling, Harry Hemingway, 2024.

import sys, csv, re

codes = [{"code":"790N.00","system":"readv2"},{"code":"7N41600","system":"readv2"},{"code":"790K200","system":"readv2"},{"code":"791C500","system":"readv2"},{"code":"790K.00","system":"readv2"},{"code":"790Ny00","system":"readv2"},{"code":"K181","system":"readv2"},{"code":"K249","system":"readv2"},{"code":"K084","system":"readv2"},{"code":"K248","system":"readv2"},{"code":"K081","system":"readv2"},{"code":"K186","system":"readv2"},{"code":"K194","system":"readv2"},{"code":"K089","system":"readv2"},{"code":"K336","system":"readv2"},{"code":"K184","system":"readv2"},{"code":"K08","system":"readv2"},{"code":"K083","system":"readv2"},{"code":"K183","system":"readv2"},{"code":"K088","system":"readv2"},{"code":"K376","system":"readv2"},{"code":"K24","system":"readv2"},{"code":"K242","system":"readv2"},{"code":"K063","system":"readv2"},{"code":"K062","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('atrial-fibrillation-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["atrial-fibrillation-ventr---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["atrial-fibrillation-ventr---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["atrial-fibrillation-ventr---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)