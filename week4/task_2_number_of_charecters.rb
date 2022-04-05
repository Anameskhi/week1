CONST_WORDS = ['Ruby', 'Python', 'Java', '.NET', 'HTML', 'JavaScript']

class LongestWord
  def initialize(words)
    @words = words
  end

  def call
    words_with_length_in_hash
  end

  private

  def words_with_length_in_hash
    @words.inject({}) do |hash, name| 
      hash[name] = name.size
      hash
    end
  end
end


p LongestWord.new(CONST_WORDS).call