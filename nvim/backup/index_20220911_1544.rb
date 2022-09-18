Abc = '1qaz2wsx3edc4rfv5tgb6yhn7ujm8ik9ol0p'
Coded_abc = File.read('coded.txt')

def pass_char(char, action)
  if ARGV[0] == 'encode'
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
        return abc_to[i].upcase
      end
    end
  end
end

def pass_string(str,action)
  result = ""
  for i in 0 .. (str.size - 1)
    result += encode_char(str[i], action)
  end
  return result
end

#Toencode = gets.strip
#puts encode_string(Toencode)
puts ARGV[0
