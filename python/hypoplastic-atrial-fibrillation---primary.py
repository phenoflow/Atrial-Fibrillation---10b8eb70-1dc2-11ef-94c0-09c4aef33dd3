# Katherine I. Morley, Joshua Wallace , Spiros C. Denaxas, Ross J. Hunter, Riyaz S. Patel, Pablo Perel, Anoop D. Shah, Adam D. Timmis, Richard J. Schilling, Harry Hemingway, 2024.

import sys, csv, re

codes = [{"code":"7915y00","system":"readv2"},{"code":"7912y00","system":"readv2"},{"code":"7914","system":"readv2"},{"code":"790M400","system":"readv2"},{"code":"7915200","system":"readv2"},{"code":"7914y00","system":"readv2"},{"code":"7915","system":"readv2"},{"code":"7913","system":"readv2"},{"code":"7915000","system":"readv2"},{"code":"7910","system":"readv2"},{"code":"7912","system":"readv2"},{"code":"7910y00","system":"readv2"},{"code":"7913y00","system":"readv2"},{"code":"7915300","system":"readv2"},{"code":"K30","system":"readv2"},{"code":"K304","system":"readv2"},{"code":"K298","system":"readv2"},{"code":"K25","system":"readv2"},{"code":"K305","system":"readv2"},{"code":"K278","system":"readv2"},{"code":"K175","system":"readv2"},{"code":"K289","system":"readv2"},{"code":"K288","system":"readv2"},{"code":"K29","system":"readv2"},{"code":"K308","system":"readv2"},{"code":"K301","system":"readv2"},{"code":"K303","system":"readv2"},{"code":"K258","system":"readv2"},{"code":"K28","system":"readv2"},{"code":"K279","system":"readv2"},{"code":"K299","system":"readv2"},{"code":"K309","system":"readv2"},{"code":"K27","system":"readv2"},{"code":"K259","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('atrial-fibrillation-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["hypoplastic-atrial-fibrillation---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["hypoplastic-atrial-fibrillation---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["hypoplastic-atrial-fibrillation---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
