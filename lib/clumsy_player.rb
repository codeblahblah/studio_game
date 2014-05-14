require_relative 'player'

class ClumsyPlayer < Player
  attr_reader :boost_factor

  def initialize(name, health = 150, boost_factor = 1)
    super(name, health)
    @boost_factor = boost_factor
  end

  def points
    @points = super() / 2
  end

  def each_found_treasure
    @found_treasures.each do |name, points|
      yield Treasure.new(name, (points/2))
    end
  end

  def w00t
    boost_factor.times do
      @health += 15
    end
  end
end
