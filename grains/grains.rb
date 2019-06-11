class Grains

  def self.square(square_number)
    raise ArgumentError.new("Wrong number given, a chess board has fields numbered from 1 to 64.") unless (1..64).cover?(square_number)
    2 ** (square_number - 1)
  end

  def self.total
    2 ** 64 - 1
  end

end

module BookKeeping
  VERSION = 1
end

