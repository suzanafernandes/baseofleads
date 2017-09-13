require 'selenium-webdriver'
driver = Selenium::WebDriver.for :firefox

Given(/^We navigate to the homepage$/) do
  driver.navigate.to "https://app-staging.rdstation.com.br/login"
end
When(/^We fill all fields correctly$/) do
  fill_in('user_email', :with => 'suzanafernandes@suzanafernandes.com')
  fill_in('user_password', :with => '151089')
  click_on "Entrar"
end
And(/^user is logged$/) do
  wait = Selenium::WebDriver::Wait.new(:timeout => 10) # seconds
  begin
    expect(find('#account-menu').text).to have_content("Pudim")
   end
end

Then(/^We can to go to the page base of leads$/) do
  driver.navigate.to "https://app-staging.rdstation.com.br/leads"
end
