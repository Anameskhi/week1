require 'date'

class CountDays
  def initialize(year, month, day)
    @year = year.to_f
    @month = month.to_f
    @day = day.to_f
  end

  def count_days
    Date.new(@year, @month, @day).yday
  end
end

puts 'please tell us year'
year = gets.chomp
puts 'please tell us number of month'
month = gets.chomp
puts 'please tell us day of month'
day = gets.chomp

p CountDays.new(year, month, day).count_days
