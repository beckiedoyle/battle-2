feature 'Attack' do
    scenario 'attacking player 2' do
      sign_in_and_play
      click_button "Attack"
      expect(page).to have_content 'Phineas attacked Ferb!'
    end
  end