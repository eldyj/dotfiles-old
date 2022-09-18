Abc = '1qaz2wsx3edc4rfv5tgb6yhn7ujm8ik9ol0p' + '!QAZ@WSX#EDC$RFV%TGB^YHN&UJM*IKM(OLP)'
Coded_abc = File.read('coded.txt')

def pass_char(char)
  if ARGV[0] == 'encode'
    abc_from = Abc
    abc_to = Coded_abc
  else
    abc_from = Coded_abc
    abc_to = Abc
  end
  for i in 0 .. (abc_from.size - 1)
    if char.downcase == abc_from[i]
      return abc_to[i]
    end
  end
end

def pass_string()
  result = ""
  for i in 0 .. (ARGV[1].size - 1)
    result += pass_char(ARGV[1][i])
  end
  return result
end

puts pass_string()
