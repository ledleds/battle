class Game
  attr_reader :player_1, :player_2, :current_player, :opponent
  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @current_player = player_1
    @opponent = player_2
  end

  def attack(attacked_player)
    attacked_player.take_damage
  end

  def change_player
    if @current_player == @player_1
      @current_player = @player_2
      @opponent = @player_1
    else
      @current_player = @player_1
      @opponent = @player_2
    end
  end

end
