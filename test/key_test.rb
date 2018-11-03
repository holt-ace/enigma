
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

  def test_rotation_A
    key = Key.new
    expected = /[0-9]{2}/.match(key.rotation_A)
    assert expected
  end

  def test_rotation_B
    key = Key.new
    expected = /[0-9]{2}/.match(key.rotation_B)
    assert expected
  end

  def test_rotation_C
    key = Key.new
    expected = /[0-9]{2}/.match(key.rotation_C)
    assert expected
  end

  def test_rotation_D
    key = Key.new
    expected = /[0-9]{2}/.match(key.rotation_D)
    assert expected
  end
end
