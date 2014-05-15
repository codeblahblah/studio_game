class Player
  include Comparable
  attr_reader :name, :health

  def initialize(name, health = 150)
    @name = name.capitalize
    @health = health
    @strong = true
    @found_treasures = Hash.new(0)
    @points = 0
  end

  def <=> (other)
    other.score <=> self.score
  end

  def found_treasure(treasure)
    @found_treasures[treasure.name] += treasure.points
    puts "#{@name} found a #{treasure.name} worth #{treasure.points} points."
    puts "#{@name}'s treasures: #{@found_treasures}"
  end

  def each_found_treasure
    @found_treasures.each do |name, points|
      yield Treasure.new(name, points)
    end
  end

  def points
    @points = @found_treasures.values.reduce(0, :+)
  end

  def score
    health + points
  end

  def strong?
    @health > 100
  end

  def to_s
    "I'm #{name} with health = #{health}, points = #{points}, and score = #{score}."
  end

  def blam
    @health -= 10
  end

  def w00t
    @health += 15
  end
end
