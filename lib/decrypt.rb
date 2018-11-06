
require_relative 'enigma'
enigma = Enigma.new
key = ARGV[2]
date = ARGV[3]
new_file = File.new(ARGV[1], 'w')

File.foreach(ARGV[0]) do |line|
  new_message = enigma.decrypt(line, key, date)
  new_file.puts(new_message[:decryption])
end
puts "Created '#{ARGV[1]}' with the key #{key} and date #{date}"
new_file.close
