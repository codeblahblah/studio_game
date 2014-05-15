require 'player'

class BerserkPlayer < Player

  def initialize(name, intial_health)
    super(name, intial_health)
    @w00t_count = 0
  end

  def berserk?
    @w00t_count > 5
  end

  def w00t
    @w00t_count += 1 if !berserk?
    @health += 15
  end

  def blam
    return w00t if berserk? 
    @health -= 10
  end
end