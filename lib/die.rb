require_relative 'auditable'
class Die
  include Auditable
  
  attr_reader :number

  def initialize
    roll
  end

  def roll
    @number = rand(6) + 1
  end
  
end