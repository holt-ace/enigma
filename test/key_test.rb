require './test/test_helper'
require './lib/key'

class KeyTest < Minitest::Test
  def test_it_exists
    key = Key.new
    assert_instance_of Key, key
  end


  def test_generate_random_key_with_padded_zeroes
    key = Key.new
    expected = /[0-9]{5}/.match(key.random_key)
    assert expected
  end

  def test_rotation_a
    key = Key.new
    expected = /[0-9]{2}/.match(key.rotation_a)
    assert expected
  end

  def test_rotation_b
    key = Key.new
    expected = /[0-9]{2}/.match(key.rotation_b)
    assert expected
  end

  def test_rotation_c
    key = Key.new
    expected = /[0-9]{2}/.match(key.rotation_c)
    assert expected
  end

  def test_rotation_d
    key = Key.new
    expected = /[0-9]{2}/.match(key.rotation_d)
    assert expected
  end

  def test_given_argument_calculates_correctly
    key = Key.new("02715")

    assert_equal "02", key.rotation_a
    assert_equal "27", key.rotation_b
    assert_equal "71", key.rotation_c
    assert_equal "15", key.rotation_d
  end
end
