require 'selenium-webdriver'
driver = Selenium::WebDriver.for :firefox

Given(/^We navigate to the page 'Base de Leads'$/) do
  driver.navigate.to "https://app-staging.rdstation.com.br/leads"
end
When(/^We click on 'Importacoes'$/) do
  click_link 'Importacoes'
end
Then(/^the list with imports to content 'Lista' 'Status' and 'Data da importacao'$/) do
  expect(page).to have_content "importar_leads_-_importar-leadslim100"
  expect(page).to have_content "importada"
  expect(page).to have_content "12/09/2017 (22:38)"
end
