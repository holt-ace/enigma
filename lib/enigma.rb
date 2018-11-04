
require_relative './shift'
class Enigma
  def initialize
    @shift = Shift.new
  end

  def encrypt(message, key = @shift.key, date = @shift.offset.format_date)
    #helper method from Coder class that does the encoding if time permits
    encrypted = Hash.new
    em = message.each_char do |char|
      
    end

    encrypted[:encryption] = em
    encrypted[:key] = key
    encrypted[:date] = date
    encrypted
  end

  def decrypt(ciphertext, key = @shift.key, date = @shift.offset.format_date)
    #helper method from Coder class that does the decoding

  end

end
