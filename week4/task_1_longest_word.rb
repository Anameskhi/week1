CONST_WORDS = ['Ruby', 'Python', 'Java', '.NET', 'HTML', 'JavaScript'].freeze

class LongestWord
  def initialize(words)
    @words = words
  end

  def call
    max_length_of_word
  end

  private

  def max_length_of_word
    @words.max_by(&:length)
  end
end

p LongestWord.new(CONST_WORDS).call
