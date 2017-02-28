# require './spec_helper'
require 'app'

# RSpec.feature "Entering player names", :type => :feature do
#   scenario "When starting the game" do
#     visit "/app.rb"
#
#     fill_in "Name", :with => "Player 1"
#     click_button "Create Player"
#
#     expect(page).to have_text("Player one has entered the game.")
#   end
# end

# feature 'player name input' do
  describe 'homepage' do
    it "should show player names after they input their name" do
      visit "/app.rb"
      within("#app") do
        fill_in 'Player 1', :with => 'Clem'
      end
      expect(page).to have content("Clem")
    end

  end
