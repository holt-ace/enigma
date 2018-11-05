require './test/test_helper'
require './lib/coder'
require './lib/shift'

class CoderTest < Minitest::Test
  include Coder

  def test_it_encodes
    shift = Shift.new("02715", "040895")
    assert_equal "keder ohulw", encode("hello world", shift)
  end

  def test_it_decodes
    shift = Shift.new("02715", "040895")
    assert_equal "hello world", decode("keder ohulw", shift)
  end
end
