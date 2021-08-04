def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Phineas'
  fill_in :player_2_name, with: 'Ferb'
  click_button 'Submit'
end