class SubStrings
  def initialize(word,array)
    @word = word.downcase
    @array = array.map(&:downcase)
  end

  def call
    validate_dictionary_and_substring
    sub_strings
  rescue ArgumentError => e 
    warn e
  end

  private
   def common_words
    @array.select{|word| @word.include?(word) }
   end

  def sub_strings
    new_hash = Hash.new
     common_words.each{|item| new_hash[item] = @array.count(item)}
     new_hash
  end

  def validate_dictionary_and_substring
    raise ArgumentError, "Invalid Elements" unless  @word.class == String && @array.all?{|elem|  elem.class == String}
  end
end

p SubStrings.new("Howdy partner, sit down! How's it GOING", ["below","go","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]).call