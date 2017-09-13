Feature: Import Leads
Scenario: Import Leads with CSV
  Given We navigate to the page 'Base de Leads'
    And We click in the option 'Importar Leads'
    And We click in the option 'Importar CSV'
    And select the file we want to import
  Given file was selected
    Then We accept the terms
      And confirm an import
  Given file with CSV colummns
    Then We save
      And We Continue
  Given page with information 'Gerar conversoes'
    Then Import file with success
