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
        edge_cases(index, shift, direction, map_index, letter)
      end
    end.flatten.join
  end

  def edge_cases(index, shift, direction, map_index, letter)
    chars = [*'a'..'z'] << ' '
    if index
      chars.rotate(direction * shift.all_shifts[map_index])[index]
    else
      letter
    end
  end
end
