class Luhn

  def self.valid?(number)
    return false if number.gsub(/[^0-9\s]/, '') != number
    number.gsub!(/\W/, '')
    return false if number.length <= 1
    luhn_value(number) % 10 == 0
  end

  private

  def self.luhn_value(number)
    numbers = number.chars.reverse.map(&:to_i)
    numbers.each_with_index.map.sum do |val, index|
      calculate(val, index)
    end
  end

  def self.calculate(number, position)
    number *= (1 + (position % 2))
    number -= 9 if number > 9
    number
  end

end
