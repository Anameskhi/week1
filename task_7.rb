class Fibonacci
  @first_num  = 0
  @second_num = 1
  HANDRED = 100
  def self.fibonacci_number
    empty_arr= []
   HANDRED.times do
    empty_arr << @first_num
    @first_num, @second_num = @second_num, @first_num + @second_num
   end
   empty_arr
  end
end


p Fibonacci.fibonacci_number