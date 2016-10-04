class Engine

 attr_reader(:speed, :fuel_level)

  def initialize(speed, fuel_level)
    @speed = speed
    @fuel_level = fuel_level
  end
   
  def accelerate()
    @speed += 25
    @fuel_level -= 10
  end
 


end