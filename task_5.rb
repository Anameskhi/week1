NEGATIVE_ONE = -1
THIRTY = 30

require 'date'

class Month
  def initialize(year)
    @year = year
    @months_with_days = get_months_and_date
  end

  def get_months_and_date
    month_with_days = {}
    (1..12).each do |i|
      month_with_days[Date::MONTHNAMES[i].to_s] = Date.new(@year, i, NEGATIVE_ONE).day
    end
    month_with_days
  end

  def get_months_with_thirty_days
    @months_with_days.select { |_month, dayes| dayes == THIRTY }
  end
end

p Month.new(2020).get_months_with_thirty_days
