require_relative 'shift'
require_relative 'coder'
# turns the information given into workable hashes
class Enigma
  include Coder

  def encrypt(message, key = Key.new, date = Offset.new.format_date)
    shift = Shift.new(key, date)
    em = encode(message, shift)
    { encryption: em, key: key, date: date }
  end

  def decrypt(ciphertext, key = Key.new, date = Offset.new.format_date)
    shift = Shift.new(key, date)
    dm = decode(ciphertext, shift)
    { decryption: dm, key: key, date: date }
  end
end
