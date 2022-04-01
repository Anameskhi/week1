require 'date'

class CountDays
  def initialize(year, month, day)
    @year = year
    @month = month
    @day = day
    validation_dates(@year, @month, @day)
  end

  def count_days
    Date.new(@year, @month, @day).yday
  end

  private

  def validation_dates(year, month, day)
    if Date.valid_date?(year.to_i, month.to_i, day.to_i) == false
      puts "#{year}-#{month}-#{day} date doesn't exist "
      exit 1
    end
  end
end

puts 'please tell us year'
year = gets.chomp
puts 'please tell us number of month'
month = gets.chomp
puts 'please tell us day of month'
day = gets.chomp

p CountDays.new(year, month, day).count_days
