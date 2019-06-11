class SumOfMultiples

  def initialize(*numbers)
    @numbers = numbers
  end

  def to(limit)
    return 0 if @numbers.none? || @numbers == [0]
    @numbers.map do |number|
      multiples_of_with_limit(number, limit)
    end.flatten.uniq.sum
  end

  private

  def multiples_of_with_limit(number, limit)
    multiples = *(1..limit-1)
    multiples.reject! do |x|
      x % number != 0
    end
    multiples
  end

end

