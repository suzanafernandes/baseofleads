Feature: Insert Leads manually
Scenario:  
Given We navigate to page 'Base de Leads'
  When We click to insert Leads manually
    And We fill all fields
  Then the Lead was registered with success
