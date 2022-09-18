Abc = '1qaz2wsx3edc4rfv5tgb6yhn7ujm8ik9ol0p'
Coded_abc = File.read('coded.txt')

def encode_char(char)
  for i in 0 .. Abc.size
    if char == Abc[i]
      if char.down
      return Coded_abc[i]
    end
  end
end

#puts '1: load password\n2: add password'
#puts 'action: '
puts encode_char('t')
