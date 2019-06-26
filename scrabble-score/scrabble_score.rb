class Scrabble

  def initialize(word)
    @word = word
  end

  def score
    return 0 if @word.nil?
    letters.sum do |letter|
      letter_to_score(letter)
    end
  end

  def self.score(word)
    new(word).score
  end

  private

  LETTERS_to_SCORE = {
      %w(A E I O U L N R S T) => 1,
      %w(D G) => 2,
      %w(B C M P) => 3,
      %w(F H V W Y) => 4,
      %w(K) => 5,
      %w(J X) => 8,
      %w(Q Z) => 10
  }

  def letter_to_score(letter)
    LETTERS_to_SCORE.find do |k,v|
      return v if k.include?(letter)
    end
  end

  def letters
    @word.strip.upcase.chars
  end

end
