# Katherine I. Morley, Joshua Wallace , Spiros C. Denaxas, Ross J. Hunter, Riyaz S. Patel, Pablo Perel, Anoop D. Shah, Adam D. Timmis, Richard J. Schilling, Harry Hemingway, 2024.

import sys, csv, re

codes = [{"code":"G573z00","system":"readv2"},{"code":"G801z00","system":"readv2"},{"code":"L43zz00","system":"readv2"},{"code":"L43z.00","system":"readv2"},{"code":"L43z100","system":"readv2"},{"code":"L43z400","system":"readv2"},{"code":"793Mz00","system":"readv2"},{"code":"7927z00","system":"readv2"},{"code":"7930z00","system":"readv2"},{"code":"7913z00","system":"readv2"},{"code":"7904z00","system":"readv2"},{"code":"7923z00","system":"readv2"},{"code":"790Az00","system":"readv2"},{"code":"7903z00","system":"readv2"},{"code":"7912z00","system":"readv2"},{"code":"7934z00","system":"readv2"},{"code":"790Ez00","system":"readv2"},{"code":"790F000","system":"readv2"},{"code":"790Bz00","system":"readv2"},{"code":"793Az00","system":"readv2"},{"code":"792Cz00","system":"readv2"},{"code":"791z.00","system":"readv2"},{"code":"7921z00","system":"readv2"},{"code":"792Dz00","system":"readv2"},{"code":"7918z00","system":"readv2"},{"code":"790Hz00","system":"readv2"},{"code":"7914z00","system":"readv2"},{"code":"7924z00","system":"readv2"},{"code":"792z.00","system":"readv2"},{"code":"7916z00","system":"readv2"},{"code":"7933z00","system":"readv2"},{"code":"792Bz00","system":"readv2"},{"code":"7922z00","system":"readv2"},{"code":"791Bz00","system":"readv2"},{"code":"7917z00","system":"readv2"},{"code":"7910z00","system":"readv2"},{"code":"79z..00","system":"readv2"},{"code":"7932z00","system":"readv2"},{"code":"793Ez00","system":"readv2"},{"code":"K201","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('atrial-fibrillation-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["atrial-fibrillation-venosus---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["atrial-fibrillation-venosus---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["atrial-fibrillation-venosus---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
