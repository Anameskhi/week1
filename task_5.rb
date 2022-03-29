# frozen_string_literal: true

require 'date'

class Month
  NEGATIVE_ONE = -1
  THIRTY = 30

  def initialize(year)
    @year = year
    @months_with_days = months_and_date
  end

  def months_and_date
    month_with_days = {}
    (1..12).each do |i|
      month_with_days[Date::MONTHNAMES[i].to_s] = Date.new(@year, i, NEGATIVE_ONE).day
    end
    month_with_days
  end

  def include_thirty_day
    @months_with_days.select { |_month, dayes| dayes == THIRTY }
  end
end

p Month.new(2020).include_thirty_day
