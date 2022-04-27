
class SubStrings
  def initialize(word, array)
    @word = word
    @array = array
  end

  def call
    validate_dictionary_and_substring
    sub_strings
  rescue ArgumentError => e
    e.message
  end

  private

  def common_words
    @array.select { |word| @word.downcase.include?(word.downcase) }
  end

  def sub_strings
    new_hash = {}
    common_words.each { |item| new_hash[item.downcase] = @array.count(item) }
    new_hash
  end

  def is_string
    @word.instance_of?(String) && @array.all?{|elem| elem.instance_of?(String)}
  end

  def validate_dictionary_and_substring
    raise ArgumentError, 'Invalid Elements' unless is_string
  end
end


