class SumDigits
  def initialize(num1,num2)
   @num1, @num2 = [num1, num2].sort

  end

  def call 
    sum_of_digits
  end

  def sum_of_digits
    (@num1..@num2).to_a.sum
  end



end


p SumDigits.new(1,10).call