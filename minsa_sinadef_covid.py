#Procedimiento automatizado de descarga de datos
#Fallecidos: MINSA: Sinadef - Covid
#https://www.datosabiertos.gob.pe/dataset/informaci%C3%B3n-de-fallecidos-del-sistema-inform%C3%A1tico-nacional-de-defunciones-sinadef-ministerio
#https://www.datosabiertos.gob.pe/dataset/fallecidos-por-covid-19-ministerio-de-salud-minsa    

# 01. Librerías a utilizar
from urllib.request import urlopen
from zipfile import ZipFile
import pandas as pd

# 02. Descarga del Minsa - SINADEF
url = 'https://cloud.minsa.gob.pe/s/nqF2irNbFomCLaa/download'
df1= pd.read_csv(url, sep=";", encoding="latin-1" )   
df1.to_csv('C:\\Users\\Intel\\Documents\\Mis documentos IDEA\\Samples\\Archivos fuente.ILB\\fallecidos_sinadef.csv', encoding="utf-8")

# 03. Descarga del Minsa - Covid19
url2 = "https://cloud.minsa.gob.pe/s/Md37cjXmjT9qYSa/download"
df2= pd.read_csv(url2, sep=";" , encoding='latin-1') 
df2.to_csv('C:\\Users\\Intel\\Documents\\Mis documentos IDEA\\Samples\\Archivos fuente.ILB\\fallecidos_covid.csv', encoding="utf-8")
