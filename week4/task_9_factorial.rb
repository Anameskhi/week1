# Factorial of a number

class FactorialNumber
  def initialize(number)
    @number = number
  end

  def call
    validate_nums
    factorial_of_num(@number)
  rescue ArgumentError => e
    warn e
  end

  def factorial_of_num(num)
    return 1 if num.zero?

    num * factorial_of_num(num - 1)
  end

  def is_valid_parameters
    @number.is_a?(Integer) && (@number.positive? || @number.zero?)
  end

  def validate_nums
    raise ArgumentError, 'Input is Invalid,Try again' unless is_valid_parameters
  end
end

object = FactorialNumber.new('f')
p object.call


