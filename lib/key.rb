class Key
  attr_reader :random_key
  def initialize
    @random_key = rand(5 ** 6).to_s.rjust(5, '0')
  end

  def rotation_A
    "#{@random_key[0]}#{@random_key[1].to_i}"
  end

  def rotation_B
    "#{@random_key[1]}#{@random_key[2].to_i}"
  end

  def rotation_C
    "#{@random_key[2]}#{@random_key[3].to_i}"
  end

  def rotation_D
    "#{@random_key[3]}#{@random_key[4].to_i}"
  end

end
