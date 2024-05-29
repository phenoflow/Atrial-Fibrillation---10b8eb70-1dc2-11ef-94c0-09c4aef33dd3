# Katherine I. Morley, Joshua Wallace , Spiros C. Denaxas, Ross J. Hunter, Riyaz S. Patel, Pablo Perel, Anoop D. Shah, Adam D. Timmis, Richard J. Schilling, Harry Hemingway, 2024.

import sys, csv, re

codes = [{"code":"7907.11","system":"readv2"},{"code":"7908300","system":"readv2"},{"code":"7909y00","system":"readv2"},{"code":"7906111","system":"readv2"},{"code":"7908111","system":"readv2"},{"code":"7907300","system":"readv2"},{"code":"7907100","system":"readv2"},{"code":"7907400","system":"readv2"},{"code":"7906500","system":"readv2"},{"code":"790B011","system":"readv2"},{"code":"7906","system":"readv2"},{"code":"7906400","system":"readv2"},{"code":"7908","system":"readv2"},{"code":"790B012","system":"readv2"},{"code":"7907y00","system":"readv2"},{"code":"7906z00","system":"readv2"},{"code":"7908y00","system":"readv2"},{"code":"7908z00","system":"readv2"},{"code":"7907011","system":"readv2"},{"code":"7906000","system":"readv2"},{"code":"7907z00","system":"readv2"},{"code":"7908.11","system":"readv2"},{"code":"7908100","system":"readv2"},{"code":"7906.11","system":"readv2"},{"code":"790A000","system":"readv2"},{"code":"7908000","system":"readv2"},{"code":"7909000","system":"readv2"},{"code":"7907","system":"readv2"},{"code":"7909z00","system":"readv2"},{"code":"7908511","system":"readv2"},{"code":"7908311","system":"readv2"},{"code":"7909.11","system":"readv2"},{"code":"7906y00","system":"readv2"},{"code":"790B000","system":"readv2"},{"code":"7907000","system":"readv2"},{"code":"7906100","system":"readv2"},{"code":"7909100","system":"readv2"},{"code":"7909300","system":"readv2"},{"code":"7909","system":"readv2"},{"code":"K112","system":"readv2"},{"code":"K092","system":"readv2"},{"code":"K118","system":"readv2"},{"code":"K122","system":"readv2"},{"code":"K102","system":"readv2"},{"code":"K124","system":"readv2"},{"code":"K117","system":"readv2"},{"code":"K114","system":"readv2"},{"code":"K121","system":"readv2"},{"code":"K116","system":"readv2"},{"code":"K128","system":"readv2"},{"code":"K145","system":"readv2"},{"code":"K095","system":"readv2"},{"code":"K098","system":"readv2"},{"code":"K091","system":"readv2"},{"code":"K096","system":"readv2"},{"code":"K104","system":"readv2"},{"code":"K109","system":"readv2"},{"code":"K101","system":"readv2"},{"code":"K119","system":"readv2"},{"code":"K141","system":"readv2"},{"code":"K12","system":"readv2"},{"code":"K11","system":"readv2"},{"code":"K151","system":"readv2"},{"code":"K108","system":"readv2"},{"code":"K105","system":"readv2"},{"code":"K099","system":"readv2"},{"code":"K111","system":"readv2"},{"code":"K115","system":"readv2"},{"code":"K09","system":"readv2"},{"code":"K10","system":"readv2"},{"code":"K129","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('atrial-fibrillation-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["atrial-fibrillation-defects---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["atrial-fibrillation-defects---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["atrial-fibrillation-defects---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
