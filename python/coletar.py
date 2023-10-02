import csv
import pandas as pd
import requests 
from bs4 import BeautifulSoup
import datetime
from rocketry import Rocketry
from rocketry.conds import (after_fail,after_success,hourly, daily,minutely,every)

app = Rocketry(config={'task_execution': 'async'})

def raspagem():
    zoom = requests.get('https://www.zoom.com.br/tv/tv-led-65-tcl-4k-hdr-65p735-3-hdmi?_lc=88&searchterm=smart%20tv%2065%20polegadas%204k#lista-de-ofertas')
    soup_zoom = BeautifulSoup(zoom.content, 'html.parser')
    preco = soup_zoom.find(class_='Text_Text__h_AF6 Text_MobileHeadingS__Zxam2 OfferPrice_InCash__MePNu')
    link = soup_zoom.find('div', class_='OfferCard_OfferCardFooter__9dsDN')
    enca_link = link.find('a', href=True)
    url = enca_link.attrs['href']
    return [preco.text, url]


@app.task('every 5 seconds')
def cat_preco():
    preco = raspagem()
    now = datetime.datetime.now()
    time = now.strftime("%H:%M -- %d/%m/%Y")
    dado = open('/scripts/dados_coletar.csv', 'a')
    #escrita = csv.writer(dado)
    #escrita.writerow(['Data: ' + time,'preço: '+ preco[0],' Link: www.zoom.com.br'+preco[1]])
    print('Data: ' + time,'preço: '+ preco[0],' Link: www.zoom.com.br' + preco[1])
    dado.close()


if __name__ == '__main__':

    app.run()