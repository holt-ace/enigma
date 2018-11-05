#this does me encoding and decoding, it will inherit into Enigma
require_relative 'shift'
class Coder
  def initialize(shift)
    @shift = shift
  end

  def encode(message)
    chars = [*"a".."z"] << " "
    chunks = message.downcase.scan(/.{1,4}/)
    encrypted_chunks = chunks.map do |chunk|
      chunk.split("").map.with_index do |letter, i|
        index = chars.find_index(letter)
        if i == 0
          chars.rotate(@shift.shift_a)[index]
        elsif i == 1
          chars.rotate(@shift.shift_b)[index]
        elsif i == 2
          chars.rotate(@shift.shift_c)[index]
        elsif i == 3
          chars.rotate(@shift.shift_d)[index]
        end
      end
    end
    encrypted_chunks.flatten.join
  end

  def decode(message)

  end

end
