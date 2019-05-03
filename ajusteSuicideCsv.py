import csv

def runAjuste():
    row_suicide = ['country','year','sex','age','suicides','population','suicides100','hdi', 'gdp_year' ,'gdp_capita']
    with open("./bases/suicide/master.csv","rb") as source:
        rdr= csv.reader( source )
        with open("./bases/suicide/master_ajustado.csv","wb") as result:
            novo_csv = csv.writer( result )
            novo_csv.writerow(row_suicide)
            iterrdr = iter(rdr)
            next(iterrdr)
            for r in iterrdr:
                del r[-1]
                del r[7]
                novo_csv.writerow(r)
