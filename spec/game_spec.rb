require 'game'

describe Game do
  let(:player_1) {double(:player_1)}
  let(:player_2) {double(:player_2)}
  subject(:game) {described_class.new(player_1, player_2)}

   it 'can call attack on player' do
     expect(game).to respond_to(:attack)
   end
end
