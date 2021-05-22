require "selenium-webdriver"

driver = Selenium::WebDriver.for :chrome
driver.navigate.to "http://formy-project.herokuapp.com/autocomplete"

autocomplete = driver.find_element(id: 'autocomplete')
autocomplete.send_keys('11 Broadway, New York NY, USA')

#Implicit wait
driver.manage.timeouts.implicit_wait = 5

#Explicit wait
wait = Selenium::WebDriver::Wait.new(timeout: 5)
wait.until { driver.find_element(class: 'pac-item').displayed? }

autocomplete_result = driver.find_element(class: 'pac-item')
autocomplete_result.click