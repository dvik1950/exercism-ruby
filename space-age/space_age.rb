class SpaceAge

  def initialize(in_seconds)
    @earth_age = in_seconds.to_f/31557600.0
  end

  def on_earth
    @earth_age
  end

  def on_mercury
    @earth_age/0.2408467
  end

  def on_venus
    @earth_age/0.61519726
  end

  def on_mars
    @earth_age/1.8808158
  end

  def on_jupiter
    @earth_age/11.862615
  end

  def on_saturn
    @earth_age/29.447498
  end

  def on_uranus
    @earth_age/84.016846
  end

  def on_neptune
    @earth_age/164.79132
  end

end


module BookKeeping
  VERSION = 1 # Where the version number matches the one in the test.
end