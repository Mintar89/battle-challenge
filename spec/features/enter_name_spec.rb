feature 'Enter names' do
  scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_content 'Hulk vs. Thor'
  end
end

feature "View hit points" do 
  scenario 'see Player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content 'Thor: 60HP'
  end
end

feature 'Attacking' do
  scenario 'attack Player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Hulk attacked Thor'
  end
end