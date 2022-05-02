feature "Player 2 Hit points" do
  scenario 'be able to see player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content('Grigorian: 100 HP')
    end

  scenario 'able to see my own hit points' do
    sign_in_and_play
    expect(page).to have_content('Superbon: 100 HP')
  end
end