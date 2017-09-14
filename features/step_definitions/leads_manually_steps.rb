require 'selenium-webdriver'
driver = Selenium::WebDriver.for :firefox

Given(/^We navigate to the page 'Base de Leads'$/) do
  driver.navigate.to "https://app-staging.rdstation.com.br/leads/novo"
end
When(/^We click to insert Leads manually$/) do
  click_link 'Inserir Lead'
end
And(/^We fill all fields$/) do
  fill_in('source', :with => 'Suzana ltda')
  fill_in('lead_name', :with => 'Suzana')
  fill_in('lead_email', :with => 'suzanafernandes@suzanafernandes.com')
  click_button 'Salvar'
end
Then(/^the Lead was registed with success$/) do
  expect(find('#toggle_opportunity_link).text).to have_content("Marcar oportunidade")
end
