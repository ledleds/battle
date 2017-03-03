require 'player'

describe Player do
  name_1 = 'Joe'
  name_2 = 'Vicky'
  subject(:player_1) { described_class.new(name_1) }
  subject(:player_2) { described_class.new(name_2) }

  it 'returns the players name' do
    expect(player_1.name).to eq name_1
  end

  it 'player has an initial number of health points' do
    expect(player_1.health_points).to eq described_class::DEFAULT_HP
  end

  it 'player health points are reduced by 10' do
    expect{player_1.take_damage}.to change{player_1.health_points}.by -10
  end
end
