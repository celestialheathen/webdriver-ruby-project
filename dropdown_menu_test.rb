require "selenium-webdriver"

driver = Selenium::WebDriver.for :chrome
driver.navigate.to "http://formy-project.herokuapp.com/dropdown"

dropdown_menu = driver.find_element(id: 'dropdownMenuButton')
dropdown_menu.click 

autocomplete = driver.find_element(id: "autocomplete")
autocomplete.click