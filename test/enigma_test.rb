require './test/test_helper'
require './lib/enigma'

class EnigmaTest < Minitest::Test


  def test_it_exists
    enigma = Enigma.new
    assert_instance_of Enigma, enigma
  end

  def test_encrypt
    enigma = Enigma.new
    encrypt = enigma.encrypt('hello world', "02715", "040895")
    expected = { encryption: 'keder ohulw', key: "02715", date: "040895" }
    actual = encrypt
    assert_equal expected, actual
  end

  def test_decrypt
    enigma = Enigma.new
    decrypt = enigma.decrypt('keder ohulw', "02715", "040895")
    expected = { decryption: 'hello world', key: "02715", date: "040895" }
    actual = decrypt
    assert_equal expected, actual
  end
end
