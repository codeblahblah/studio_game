require 'player'

class BerserkPlayer < Player

  def initialize(name, health)
    super(name, health)
    @w00t_count = 0
  end

  def berserk?
    @w00t_count > 5
  end

  def w00t
    @w00t_count += 1 if !berserk?
    super
  end

  def blam
    return w00t if berserk? 
    super
  end
end