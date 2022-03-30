VOWEL = 'aeiou'
ORDINAR_NUMBER = 96
class Vowel
  def initialize
    @new_hash = {}
  end

  def get_letters_with_index_in_hash
    VOWEL.each_char do |i|
      @new_hash[i] = i.ord - ORDINAR_NUMBER
    end
    @new_hash
  end
end

p Vowel.new.get_letters_with_index_in_hash
