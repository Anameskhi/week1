class PurchaseAmount
  def initialize(name, values)
    @name = name 
    @values = values
    @h = Hash.new{|key,value| key[value]= [] }
  end

  def fill_hash
   
    @h[@name] << @values
    
  end
  @h
end


# puts "plese tell me name of item"
# name = gets.chomp 
# puts "please tell me price of item"
# price = gets.chomp
# puts "please tell me quantity of item"
# quantity = gets.chomp 


p PurchaseAmount.new("apple",[10 , 1.5])