abc = '1qaz2wsx3edc4rfv5tgb6yhn7ujm8ik9ol0p'
coded_abc = File.read('coded.txt')

def encode_char(char)
  for i in abc
    if char == abc[i]
      return coded_abc[i]
    end
  end
end

#puts '1: load password\n2: add password'
#puts 'action: '
puts encd
