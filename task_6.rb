HUNDRED = 100
TEN = 10
FIVE = 5

class Step
  def initialize; end

  def multiply_by_five
    (TEN..HUNDRED).step(FIVE).to_a
  end
end

p Step.new.multiply_by_five
