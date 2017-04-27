class Game

  attr_reader :player_1, :player_2, :current_turn, :next_turn

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @current_turn = player_1
    @next_turn = opponent_of(@current_turn)
  end

  def attack(player)
    player.receive_damage
  end

  def switch_turns
  @players[0], @players[1] = @players[1], @players[0]
  @current_turn = @players[0]
  @next_turn = @players[1]
  end

private

  def opponent_of(the_player)
    @players.select { |player| player != the_player }.first
  end

end

#def switch_turns
#  @current_turn = player_2 if @current_turn = player_1
#  @current_turn = player_1 if @current_turn = player_2
#end
