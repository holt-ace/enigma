require_relative './key'
require_relative './offset'
class Shift
  def initialize
    @key = Key.new
    @offset = Offset.new
  end

  def shift_A
    @key.rotation_A.to_i + @offset.offset_A.to_i
  end

  def shift_B
    @key.rotation_B.to_i + @offset.offset_B.to_i
  end

  def shift_C
    @key.rotation_C.to_i + @offset.offset_C.to_i
  end

  def shift_D
    @key.rotation_D.to_i + @offset.offset_D.to_i
  end


end
