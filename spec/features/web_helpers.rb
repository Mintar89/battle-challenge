def sign_in_and_play
  visit ('/')
  fill_in :player_1_name, with: 'Hulk'
  fill_in :player_2_name, with: 'Thor'
  click_button ('Submit')
end