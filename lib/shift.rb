require_relative './key'
require_relative './offset'
#uses the key and offset objects to calculate total shift
class Shift
  attr_reader :key, :offset
  def initialize
    @key = Key.new
    @offset = Offset.new
  end

  def shift_a
    @key.rotation_a.to_i + @offset.offset_a.to_i
  end

  def shift_b
    @key.rotation_b.to_i + @offset.offset_b.to_i
  end

  def shift_c
    @key.rotation_c.to_i + @offset.offset_c.to_i
  end

  def shift_d
    @key.rotation_d.to_i + @offset.offset_d.to_i
  end
end
