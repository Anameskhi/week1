# chars with index in hash

class CharsIndex
  def initialize(word)
    @word = word
  end

  def call
    validate_word
    index_of_chars
  rescue ArgumentError => e
    warn e
  end

  def validate_word
    raise ArgumentError, "your word isn't string" unless @word.scan(/[^a-zA-Z]/).empty?
  end

  def index_of_chars
    hash_new = {}
    @word.each_char.with_index do |char, index|
      hash_new[char.to_sym] ||= []
      hash_new[char.to_sym] << index
    end
    hash_new
  end
end

def user_survey
  puts 'tell me word'
  answer = gets.chomp
end

puts CharsIndex.new(user_survey).call


