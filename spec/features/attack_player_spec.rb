feature 'attack Player' do
  scenario 'reduce player 2 hp by 10' do
    sign_in_and_play
    click_link('attack')
    # expect(page).not_to have_content('David: 100 HP')
    expect(page).to have_content('Tom: 90 HP')
  end

  scenario 'reduce player 1 hp by 10' do
    sign_in_and_play
    click_link('attack')
    click_link('attack')
    expect(page).to have_content('David: 90 HP')
  end
end