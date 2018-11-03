require './test/test_helper'
require './lib/offset'

class OffsetTest < Minitest::Test
  def test_it_exists
    offset = Offset.new
    assert_instance_of Offset, offset
  end

  def test_date_is_today
    offset = Offset.new
    assert_equal Date.today, offset.date
  end

  def test_find_last_four_of_date
    offset = Offset.new
    expected = /[0-9]{4}/.match(offset.last_four)
    assert expected
  end

  def test_offset_A
    offset = Offset.new
    expected = /[0-9]{1}/.match(offset.offset_A)
    assert expected
  end

  def test_offset_B
    offset = Offset.new
    expected = /[0-9]{1}/.match(offset.offset_B)
    assert expected

  end

  def test_offset_C
    offset = Offset.new
    expected = /[0-9]{1}/.match(offset.offset_C)
    assert expected

  end

  def test_offset_D
    offset = Offset.new
    expected = /[0-9]{1}/.match(offset.offset_D)
    assert expected

  end
end
