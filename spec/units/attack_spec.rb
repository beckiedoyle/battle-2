feature 'Attack' do
  scenario 'attacking player 2' do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content 'Phineas attacked Ferb!'
  end
end

feature 'Attacking' do
  scenario 'reduces score by 10 when player is attacked' do
    sign_in_and_play
    click_button "Attack"
    expect(page).not_to have_content "Ferb: 60HP"
    expect(page).to have_content "Ferb: 50HP"
  end
end