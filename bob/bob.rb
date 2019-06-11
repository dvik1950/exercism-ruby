class Bob

  def self.hey(sentence)
    sentence.strip!
    if sentence[-1] == "?" && sentence.upcase == sentence && sentence.match(/[a-zA-Z]/)
    "Calm down, I know what I'm doing!"
    elsif sentence[-1] == "?"
    'Sure.'
    elsif sentence.upcase == sentence && sentence.match(/[a-zA-Z]/)
    'Whoa, chill out!'
    elsif sentence.empty?
     'Fine. Be that way!'
    else
    'Whatever.'
    end
  end

end

