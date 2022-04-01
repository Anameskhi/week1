class PurchaseAmount
  def initialize
    @total_sum = 0.00
    @new_hash = {}
  end

  def fill_hash(name, price, quantity)
    @new_hash[name] = { 'product_price' => price.to_f, 'product_quantity' => quantity.to_f }
  end

  def display_summary
    chomp_times = 1
    p 'summary'
    @new_hash.each do |key, value|
      p "##{chomp_times} - #{key} : item price is #{value['product_price']}, "
      p "quantity is #{value['product_quantity']}, "
      p "item total price is  #{value['product_price'] * value['product_quantity']} "
      @total_sum += value['product_price'] * value['product_quantity']
      chomp_times += 1
    end
    p "total price is #{@total_sum}"
  end
end
purchase_amount = PurchaseAmount.new

loop do
  puts "plese tell me name of item (if you want to stop shopping please text 'stop')"
  name = gets.chomp
  if name == 'stop'
    purchase_amount.display_summary
    break
  end

  puts 'please tell me price of item'
  price = gets.chomp
  puts 'please tell me quantity of item'
  quantity = gets.chomp
  purchase_amount.fill_hash(name, price, quantity)
end
