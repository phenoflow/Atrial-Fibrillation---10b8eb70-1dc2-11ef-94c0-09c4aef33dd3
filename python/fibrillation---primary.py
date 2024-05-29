# Katherine I. Morley, Joshua Wallace , Spiros C. Denaxas, Ross J. Hunter, Riyaz S. Patel, Pablo Perel, Anoop D. Shah, Adam D. Timmis, Richard J. Schilling, Harry Hemingway, 2024.

import sys, csv, re

codes = [{"code":"G573000","system":"readv2"},{"code":"34019","system":"readv2"},{"code":"16366","system":"readv2"},{"code":"25238","system":"readv2"},{"code":"2511","system":"readv2"},{"code":"23078","system":"readv2"},{"code":"34517","system":"readv2"},{"code":"34086","system":"readv2"},{"code":"34328","system":"readv2"},{"code":"34088","system":"readv2"},{"code":"34418","system":"readv2"},{"code":"8466","system":"readv2"},{"code":"20844","system":"readv2"},{"code":"36099","system":"readv2"},{"code":"9522","system":"readv2"},{"code":"3181","system":"readv2"},{"code":"792","system":"readv2"},{"code":"33711","system":"readv2"},{"code":"34864","system":"readv2"},{"code":"38041","system":"readv2"},{"code":"34299","system":"readv2"},{"code":"2302","system":"readv2"},{"code":"34576","system":"readv2"},{"code":"61","system":"readv2"},{"code":"3705","system":"readv2"},{"code":"13348","system":"readv2"},{"code":"45","system":"readv2"},{"code":"34416","system":"readv2"},{"code":"33274","system":"readv2"},{"code":"33675","system":"readv2"},{"code":"33612","system":"readv2"},{"code":"833","system":"readv2"},{"code":"34691","system":"readv2"},{"code":"6262","system":"readv2"},{"code":"94","system":"readv2"},{"code":"8467","system":"readv2"},{"code":"34023","system":"readv2"},{"code":"40245","system":"readv2"},{"code":"30203","system":"readv2"},{"code":"27523","system":"readv2"},{"code":"34327","system":"readv2"},{"code":"33080","system":"readv2"},{"code":"20944","system":"readv2"},{"code":"34526","system":"readv2"},{"code":"29282","system":"readv2"},{"code":"34017","system":"readv2"},{"code":"38044","system":"readv2"},{"code":"36","system":"readv2"},{"code":"34417","system":"readv2"},{"code":"1781","system":"readv2"},{"code":"34024","system":"readv2"},{"code":"3286","system":"readv2"},{"code":"34087","system":"readv2"},{"code":"34918","system":"readv2"},{"code":"40143","system":"readv2"},{"code":"34758","system":"readv2"},{"code":"34948","system":"readv2"},{"code":"30202","system":"readv2"},{"code":"34519","system":"readv2"},{"code":"31937","system":"readv2"},{"code":"31511","system":"readv2"},{"code":"34095","system":"readv2"},{"code":"39866","system":"readv2"},{"code":"17965","system":"readv2"},{"code":"14AN.00","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('atrial-fibrillation-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["fibrillation---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["fibrillation---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["fibrillation---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
