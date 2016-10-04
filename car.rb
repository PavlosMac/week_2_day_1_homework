class Car

attr_reader(:speed, :fuel_level)

  def initialize(speed, fuel_level)
    @speed = speed
    @fuel_level = fuel_level
  end

  def accelerate()
    @speed += 10
    @fuel_level -=5
  end

  def break()
    @speed -= 10 if @speed >= 10
  end

  def accelerate_with_engine(engine)
    engine.accelerate
  end


end