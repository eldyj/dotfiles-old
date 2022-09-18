Abc = '1qaz2wsx3edc4rfv5tgb6yhn7ujm8ik9ol0p'
Coded_abc = File.read('coded.txt')

def pass_char(char, action)
  if action == 'encode'
    abc = Abc
    coded_abc = Coded_abc
  else
    abc = Coded_abc
    abc2 = Abc
  end
  for i in 0 .. (abc.size - 1)
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
Toencode = gets.strip
puts encode_string(Toencode)
