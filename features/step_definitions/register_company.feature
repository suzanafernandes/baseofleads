require 'selenium-webdriver'
driver = Selenium::WebDriver.for :firefox

Given(/^We navigate to the page 'Base de Leads'$/) do
  driver.navigate.to "https://app-staging.rdstation.com.br/leads"
end
When(/^We click on 'Empresas'$/) do
  click_link 'Empresas'
end
When(/^We click on 'Inserir Empresa'$/) do
  click_link 'Inserir Empresa'
end
When(/^We fill all fields$/) do
  fill_in('inputNameCompany', :with => 'Suzana ltda')
  fill_in('inputEmailCompany', :with => 'suzanafernandes@suzanafernandes.com')
end
When(/^We click for to save$/) do
  click_button 'Salvar'
end
Then(/^The company was registered with success$/) do
  expect(find('.panel.panel-default').text).to have_content "Leads de Suzana ltda"
end
