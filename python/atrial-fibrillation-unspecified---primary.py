# Katherine I. Morley, Joshua Wallace , Spiros C. Denaxas, Ross J. Hunter, Riyaz S. Patel, Pablo Perel, Anoop D. Shah, Adam D. Timmis, Richard J. Schilling, Harry Hemingway, 2024.

import sys, csv, re

codes = [{"code":"793Ey00","system":"readv2"},{"code":"792By00","system":"readv2"},{"code":"7927y00","system":"readv2"},{"code":"790Ay00","system":"readv2"},{"code":"79y..00","system":"readv2"},{"code":"790Hy00","system":"readv2"},{"code":"792y.00","system":"readv2"},{"code":"792Cy00","system":"readv2"},{"code":"K559","system":"readv2"},{"code":"K239","system":"readv2"},{"code":"K668","system":"readv2"},{"code":"K238","system":"readv2"},{"code":"K149","system":"readv2"},{"code":"K489","system":"readv2"},{"code":"K449","system":"readv2"},{"code":"K669","system":"readv2"},{"code":"K148","system":"readv2"},{"code":"K558","system":"readv2"},{"code":"K448","system":"readv2"},{"code":"K488","system":"readv2"},{"code":"K479","system":"readv2"},{"code":"K478","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('atrial-fibrillation-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["atrial-fibrillation-unspecified---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["atrial-fibrillation-unspecified---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["atrial-fibrillation-unspecified---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
