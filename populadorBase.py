import pandas as pd
import os
from sqlalchemy import create_engine

engine = create_engine('mysql://root:@localhost:3306/suicidio', pool_recycle=60)

def insert(source,engine,name):
    DF = pd.io.parsers.read_csv(source)
    DF = DF.dropna()
    DF.to_sql(name, con=engine, if_exists='append')

def insertAdicionaValor(source,engine,name,coluna,valor):
    DF = pd.io.parsers.read_csv(source)
    DF = DF.dropna()
    DF[coluna] = valor
    DF.to_sql(name, con=engine, if_exists='append')

#insert('./bases/suicide/master_ajustado.csv', engine, 'suicidioEspecifico')
#insertAdicionaValor('./bases/happiness/2015_ajustado.csv', engine, 'happiness', 'ano', '2015')
#insertAdicionaValor('./bases/happiness/2016_ajustado.csv', engine, 'happiness', 'ano', '2016')
#insertAdicionaValor('./bases/happiness/2017_ajustado.csv', engine, 'happiness', 'ano', '2017')
insert('./bases/wdi/Country_ajustado.csv', engine, 'pais')
#for i in range(len(os.listdir('./bases/wdi/temp'))):
#    insert('./bases/wdi/temp/indicators_%s.csv' % str(i), engine, 'indicadores')