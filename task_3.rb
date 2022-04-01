class Triangle
  def initialize(side1, side2, side3)
    @side1, @side2, @side3 = [side1.to_i, side2.to_i, side3.to_i].sort
    validate_sides(@side1)
    validate_sides(@side2)
    validate_sides(@side3)
  end

  def calculate
    if is_rectangular? && is_isosceles?
      'triangle is rectangle isosceles'
    elsif is_rectangular?
      'triangle is rectangle'
    elsif is_equilateral?
      'triangle is equilateral'
    elsif is_isosceles?
      'triangle is isosceles'
    else
      'your answers isn\'t triangle parameteres'
    end
  end

  def is_rectangular?
    @side1**2 + @side2**2 == @side3**2
  end

  def is_isosceles?
    @side1 == @side2 || @side2 == @side3
  end

  def is_equilateral?
    @side1 == @side2 && @side2 == @side3
  end
  def validate_sides(side)
    if side.to_f == 0
      puts "Eror!!! your selected side is string"
      exit 1

    end
  end
end

puts 'please tell me triangle side1'
side1 = gets.chomp
puts 'please tell me triangle side2'
side2 = gets.chomp
puts 'please tell me triangle side3'
side3 = gets.chomp
p Triangle.new(side1, side2, side3).calculate
