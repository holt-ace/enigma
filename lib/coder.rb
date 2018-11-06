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
    chunks = message.downcase.scan(/.{1,4}/)
    chunks.map do |chunk|
      chunk.split('').map.with_index do |letter, map_index|
        rotation = direction * shift.all_shifts[map_index]
        code_letter(rotation, letter)
      end
    end.flatten.join
  end

  def code_letter(rotation, letter)
    chars = [*'a'..'z'] << ' '
    index = chars.find_index(letter)
    return letter unless index
    chars.rotate(rotation)[index]
  end
end
