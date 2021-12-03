
class Player
  HP = 100
  attr_reader :name, :hp
  
  def initialize(name, hp = HP)
    @name = name
    @hp = hp
  end

  def reduce_points
    @hp -= 10
  end
end