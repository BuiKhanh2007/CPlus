
from selenium import webdriver
import sys
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.common.keys import Keys
from time import sleep
 
def test_lambdatest_todo_app():
    chrome_driver = webdriver.Chrome()
    
    chrome_driver.get('https://www.facebook.com/messages/t/100068925197033')
    sleep(10000)
    
test_lambdatest_todo_app()