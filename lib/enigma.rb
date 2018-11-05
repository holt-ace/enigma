require_relative 'shift'
require_relative 'coder'
#turns the information given into workable hashes
class Enigma
  include Coder

  def encrypt(message, key = Key.new, date = Offset.new.format_date)
    shift = Shift.new(key, date)
    encrypted = Hash.new
    em = encode(message, shift)
    encrypted[:encryption] = em; encrypted[:key] = key
    encrypted[:date] = date
    encrypted
  end

  def decrypt(ciphertext, key = Key.new, date = Offset.new.format_date)
    shift = Shift.new(key, date)
    decrypted = Hash.new
    dm = decode(message, shift)
    decrypted[:decryption] = dm; decrypted[:key] = key
    decrypted[:date] = date
    decrypted
  end
end
