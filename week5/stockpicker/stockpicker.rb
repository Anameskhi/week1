class StockPicker
  def initialize(array)
    @array = array
    @array_size = array.length
  end

  def call
    validate_array_of_stock
    gets_pair
  rescue ArgumentError => e 
    e.message
  end

  def gets_pair
   buy_day = 0
    sell_day = 0
    max_diff = 0
    @pair = []
    @array.each_with_index do |num, index|
      i = 0
      while (index + i < @array_size)
        if ((@array[index+i] - @array[index]) > max_diff)
          max_diff = @array[index+i] - @array[index]
          buy_day_index = index+i
          sell_day_index = index
          @pair = [sell_day_index,buy_day_index]
        end
      i += 1
      end
    end
    @pair
  end
    

  def is_integer?
    @array.all?{|num| num.is_a?(Integer)}
  end

  def validate_array_of_stock
  raise ArgumentError, "Invalid Input" unless is_integer? && @array.is_a?(Array)
  end
end

