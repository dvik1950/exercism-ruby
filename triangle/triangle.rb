class Triangle

  def initialize(sides)
    @sides = sides
    @valid = valid?
  end

  def equilateral?
    @valid && @sides.all?{|s| s == @sides.first}
  end

  def isosceles?
    @valid && @sides.uniq.length <= 2
  end

  def scalene?
    @valid && @sides == @sides.uniq
  end

  private

  def valid?
    length_not_null && right_length
  end

  def length_not_null
    @sides.all?{|s| s != 0}
  end

  def right_length
    @sides.all?{|s| s < @sides.sum - s}
  end

end