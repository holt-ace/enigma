require './test/test_helper'
require './lib/enigma'
require './lib/shift'

class EnigmaTest < Minitest::Test
  def setup
    @shift = Shift.new
  end

  def test_it_exists
    enigma = Enigma.new
    assert_instance_of Enigma, enigma
  end

  def test_encrypt
    enigma = Enigma.new
    encrypt = enigma.encrypt("hello world", "02715", "040895")
    assert_instance_of Hash, encrypt
    assert_equal 3, encrypt.length
    assert encrypt.member?(:encryption)
    expected = { encryption: 'keder ohulw', key: "02715", date: "040895" }
    actual = encrypt
    assert_equal expected, actual
  end

  def test_decrypt
    skip
    enigma = Enigma.new
    key = @shift.key
    date = @shift.offset.date
    encrypt = enigma.encrypt('hello world', key, date)
    decrypt = enigma.decrypt(encrypt[:encryption], key, date)
    assert_instance_of Hash, decrypt
    assert_equal 3, decrypt.length
    assert decrypt.member?(:decryption)
    expected = { decryption: 'hello world', key: key, date: date }
    actual = decrypt
    assert_equal expected, actual
  end
end
