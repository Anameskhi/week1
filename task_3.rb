class Triangle
  def initialize(side1, side2, side3)
    @side1, @side2, @side3 = [side1.to_f, side2.to_f, side3.to_f].sort
  end

  def call
    validate_sides
    calculate_type_of_triangle
  rescue StandardError => e
    warn e
  end

  private

  def calculate_type_of_triangle
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

  def is_zero?
    @side1.zero? || @side2.zero? || @side3.zero?
  end

  def validate_sides
    raise ArgumentError, 'Error!!! your selected parameters is string' if is_zero?
  end
end

puts 'please tell me triangle side1'
side1 = gets.chomp
puts 'please tell me triangle side2'
side2 = gets.chomp
puts 'please tell me triangle side3'
side3 = gets.chomp

p Triangle.new(side1, side2, side3).call
