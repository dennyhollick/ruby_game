require './turn'

class Game
  
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_turn = @player1
  end

  def determine_winner(remaining_players)
    until remaining_players.length == 1
      remaining_players.each do |player|
        turn = Turn.new(player)
        turn.play
        puts "#{player.name}'s lives remaining: #{player.lives}"
        if player.dead? && remaining_players.length == 2
          break
        end
      end
      # Keep only those players who are still alive
      remaining_players = remaining_players.select do |player|
        player.alive?
      end
    end

    remaining_players.first
  end

  def start
    winner = determine_winner([@player1, @player2])
    puts "#{winner.name} wins with #{winner.lives} lives remaining"
  end
end
