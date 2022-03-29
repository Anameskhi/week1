class Step
  HUNDRED = 100
  TEN = 10
  FIVE = 5
  def self.multiply_by_five
    (TEN..HUNDRED).step(FIVE).to_a
  end
end

p Step.multiply_by_five
