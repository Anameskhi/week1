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

  private

  def index_of_pairs(current_index, index)
    if (@array[current_index] - @array[index]) > @max_diff
      @max_diff = @array[current_index] - @array[index]
      buy_day_index = current_index
      sell_day_index = index
      @pair = [sell_day_index, buy_day_index]
    end
  end

  def required_pair(current_index, index)
    while current_index < @array_size
      index_of_pairs(current_index, index)
      current_index += 1
    end
  end

  def gets_pair
    @max_diff = 0
    @pair = []
    @array.each_with_index do |_, index|
      current_index = index
      required_pair(current_index, index)
    end
    @pair
  end

  def is_integer?
    @array.all? { |num| num.is_a?(Integer) }
  end

  def validate_array_of_stock
    raise ArgumentError, 'Invalid Input' unless is_integer? && @array.is_a?(Array)
  end
end


