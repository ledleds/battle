require 'spec_helper'

feature 'Player name input' do
    scenario "should show player names after they input their name" do
      sign_in_and_play
      expect(page).to have_content("Link")
      expect(page).to have_content("Ganon")
    end
  end

feature 'View health points of other users' do
  scenario 'View players health points' do
    sign_in_and_play
    expect(page).to have_content 'Link HP: 100'
    expect(page).to have_content 'Ganon HP: 100'
  end
end

feature 'Show confirmation after an attack' do
  scenario 'Player 1 attacks Player 2' do
    sign_in_and_play
    click_button 'Attack!'
    expect(page).to have_content('Link attacked Ganon')
  end
end

feature 'Reduce health points' do
  scenario 'when player 1 attacks player 2' do
    sign_in_and_play
    click_button 'Attack!'
    click_link 'Next turn'
    expect(page).to have_content('Ganon HP: 90')
  end
end
