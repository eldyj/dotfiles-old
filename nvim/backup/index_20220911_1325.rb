abc = '1qaz2wsx3edc4rfv5tgb6yhn7ujm8ik9ol0p'
coded_abc = File.read('coded.txt')

def encode_char(char)
  for abc_char in abc
    if char == abc_char
  end
end

puts '1: load password\n2: add password'
puts 'action: '
