feature 'switching turns' do
  scenario 'show the current turn' do
    sign_in_and_play
    expect(page).to have_content("David's turn to attack")
  end

  scenario 'after player 1 attacks' do
    sign_in_and_play
    click_link('attack')
    expect(page).not_to have_content("David's turn to attack")
    expect(page).to have_content("Tom's turn to attack")
  end
end