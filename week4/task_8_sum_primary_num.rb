# summarize of primary numbers

class PrimeNumbers
  def initialize(array)
    @array = array
  end

  def call
    validate_nums
    sum_of_prime_nums
  end

  private

  def is_prime?(num)
    return false if num == 1

    (2...num).each do |divisor|
      return false  if (num % divisor).zero?
    end
    true
  end

  def select_prime_nums
    prime_nums = []
    @array.each do |number|
      prime_nums << number if is_prime?(number)
    end
    prime_nums
  end
  
  def sum_of_prime_nums
    select_prime_nums.sum
  end

  def validate_nums
    @array.select! { |item| item.to_i.to_s == item }
    @array.map!(&:to_i)
  end
end

def user_survey
  fill_array = []

  loop do
    puts "tell me the number that will be in the array(if you want stop adding numbers, please enter 'stop')"
    num = gets.chomp
    break if num == 'stop'

    fill_array << num
  end
  fill_array
end

p PrimeNumbers.new(user_survey).call


