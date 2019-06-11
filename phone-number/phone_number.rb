class PhoneNumber

  def self.clean(number)
      number.gsub!(/\D/, "")
      number =  number[1..10] if number.length == 11 && number[0] == "1"
      return nil if ["0","1"].include?(number[0]) || ["0","1"].include?(number[3]) || number.length != 10
      number
  end



end
