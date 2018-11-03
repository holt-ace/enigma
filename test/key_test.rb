require './test/test_helper'
require './lib/key'

class KeyTest < Minitest::Test
  def test_it_exists
    key = Key.new
    assert_instance_of Key, key
  end

  def test_generate_random_key_with_padded_zeroes
    key = Key.new
    expected = (/[0-9]{5}/).match(key.random_key)
    assert expected, key.random_key
  end
end
