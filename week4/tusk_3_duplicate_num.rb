class Duplicates
  def initialize(fill_arr)
    @fill_arr = fill_arr
  end

  def call
    validation_nums
    finding_duplicate
  end

  private

  def finding_duplicate
    @fill_arr.select { |num| @fill_arr.count(num) > 1 }.uniq
  end

  def validation_nums
    @fill_arr.select! { |item| item.to_i.to_s == item }
    @fill_arr.map!(&:to_i)
  end
end

fill_arr = []

loop do
  puts "plese tell number which will be in array (if you want to stop fill array please text 'stop')"
  number = gets.chomp
  break if number == 'stop'

  fill_arr << number
end

duplicate_num = Duplicates.new(fill_arr)
p duplicate_num.call


