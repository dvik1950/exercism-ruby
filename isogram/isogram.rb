class Isogram
  
  def self.isogram?(input_string)
    letters = input_string.gsub(/\W/, '')
    uniq_letters = letters.downcase.split('').uniq
    uniq_letters.length == letters.length
  end
  
end