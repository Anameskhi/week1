FIX_ARRAY = (1..10).to_a

class ExcludingNumber
  def initialize(array)
    @array = array
  end

  def call
    validate_array
    excluding_number
  rescue ArgumentError => e 
    e.message
  end

  private 

  def excluding_number
    FIX_ARRAY - @array
  end

  def all_item_is_integer
    @array.all? {|i| i.is_a?(Integer) && FIX_ARRAY.include?(i)}
  end
  def is_integer_uniq_num_size_9 
    all_item_is_integer && @array.size == 9 && @array.uniq.size == @array.size
  end
end

  def validate_array
    raise ArgumentError, "Array is Invalid" unless is_integer_uniq_num_size_9
end


