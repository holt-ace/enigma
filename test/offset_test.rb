require './test/test_helper'
require './lib/offset'

class OffsetTest < Minitest::Test
  def test_it_exists
    offset = Offset.new
    assert_instance_of Offset, offset
  end
  
  def test_find_last_four_of_date
    offset = Offset.new
    expected = /[0-9]{4}/.match(offset.last_four)
    assert expected
  end

  def test_offset_a
    offset = Offset.new
    expected = /[0-9]{1}/.match(offset.offset_a)
    assert expected
  end

  def test_offset_b
    offset = Offset.new
    expected = /[0-9]{1}/.match(offset.offset_b)
    assert expected
  end

  def test_offset_c
    offset = Offset.new
    expected = /[0-9]{1}/.match(offset.offset_c)
    assert expected
  end

  def test_offset_d
    offset = Offset.new
    expected = /[0-9]{1}/.match(offset.offset_d)
    assert expected
  end
end
