class BubbleSort
  def initialize(array)
    @array = array
  end

  def call
    validate_array
    bubble_sort_array
  rescue ArgumentError => e
    e.message
  end

  private

  def bubble_sort_array
    return @array if @array.length <= 1

    @array.each do
      swap = false
      @array.each_with_index do |num, index|
        break if index == @array.length - 1

        if num > @array[index + 1]
          @array[index], @array[index + 1] = @array[index + 1], @array[index]
          swap = true
        end
      end
      break unless swap
    end
    @array
  end


  def validate_array
    raise ArgumentError, 'Invalid Input' unless @array.all? { |elem| elem.is_a?(Numeric)} || @array.all? { |elem| elem.is_a?(String)} 
  end
end


