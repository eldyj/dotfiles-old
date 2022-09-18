Abc = '1qaz2wsx3edc4rfv5tgb6yhn7ujm8ik9ol0p'
Coded_abc = File.read('coded.txt')

def pass_char(char, action)
  if action == 'encode'
    abc_from = Abc
    abc_to = Coded_abc
  else
    abc_from = Coded_abc
    abc_to = Abc
  end
  for i in 0 .. (abc_from.size - 1)
    if char.downcase == abc_from[i]
      if char.downcase == char
        return abc_to[i]
      else
        return Coabc[i].upcase
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
