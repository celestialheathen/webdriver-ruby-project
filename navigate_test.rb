require "selenium-webdriver"
require "chromedriver-helper"

driver = Selenium::WebDriver.for :chrome
driver.navigate.to "http://formy-project.herokuapp.com/"

buttons_link = driver.find_element(link_text: "Buttons")
buttons_link.click 


50.times do 
  driver.navigate.back 

  driver.navigate.forward

end 
