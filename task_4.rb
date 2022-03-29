# frozen_string_literal: true

class Discriminant
  FIX_PARAMETER = 4
  DIV_PARAMETER = 2
  def initialize(parameter1, parameter2, parameter3)
    @parameter1 = parameter1.to_f
    @parameter2 = parameter2.to_f
    @parameter3 = parameter3.to_f
    @discriminant = count_discriminant
  end

  def count_discriminant
    @parameter2**2 - FIX_PARAMETER * @parameter1 * @parameter3
  end

  def find_elements
    if @discriminant.positive?
      x1 = (-@parameter2 - Math.sqrt(@discriminant)) / DIV_PARAMETER * @parameter1
      x2 = (-@parameter2 + Math.sqrt(@discriminant)) / DIV_PARAMETER * @parameter1
      puts "Discriminant : #{@discriminant}\nx1 : #{x1}\nx2 : #{x2}"
    elsif @discriminant.zero?
      x = -@parameter2 / (@parameter1 * DIV_PARAMETER)
      puts "Discriminant : #{@discriminant}\nx : #{x} "
    else
      puts "Discriminant : #{@discriminant}\n \"No Roots\""
    end
  end
end

puts 'first parameter'
parameter1 = gets.chomp
puts 'second parameter'
parameter2 = gets.chomp
puts 'third parameter'
parameter3 = gets.chomp

Discriminant.new(parameter1, parameter2, parameter3).find_elements
