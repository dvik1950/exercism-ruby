class Anagram

  attr_accessor :checker_word

  def initialize(checker_word)
    @checker_word = checker_word
  end

  def match(checked_words)
      checked_words.select {|checked_word| checked_word.downcase != checker_word.downcase &&
          downcase_and_sort(checked_word) == downcase_and_sort(checker_word)}
  end

  def downcase_and_sort(word)
    word.downcase.split('').sort.join
  end

end