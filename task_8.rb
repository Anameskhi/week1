class Vowel
  VOWEL = 'aeiou'
  ORDINAR_NUMBER = 96
  def initialize
    @new_hash = {}
  end

  def hash
    VOWEL.each_char do |i|
      @new_hash[i] = i.ord - ORDINAR_NUMBER
    end
    @new_hash
  end
end

p Vowel.new.hash
