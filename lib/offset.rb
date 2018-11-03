class Offset
  attr_reader :date
  def initialize
    @date = Date.today
  end

  def last_four
    numeric = @date.to_time.to_i
    square = numeric**2
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
