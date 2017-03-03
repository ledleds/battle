class Player
  attr_reader :name, :health_points
  
  DEFAULT_HP = 100

  def initialize(name, hp = DEFAULT_HP)
    @name = name
    @health_points = hp
  end

  def take_damage
    @health_points -= 10
  end

end
