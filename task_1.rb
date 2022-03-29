class IdealWeight
  OPTIMAL = 110
  def self.calculate(name, height)
    ideal_weight = height.to_i - OPTIMAL
    if ideal_weight.negative?
      'Your weight is already optimal'
    else
      "#{name}'s ideal weight is #{ideal_weight}"
    end
  end
end

puts "what's your name ?"
name = gets.chomp
puts "what's your height in cm ?"
height = gets.chomp

p IdealWeight.calculate(name, height)