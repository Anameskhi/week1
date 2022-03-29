
class Triangle
  def initialize(a, b, c)
    @a, @b, @c = [a.to_i, b.to_i, c.to_i].sort
  end

  def calculate
    if rectangular? && isosceles?
      'triangle is rectangle isosceles'
    elsif rectangular?
      'triangle is rectangle'
    elsif equilateral?
      'triangle is equilateral'
    elsif isosceles?
      'triangle is isosceles'

    end
  end

  def rectangular?
    @a**2 + @b**2 == @c**2
  end

  def isosceles?
    @a == @b || @b == @c
  end

  def equilateral?
    @a == @b && @b == @c
  end
end

puts 'please tell me triangle side1'
side1 = gets.chomp
puts 'please tell me triangle side2'
side2 = gets.chomp
puts 'please tell me triangle side3'
side3 = gets.chomp
p Triangle.new(side1, side2, side3).calculate