Feature: View imports list in the 'Base de Leads'
Scenario: We want to view imports list
  Given We navigate to the page 'Base de Leads'
    When We click on 'Importações'
      Then the list with imports to content 'Lista', 'Status' and 'Data da importação'
