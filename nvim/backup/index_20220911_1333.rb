Abc = '1qaz2wsx3edc4rfv5tgb6yhn7ujm8ik9ol0p'
Coded_abc = File.read('coded.txt')

def encode_char(char)
  for i in 0 .. (Abc.size - 1)
    if char.downcase == Abc[i]
      if char.downcase == char
        return Coded_abc[i]
      else
        return Coded_abc[i].upcase
      end
    end
  end
end

def encode_string(str)
  result = ""
  for i in 0 .. (str.size - 1)
    result += encode_char(str[i])
  end
  return result
end

#puts '1: load password\n2: add password'
#puts 'action: '
toencode
puts encode_string()
