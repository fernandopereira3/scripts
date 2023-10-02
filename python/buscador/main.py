import requests
from bs4 import BeautifulSoup
from selenium import webdriver
from selenium.webdriver.chrome.options import Options
from time import sleep

options = Options()
options.add_argument('--headless')
navegador = webdriver.Chrome(options=options)

navegador.get('https://www.airbnb.com')

sleep(2)

input_place = navegador.find_element_by_tag_name('input')
input_place.send_keys('São Paulo')
input_place.submit()

page_content = navegador.page_source

site = BeautifulSoup(page_content, 'html.parser')

print(site.prettify())