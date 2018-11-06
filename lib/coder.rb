require_relative 'shift'
# this module does my encoding and decoding and mixes in with enigma
module Coder
  def encode(message, shift)
    code(message, shift, 1)
  end

  def decode(ciphertext, shift)
    code(ciphertext, shift, -1)
  end

  def code(message, shift, direction)
    chars = [*'a'..'z'] << ' '
    chunks = message.downcase.scan(/.{1,4}/)
    chunks.map do |chunk|
      chunk.split('').map.with_index do |letter, map_index|
        index = chars.find_index(letter)
        chars.rotate(direction * shift.all_shifts[map_index])[index]
      end
    end.flatten.join
  end
end
