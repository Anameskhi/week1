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
    @array.all? {|i| i.is_a?(Integer)}
  end
end

  def validate_array
    raise ArgumentError, "Array is Invalid" unless all_item_is_integer
end

puts ExcludingNumber.new([10,2,3,4,5,7,8,9,'i',1]).call