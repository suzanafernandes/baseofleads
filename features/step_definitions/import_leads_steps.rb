require 'selenium-webdriver'
driver = Selenium::WebDriver.for :firefox

Given(/^We navigate to the page 'Base de Leads'$/) do
  driver.navigate.to "https://app-staging.rdstation.com.br/leads"
end
And(/^We click in the option 'Importar Leads'$/) do
  click_on 'Importar Leads'
end
And(/^We click in the option 'Importar CSV'$/) do
  click_on 'Importar CSV'
end
And(/^We select the file We want to import$/) do
  upload_document("importar_leads - importar-leadsnew.csv")
end
Given(/^file was selected$/) do
  wait(10)
end
Then(/^We accept the term$/) do
  check "plan_update_confirm"
  check "responsible_confirm"
  select "Outros casos", from: "lead_import_import_reason"
end
And(/^confirm an import$/) do
  click_on "Confirmar"
end
Given(/^We save$/) do
  click_link "Salvar e avançar"
end
Given(/^page with information 'Gerar conversoes'$/) do
  choose '#lead_import_create_conversion_false'
  click_on 'Importar'
end
Then(/^Import file with success$/) do
   expect(page).to have_content("importar_leads_-_importar-leadsnew")
end
