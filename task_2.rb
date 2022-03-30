DIV_PARAMETER = 0.5
class Triangle
  def initialize(base, height)
    @base = base.to_f
    @height = height.to_f
  end

  def get_area_of_triangle
    @base * @height * DIV_PARAMETER
  end
end

puts Triangle.new(5, 3).get_area_of_triangle
