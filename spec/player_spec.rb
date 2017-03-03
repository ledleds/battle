require 'player'

describe Player do
  name = 'Joe'

  subject(:player) { described_class.new(name) }

  it 'returns the players name' do
    expect(player.name).to eq name
  end

  it 'player has an initial number of health points' do
    expect(player.health_points).to eq described_class::DEFAULT_HP
  end

  it 'player health points are reduced by 10' do
    expect{player.take_damage}.to change{player.health_points}.by -10
  end


end
