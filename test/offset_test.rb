
require './test/test_helper'
require './lib/offset'

class OffsetTest < Minitest::Test
  def test_it_exists
    offset = Offset.new
    assert_instance_of Offset, offset
  end

  def test_format_date_correctly
    offset = Offset.new
    assert_equal 6, offset.format_date.length
  end

  def test_find_last_four_of_today
    offset = Offset.new
    expected = /[0-9]{4}/.match(offset.last_four)
    assert expected
  end

  def test_calculates_correctly_given_date
    offset = Offset.new('040895')

    assert_equal 1, offset.offset_a
    assert_equal 0, offset.offset_b
    assert_equal 2, offset.offset_c
    assert_equal 5, offset.offset_d
  end
end
