require "selenium-webdriver"

driver = Selenium::WebDriver.for :chrome 
driver.navigate.to "http://formy-project.herokuapp.com/keypress"

name = driver.find_element(id: 'name')
name.send_keys("Hello James from local machine")

button = driver.find_element(id: 'button')
button.click
