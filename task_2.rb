class Triangle
  def self.area_of_triangle(a, h)
    area = a.to_f * h.to_f * 1 / 2
    "triangle area is #{area} "
  end
end

p Triangle.area_of_triangle(5, 3)