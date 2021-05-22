require "selenium-webdriver"

driver = Selenium::WebDriver.for :chrome
driver.navigate.to "http://formy-project.herokuapp.com/dragdrop"

datefield = driver.find_element(id: 'datepicker')
datefield.send_keys("05/22/2021")
datefield.send_keys :return