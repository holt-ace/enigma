require 'date'
# calculates offset based on today's date and stores the date in correct format
class Offset
  attr_reader :format_date
  def initialize(date_string = nil)
    @format_date = if date_string.nil?
                     today_formatted
                   else
                     date_string
                   end

  end

  def today_formatted
    Date.today.strftime('%m%d%y')
  end

  def last_four
    numeric = @format_date.to_i
    square = numeric**2
    square.to_s[-4..-1]
  end

  def offset_a
    last_four[0].to_i
  end

  def offset_b
    last_four[1].to_i
  end

  def offset_c
    last_four[2].to_i
  end

  def offset_d
    last_four[3].to_i
  end
end
