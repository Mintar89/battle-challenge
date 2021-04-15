feature 'Enter names' do
  scenario 'submitting names' do
    visit ('/')
    fill_in :player_1_name, with: 'Hulk'
    fill_in :player_2_name, with: 'Thor'
    click_button ('Submit')
    expect(page).to have_content 'Hulk vs. Thor'
  end
end