COMPARABLE_NUM = 5

class GreaterFive
  def initialize(array)
    @array = array
  end

  def call
    validate_items
    "#{select_greater_than_five.count} items are greater than #{COMPARABLE_NUM}"
  end

  def select_greater_than_five
    @array.select { |num| num > COMPARABLE_NUM }
  end

  def validate_items
    @array.select! { |item| item.to_f.to_s == item || item.to_i.to_s == item }
    @array.map!(&:to_f)
  end
end
fill_array = []

loop do
  puts "tell me the number that will be in the array(if you want stop adding numbers, please enter 'stop')"
  num = gets.chomp
  break if num == 'stop'

  fill_array << num
end

p GreaterFive.new(fill_array).call


