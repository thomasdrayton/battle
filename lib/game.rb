class Game

  attr_reader :player_1, :player_2, :current_turn, :next_turn

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @current_turn = player_1
    @next_turn = player_2
  end

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end
  
  def self.instance
    @game
  end

  def attack(player)
    player.receive_damage
  end

  def switch_turns
  @players[0], @players[1] = @players[1], @players[0]
  @current_turn = @players[0]
  @next_turn = @players[1]
  end

  def opponent_of(the_player)
    @players.select { |player| player != the_player }.first
  end

  def over?
    @players.any? {|player| player.hitpoints <= 0}
  end

end
