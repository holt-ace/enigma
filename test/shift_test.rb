
require './test/test_helper'
require './lib/shift'

class ShiftTest < Minitest::Test
  def test_it_exists
    shift = Shift.new
    assert_instance_of Shift, shift
  end

  def test_calculate_shift_A
    shift = Shift.new

    assert Integer, shift.shift_A
  end

  def test_calculate_shift_B
    shift = Shift.new

    assert Integer, shift.shift_B
  end

  def test_calculate_shift_C
    shift = Shift.new

    assert Integer, shift.shift_C
  end

  def test_calculate_shift_D
    shift = Shift.new

    assert Integer, shift.shift_D
  end
end
