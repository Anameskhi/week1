class StockPicker
  def initialize(array)
    @array = array
    @array_size = array.length
  end

  def call
    validate_array_of_stock
    gets_pair
  rescue ArgumentError => e 
    warn e
  end

  def gets_pair
   buy_day = 0
    sell_day = 0
    max_diff = 0
    @array.each_with_index do |num, index|
      i = 0
      while (index + i < @array_size)
        if ((@array[index+i] - @array[index]) > max_diff)
          max_diff = @array[index+i] - @array[index]
          buy_day = @array[index+i]
          sell_day = @array[index]
        end
      i += 1
      end

    end
    pair = [buy_day,sell_day]
    return "the pair is #{pair} and the profit is #{max_diff} "
end

  def is_integer?
    @array.all?{|num| num.is_a?(Integer)}
  end

  def validate_array_of_stock
  raise ArgumentError, "Invalid Input" unless is_integer? && @array.is_a?(Array)
  end
end
puts StockPicker.new([17,6,9,14,8,6,7,15]).call
