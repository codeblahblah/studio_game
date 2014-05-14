require_relative 'die'
require_relative 'player'
require_relative 'treasure_trove'

class Game
  attr_reader :title

  def initialize(name)
    @title = title
    @players = []
    @die = Die.new
  end

  def add_player(player)
    @players << player
  end

  def play(turns)
    puts "There are #{@players.size} players in #{@title}:\""
    @players.each do |player|
      puts player
    end

    @players.each do |player|
      player.blam
      player.w00t
      player.w00t
      puts player
    end
  end

  def total_points
    @players.reduce(0) { |total, player| total + player.points }
  end
end
