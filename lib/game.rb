class Game

  attr_reader :player_1, :player_2, :current_turn, :next_turn

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @current_turn = player_1
    @next_turn = player_2
  end

  def attack(player)
    player.receive_damage
  end

  def switch_turns
    @current_turn = player_2 if @current_turn = player_1
    @current_turn = player_1 if @current_turn = player_2
  end

end
