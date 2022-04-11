class SumDigits
  def initialize(num1, num2)
    @num1, @num2 = [num1, num2].sort
  end

  def call
    validate_num
    sum_of_digits
  rescue StandardError => e
    warn e
  end

  def sum_of_digits
    (@num1.to_i..@num2.to_i).to_a.sum
  end

  def validate_num
    return if @num1.to_i.to_s == @num1 && @num2.to_i.to_s == @num2

    raise ArgumentError, "your numbers isn't integers, please try again"
  end
end

puts 'tell me first num'
num1 = gets.chomp
puts 'tell me second num'
num2 = gets.chomp

puts SumDigits.new(num1, num2).call


