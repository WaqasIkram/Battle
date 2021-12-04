class Game
  attr_reader :player_1, :player_2, :current_turn

  def initialize(player1, player2)
    @player_1 = player1
    @player_2 = player2
    @current_turn = player_1
  end

  def attack(opponent)
    opponent.reduce_points
  end

  def switch_turn
    @current_turn = other_player(current_turn)
  end

  def other_player(current_turn)
    current_turn == player_1 ? player_2 : player_1
  end
end

# need to remember to avoid using attr_reader and instead use methods