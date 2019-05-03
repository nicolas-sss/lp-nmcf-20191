import csv

def runAjuste():
    row_indicators = ['country','indicator','year','value']

    with open("./bases/wdi/Indicators.csv","r") as source:
        rdr = csv.reader(source, delimiter=',')
        parte = 0
        novo_csv = csv.writer(open('./bases/wdi/temp/indicators_0.csv', 'w'), delimiter=',')
        limite = 100000
        iterrdr = iter(rdr)
        next(iterrdr)
        novo_csv.writerow(row_indicators)
        for i, row in enumerate(iterrdr):
            if i + 1 > limite:
                parte += 1
                limite = 100000 * parte
                novo_csv = csv.writer(open('./bases/wdi/temp/indicators_%s.csv' % str(parte), 'w'), delimiter=',')
                novo_csv.writerow(row_indicators)
            del row[2]
            del row[0]
            novo_csv.writerow(row)
