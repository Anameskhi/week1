FIRST_NUM = 0
SECOND_NUM = 1


class SumEvenFibonacci
  def initialize(number)
    @number = number
  end

  def call
    validate_num
    sum_even_fibonacci_nums
  rescue ArgumentError => e 
   e.message
  end

  private

  def fibonacci_num
    fibonacci_num = [FIRST_NUM, SECOND_NUM]
    while fibonacci_num.length <= @number
      next_num = fibonacci_num[-2] + fibonacci_num[-1]
      fibonacci_num << next_num
    end
    fibonacci_num
  end

  def even_fibonacci_nums
    fibonacci_num.select{|num| num.even?}
  end

  def sum_even_fibonacci_nums
    even_fibonacci_nums.sum
  end

  def validate_num
    raise ArgumentError, "Your number is Invalid" if (!@number.is_a? Integer) || @number.negative?
  end
end

