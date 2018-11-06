
require './test/test_helper'
require './lib/key'

class KeyTest < Minitest::Test
  def test_it_exists
    key = Key.new
    assert_instance_of Key, key
  end

  def test_generate_random_key_with_padded_zeroes
    key = Key.new
    assert (0..99_999).member?(key.random_key.to_i)
  end

  def test_given_argument_calculates_correctly
    key = Key.new('02715')

    assert_equal 0o2, key.rotation_a
    assert_equal 27, key.rotation_b
    assert_equal 71, key.rotation_c
    assert_equal 15, key.rotation_d
  end
end
