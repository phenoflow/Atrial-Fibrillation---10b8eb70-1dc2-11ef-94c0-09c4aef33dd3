# Katherine I. Morley, Joshua Wallace , Spiros C. Denaxas, Ross J. Hunter, Riyaz S. Patel, Pablo Perel, Anoop D. Shah, Adam D. Timmis, Richard J. Schilling, Harry Hemingway, 2024.

import sys, csv, re

codes = [{"code":"ZV42200","system":"readv2"},{"code":"SP00200","system":"readv2"},{"code":"ZVu6e00","system":"readv2"},{"code":"7914211","system":"readv2"},{"code":"14T3.00","system":"readv2"},{"code":"ZV43300","system":"readv2"},{"code":"ZV45H00","system":"readv2"},{"code":"7914.11","system":"readv2"},{"code":"SyuK611","system":"readv2"},{"code":"791y.00","system":"readv2"},{"code":"7N40000","system":"readv2"},{"code":"791D.00","system":"readv2"},{"code":"7918000","system":"readv2"},{"code":"7912200","system":"readv2"},{"code":"7917","system":"readv2"},{"code":"7918400","system":"readv2"},{"code":"7914500","system":"readv2"},{"code":"7910100","system":"readv2"},{"code":"7910200","system":"readv2"},{"code":"ZV43300","system":"readv2"},{"code":"791A.00","system":"readv2"},{"code":"7910214","system":"readv2"},{"code":"791D000","system":"readv2"},{"code":"7918100","system":"readv2"},{"code":"7916y00","system":"readv2"},{"code":"791By00","system":"readv2"},{"code":"ZV45H00","system":"readv2"},{"code":"7N40200","system":"readv2"},{"code":"7912100","system":"readv2"},{"code":"7914211","system":"readv2"},{"code":"7918","system":"readv2"},{"code":"7N40100","system":"readv2"},{"code":"7912.11","system":"readv2"},{"code":"7910.12","system":"readv2"},{"code":"14T3.00","system":"readv2"},{"code":"791..00","system":"readv2"},{"code":"7916","system":"readv2"},{"code":"ZV42200","system":"readv2"},{"code":"791B.00","system":"readv2"},{"code":"7910000","system":"readv2"},{"code":"7914.11","system":"readv2"},{"code":"7912000","system":"readv2"},{"code":"7918y00","system":"readv2"},{"code":"7910213","system":"readv2"},{"code":"ZV45H00","system":"readv2"},{"code":"ZVu6e00","system":"readv2"},{"code":"7914.11","system":"readv2"},{"code":"14T3.00","system":"readv2"},{"code":"ZV43300","system":"readv2"},{"code":"ZV42200","system":"readv2"},{"code":"SyuK611","system":"readv2"},{"code":"SP00200","system":"readv2"},{"code":"7914211","system":"readv2"},{"code":"K341","system":"readv2"},{"code":"K345","system":"readv2"},{"code":"K273","system":"readv2"},{"code":"K378","system":"readv2"},{"code":"K318","system":"readv2"},{"code":"K349","system":"readv2"},{"code":"K34","system":"readv2"},{"code":"K361","system":"readv2"},{"code":"K329","system":"readv2"},{"code":"K388","system":"readv2"},{"code":"K253","system":"readv2"},{"code":"K36","system":"readv2"},{"code":"K251","system":"readv2"},{"code":"K297","system":"readv2"},{"code":"K328","system":"readv2"},{"code":"K319","system":"readv2"},{"code":"K271","system":"readv2"},{"code":"K389","system":"readv2"},{"code":"K348","system":"readv2"},{"code":"K31","system":"readv2"},{"code":"K252","system":"readv2"},{"code":"K275","system":"readv2"},{"code":"K32","system":"readv2"},{"code":"K369","system":"readv2"},{"code":"K368","system":"readv2"},{"code":"K296","system":"readv2"},{"code":"K37","system":"readv2"},{"code":"K379","system":"readv2"},{"code":"K342","system":"readv2"},{"code":"K272","system":"readv2"},{"code":"K38","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('atrial-fibrillation-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["atrial-fibrillation-valvectomy---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["atrial-fibrillation-valvectomy---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["atrial-fibrillation-valvectomy---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
