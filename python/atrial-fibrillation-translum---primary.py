# Katherine I. Morley, Joshua Wallace , Spiros C. Denaxas, Ross J. Hunter, Riyaz S. Patel, Pablo Perel, Anoop D. Shah, Adam D. Timmis, Richard J. Schilling, Harry Hemingway, 2024.

import sys, csv, re

codes = [{"code":"793M.00","system":"readv2"},{"code":"7934y00","system":"readv2"},{"code":"7933300","system":"readv2"},{"code":"7933","system":"readv2"},{"code":"793Hy00","system":"readv2"},{"code":"793H.00","system":"readv2"},{"code":"7934","system":"readv2"},{"code":"K62","system":"readv2"},{"code":"K579","system":"readv2"},{"code":"K573","system":"readv2"},{"code":"K568","system":"readv2"},{"code":"K569","system":"readv2"},{"code":"K57","system":"readv2"},{"code":"K56","system":"readv2"},{"code":"K563","system":"readv2"},{"code":"K564","system":"readv2"},{"code":"K769","system":"readv2"},{"code":"K76","system":"readv2"},{"code":"K578","system":"readv2"},{"code":"K768","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('atrial-fibrillation-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["atrial-fibrillation-translum---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["atrial-fibrillation-translum---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["atrial-fibrillation-translum---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
