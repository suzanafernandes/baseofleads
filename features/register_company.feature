Feature: Register companies in the 'Base de Leads'
Scenario: We want to insert a new company
  Given We navigate to the page 'Base de Leads'
    When We click on 'Empresas'
      And We click on 'Inserir Empresa'
      And We fill all fields
      And We click for to save
    Then the company was registered with success
