require 'spec_helper'

feature 'Player name input' do
  # describe 'Entering player names', :type => :feature do
    scenario "should show player names after they input their name" do
      visit "/"
      fill_in :player_1, with: 'Vicky'
      click_button('Create Player')
      expect(page).to have_content("Vicky")
    end

  end
