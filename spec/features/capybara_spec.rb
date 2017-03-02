require 'spec_helper'

feature 'Player name input' do
  # describe 'Entering player names', :type => :feature do
    scenario "should show player names after they input their name" do
      visit "/"
      fill_in :player_1, with: 'Link'
      fill_in :player_2, with: 'Ganon'
      click_button('Create Player')
      expect(page).to have_content("Link")
      expect(page).to have_content("Ganon")
    end
  end

  feature 'View hitpoints of other users' do
    scenario 'View players hitpoints' do
      visit "/"
      fill_in :player_1, with: 'Link'
      fill_in :player_2, with: 'Ganon'
      click_button('Create Player')
      expect(page).to have_content 'Link has 20HP'
    end
  end
