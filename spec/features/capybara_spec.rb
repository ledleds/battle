require 'spec_helper'

feature 'Player name input' do
    scenario "should show player names after they input their name" do
      sign_in_and_play
      expect(page).to have_content("Link")
      expect(page).to have_content("Ganon")
    end
  end

feature 'View hitpoints of other users' do
  scenario 'View players hitpoints' do
    sign_in_and_play
    expect(page).to have_content 'Link has 20HP'
  end
end

feature 'Show confirmation after an attck' do
  scenario 'Player 1 attacks Player 1' do
    sign_in_and_play
    click_button 'Attack!'
    expect(page).to have_content('Link attacked Ganon')
  end
end
