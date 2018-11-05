require_relative './key'
require_relative './offset'
#uses the key and offset objects to calculate total shift
class Shift
  attr_reader :key, :offset
  def initialize(key_string = nil, date_string = nil)
    @key = Key.new(key_string)
    @offset = Offset.new(date_string)
  end

  def shift_a
    @key.rotation_a + @offset.offset_a
  end

  def shift_b
    @key.rotation_b + @offset.offset_b
  end

  def shift_c
    @key.rotation_c + @offset.offset_c
  end

  def shift_d
    @key.rotation_d + @offset.offset_d
  end
end
