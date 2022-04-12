FIX_ARRAY = (1..10).to_a

class ExcludingNumber
  def initialize(array)
    @array = array
  end

  def call
    validate_array
    excluding_number
  rescue ArgumentError => e 
    warn e
  end

  private 

  def excluding_number
    FIX_ARRAY - @array
  end

  def all_item_is_integer
    @array.all? {|i| i.is_a?(Integer) && FIX_ARRAY.include?(i)}
  end
  def validate 
    all_item_is_integer && @array.size == 9 && @array.uniq.size == @array.size
  end
end

  def validate_array
    raise ArgumentError, "Array is Invalid" unless validate
end

puts ExcludingNumber.new([10,2,3,4,5,7,8,1,11]).call