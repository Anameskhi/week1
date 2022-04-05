OPTIMAL = 110

class IdealWeight
  def initialize(name, height)
    @name,@height = name, height
    validate_parameters
  end

  def calculate
    ideal_weight = @height.to_i - OPTIMAL
    if ideal_weight.negative?
      'Your weight is already optimal'
    else
      "#{@name}'s ideal weight is #{ideal_weight}"
    end
  end
  def validate_parameters
    if @height.to_f.zero?
      puts "height mustn't be string or zero"
      exit 1
    end
  end
end

puts "what's your name ?"
name = gets.chomp
puts "what's your height in cm ?"
height = gets.chomp

p IdealWeight.new(name, height).calculate
