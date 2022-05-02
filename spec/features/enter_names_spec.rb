
feature 'Player names' do
  scenario 'players can fill in their names' do
    sign_in_and_play

    save_and_open_page 

    expect(page).to have_content('Superbon vs. Grigorian')
  end
end