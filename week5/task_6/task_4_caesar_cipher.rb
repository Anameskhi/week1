LOW_ALPHA = ("a".."z").to_a
HIGH_ALPHA = ("A".."Z").to_a 
LENGTH_ALPHA = LOW_ALPHA.length

class CaesarCipher
  def initialize(word,shift)
    @word = word
    @shift = shift
  end

  def call
    validate_shift
    gets_caesar_ciphers
  rescue ArgumentError => e 
    warn e
  end

 private

  def gets_caesar_ciphers
    ciphered = ""
    @word.chars.each do |char|
      if LOW_ALPHA.include?(char)
        index_of_char = LOW_ALPHA.index(char)
        new_char = LOW_ALPHA[(index_of_char + @shift) % LENGTH_ALPHA]
        ciphered << new_char
      elsif HIGH_ALPHA.include?(char)
        index_of_char = HIGH_ALPHA.index(char)
        new_char = HIGH_ALPHA[(index_of_char + @shift) % LENGTH_ALPHA]
        ciphered << new_char
      else
        ciphered << char
      end
    end
    ciphered
  end

  def validate_shift
    raise ArgumentError, "Shift namber is Invalid" unless @shift.to_a(Integer)
  end
end

p CaesarCipher.new("ah7/sj", 27).call