HANDRED = 100
class Fibonacci
  def initialize
    @first_num  = 0
    @second_num = 1
  end

  def get_fibonacci_number
    fibonacci_nums = []
    HANDRED.times do
      fibonacci_nums << @first_num
      @first_num, @second_num = @second_num, @first_num + @second_num
    end
    fibonacci_nums
  end
end

p Fibonacci.new.get_fibonacci_number
