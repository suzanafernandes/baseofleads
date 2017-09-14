Given(/^navigate to page Segmentation of Leads$/) do
  driver.navigate.to "https://app-staging.rdstation.com.br/nova-segmentacao"
end
  When(/^We click on 'Segmentacao de Leads'$/) do
      click_link 'Segmentação de Leads'
  end
    When(/^We click on 'Criar Segmentacao'$/) do
      click_link 'Criar Segmentação'
    end
    And(/^fill the segmentation and save$/) do
      fill_in('segmentation_name', :with => 'Marketing')
      page.all(:css, 'select.form-control.input-sm.js-input')[0].all(:css, 'option')[1].select_option
      click_button 'Salvar'
    end
Then(/^We view the segmentation registered$/) do
    expect(page).to have_content "Marketing"
end
  
