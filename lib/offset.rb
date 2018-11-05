#calculates offset based on today's date and stores the date in correct format
class Offset
  attr_reader :format_date
  def initialize
    @format_date = Date.today.strftime("%m%d%y")
  end

  def last_four
    numeric = @format_date.to_i
    square = numeric**numeric
    square.to_s[6..10]
  end

  def offset_a
    last_four[0]
  end

  def offset_b
    last_four[1]
  end

  def offset_c
    last_four[2]
  end

  def offset_d
    last_four[3]
  end
end
