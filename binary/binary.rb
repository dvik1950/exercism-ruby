class Binary

  def self.to_decimal(value)
      raise ArgumentError if value.match(/[a-zA-Z2-9]/)

      value = value.split('')  # gsub if I was any good at regex :(
      while value[0] == '0'
        value.shift
      end
      value.join()



  end



end

puts Binary.to_decimal("010001")