# Katherine I. Morley, Joshua Wallace , Spiros C. Denaxas, Ross J. Hunter, Riyaz S. Patel, Pablo Perel, Anoop D. Shah, Adam D. Timmis, Richard J. Schilling, Harry Hemingway, 2024.

import sys, csv, re

codes = [{"code":"G401.00","system":"readv2"},{"code":"L432.00","system":"readv2"},{"code":"L43..00","system":"readv2"},{"code":"ZV12900","system":"readv2"},{"code":"L096400","system":"readv2"},{"code":"G401100","system":"readv2"},{"code":"7A09300","system":"readv2"},{"code":"G401000","system":"readv2"},{"code":"7A0A100","system":"readv2"},{"code":"G401.12","system":"readv2"},{"code":"L430.00","system":"readv2"},{"code":"L43..11","system":"readv2"},{"code":"7A09311","system":"readv2"},{"code":"14AC.00","system":"readv2"},{"code":"793M000","system":"readv2"},{"code":"7913100","system":"readv2"},{"code":"7913000","system":"readv2"},{"code":"7918500","system":"readv2"},{"code":"7917300","system":"readv2"},{"code":"7913200","system":"readv2"},{"code":"7913.11","system":"readv2"},{"code":"791D100","system":"readv2"},{"code":"7913.12","system":"readv2"},{"code":"7917311","system":"readv2"},{"code":"7916300","system":"readv2"},{"code":"I26","system":"readv2"},{"code":"K621","system":"readv2"},{"code":"K324","system":"readv2"},{"code":"K281","system":"readv2"},{"code":"K362","system":"readv2"},{"code":"K314","system":"readv2"},{"code":"K182","system":"readv2"},{"code":"K346","system":"readv2"},{"code":"K282","system":"readv2"},{"code":"K283","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('atrial-fibrillation-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["aortopulmonary-atrial-fibrillation---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["aortopulmonary-atrial-fibrillation---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["aortopulmonary-atrial-fibrillation---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
