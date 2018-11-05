require './test/test_helper'
require './lib/coder'
require './lib/shift'

class CoderTest < Minitest::Test
  def test_it_exists
    shift = Shift.new("02715", "040895")
    coder = Coder.new(shift)
    assert_instance_of Coder, coder
  end

  def test_it_encodes
    shift = Shift.new("02715", "040895")
    coder = Coder.new(shift)
    assert_equal "keder ohulw", coder.encode("hello world")
  end

  def test_it_decodes
    shift = Shift.new("02715", "040895")
    coder = Coder.new(shift)
    assert_equal "hello world", coder.decode("keder ohulw")
  end
end
