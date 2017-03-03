require 'player'

describe Player do
  name = 'Joe'
  subject(:player) { described_class.new(name) }

  it 'returns the players name' do
      expect(player.name).to eq name
  end
end
