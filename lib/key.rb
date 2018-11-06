# makes a random key and calculates rotation based on that key
class Key
  attr_reader :random_key
  
  def initialize(key_string = nil)
    @random_key = if key_string.nil?
                    generate_key
                  else
                    key_string
                  end
  end

  def generate_key
    rand(0..99_999).to_s.rjust(5, '0')
  end

  def rotation_a
    "#{@random_key[0]}#{@random_key[1]}".to_i
  end

  def rotation_b
    "#{@random_key[1]}#{@random_key[2]}".to_i
  end

  def rotation_c
    "#{@random_key[2]}#{@random_key[3]}".to_i
  end

  def rotation_d
    "#{@random_key[3]}#{@random_key[4]}".to_i
  end
end
