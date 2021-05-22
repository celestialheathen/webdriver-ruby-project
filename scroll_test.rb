require "selenium-webdriver"

driver = Selenium::WebDriver.for :chrome
driver.navigate.to "http://formy-project.herokuapp.com/scroll"

name = driver.find_element(id: 'name')
driver.action.move_to(name).send_keys('James Test')

date = driver.find_element(id: 'date')
date.send_keys('05/01/2021')
