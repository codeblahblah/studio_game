class Die
  attr_reader :number

  def initialize
    roll
  end

  def roll
    @number = rand(6) + 1
  end
  
end