# Katherine I. Morley, Joshua Wallace , Spiros C. Denaxas, Ross J. Hunter, Riyaz S. Patel, Pablo Perel, Anoop D. Shah, Adam D. Timmis, Richard J. Schilling, Harry Hemingway, 2024.

import sys, csv, re

codes = [{"code":"791B400","system":"readv2"},{"code":"7911400","system":"readv2"},{"code":"7915100","system":"readv2"},{"code":"7911000","system":"readv2"},{"code":"7917100","system":"readv2"},{"code":"7911300","system":"readv2"},{"code":"7911z00","system":"readv2"},{"code":"7916100","system":"readv2"},{"code":"7911","system":"readv2"},{"code":"791Cy00","system":"readv2"},{"code":"7911.11","system":"readv2"},{"code":"791C300","system":"readv2"},{"code":"7911.12","system":"readv2"},{"code":"7911200","system":"readv2"},{"code":"791C.00","system":"readv2"},{"code":"791B500","system":"readv2"},{"code":"7911100","system":"readv2"},{"code":"7911y00","system":"readv2"},{"code":"791A200","system":"readv2"},{"code":"7911411","system":"readv2"},{"code":"791C400","system":"readv2"},{"code":"K338","system":"readv2"},{"code":"K335","system":"readv2"},{"code":"K322","system":"readv2"},{"code":"K339","system":"readv2"},{"code":"K33","system":"readv2"},{"code":"K373","system":"readv2"},{"code":"K26","system":"readv2"},{"code":"K269","system":"readv2"},{"code":"K262","system":"readv2"},{"code":"K261","system":"readv2"},{"code":"K265","system":"readv2"},{"code":"K302","system":"readv2"},{"code":"K264","system":"readv2"},{"code":"K268","system":"readv2"},{"code":"K263","system":"readv2"},{"code":"K334","system":"readv2"},{"code":"K386","system":"readv2"},{"code":"K332","system":"readv2"},{"code":"K312","system":"readv2"},{"code":"K331","system":"readv2"},{"code":"K385","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('atrial-fibrillation-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["subaortic-atrial-fibrillation---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["subaortic-atrial-fibrillation---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["subaortic-atrial-fibrillation---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
