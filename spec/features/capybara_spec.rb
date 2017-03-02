require 'spec_helper'

feature 'Player name input' do
  # describe 'Entering player names', :type => :feature do
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
