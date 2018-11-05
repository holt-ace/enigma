require_relative './shift'
#turns the information given into workable hashes
class Enigma

  def encrypt(message, key = Key.new, date = Offset.new.format_date)
    shift = Shift.new(key, date)
    encrypted = Hash.new
    #helper method from Coder class that does the encoding?
    #(i'll have to make a Message class that gets the message from message.txt)
    #need to enumerate over the string and change specific indeces
    #use .rotate possibly with indeces?
    #should go here
    encrypted[:encryption] = message; encrypted[:key] = key
    encrypted[:date] = date
    encrypted
  end

  def decrypt(ciphertext, key = Key.new, date = Offset.new.format_date)
    shift = Shift.new(key, date)
    decrypted = Hash.new
    #helper method from Coder class that does the decoding?
    #need to enumerate over the string and change specific indeces
    #use .rotate possibly with indeces?
    #should go here
    decrypted[:decryption] = ciphertext; decrypted[:key] = key
    decrypted[:date] = date
    decrypted
  end
end
