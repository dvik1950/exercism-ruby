class CollatzConjecture

  def self.steps(number)
    raise ArgumentError unless number > 0
    counter = 0
      until number == 1 do
      number.even? ? number = number / 2 : number = number * 3 + 1
        counter += 1
      end
      counter
  end

end