import csv

def runAjuste():
    row_happiness = ["country","hrank","hscore","economy","family","health","freedom","generosity","trust","dystopia"]

    with open("./bases/happiness/2015.csv","rb") as source:
        rdr= csv.reader( source )
        with open("./bases/happiness/2015_ajustado.csv","wb") as result:
            novo_csv = csv.writer( result )
            novo_csv.writerow(row_happiness)
            iterrdr = iter(rdr)
            next(iterrdr)
            for r in iterrdr:
                del r[4]
                del r[1]
                novo_csv.writerow(r)

    with open("./bases/happiness/2016.csv","rb") as source:
        rdr= csv.reader( source )
        with open("./bases/happiness/2016_ajustado.csv","wb") as result:
            novo_csv = csv.writer( result )
            novo_csv.writerow(row_happiness)
            iterrdr = iter(rdr)
            next(iterrdr)
            for r in iterrdr:
                del r[5]
                del r[4]
                del r[1]
                novo_csv.writerow(r)

    with open("./bases/happiness/2017.csv","rb") as source:
        rdr= csv.reader( source )
        with open("./bases/happiness/2017_ajustado.csv","wb") as result:
            novo_csv = csv.writer( result )
            novo_csv.writerow(row_happiness)
            iterrdr = iter(rdr)
            next(iterrdr)
            for r in iterrdr:
                del r[3]
                del r[4]
                novo_csv.writerow(r)    