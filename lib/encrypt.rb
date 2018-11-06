require_relative 'enigma'
enigma = Enigma.new
key = Key.new.random_key
date = Offset.new.format_date
new_file = File.new(ARGV[1], "w")

File.foreach(ARGV[0]) do |line|
  new_message = enigma.encrypt(line, key, date)
  new_file.puts(new_message[:encryption])
end
puts "Created: '#{ARGV[1]}' with the key: #{key} and date: #{date}"
new_file.close
