require_relative 'shift'
# this module does my encoding and decoding and mixes in with enigma
module Coder
  def encode(message, shift)
    chars = [*'a'..'z'] << ' '
    chunks = message.downcase.scan(/.{1,4}/)
    encrypted_chunks = chunks.map do |chunk|
      chunk.split('').map.with_index do |letter, map_index|
        index = chars.find_index(letter)
        if map_index == 0
          chars.rotate(shift.shift_a)[index]
        elsif map_index == 1
          chars.rotate(shift.shift_b)[index]
        elsif map_index == 2
          chars.rotate(shift.shift_c)[index]
        elsif map_index == 3
          chars.rotate(shift.shift_d)[index]
        end
      end
    end
    encrypted_chunks.flatten.join
  end

  def decode(ciphertext, shift)
    chars = [*'a'..'z'] << ' '
    chunks = ciphertext.downcase.scan(/.{1,4}/)
    decrypted_chunks = chunks.map do |chunk|
      chunk.split('').map.with_index do |letter, map_index|
        index = chars.find_index(letter)
        if map_index == 0
          chars.rotate(-shift.shift_a)[index]
        elsif map_index == 1
          chars.rotate(-shift.shift_b)[index]
        elsif map_index == 2
          chars.rotate(-shift.shift_c)[index]
        elsif map_index == 3
          chars.rotate(-shift.shift_d)[index]
        end
      end
    end
    decrypted_chunks.flatten.join
  end
end
