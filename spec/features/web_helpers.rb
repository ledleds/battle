def sign_in_and_play
  visit "/"
  fill_in :player_1, with: 'Link'
  fill_in :player_2, with: 'Ganon'
  click_button('Create Player')
end
