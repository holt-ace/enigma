require './test/test_helper'
require './lib/shift'

class ShiftTest < Minitest::Test
  def test_it_exists
    shift = Shift.new
    assert_instance_of Shift, shift
  end

  def test_calculate_shift_a
    shift = Shift.new

    assert Integer, shift.shift_a
  end

  def test_calculate_shift_b
    shift = Shift.new

    assert Integer, shift.shift_b
  end

  def test_calculate_shift_c
    shift = Shift.new

    assert Integer, shift.shift_c
  end

  def test_calculate_shift_d
    shift = Shift.new

    assert Integer, shift.shift_d
  end
end
