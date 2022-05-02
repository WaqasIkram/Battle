def sign_in_and_play
  visit('/')
  fill_in('player1', with: 'Superbon')
  fill_in('player2', with: 'Grigorian')
  click_button 'Submit'
end