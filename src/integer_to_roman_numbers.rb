def get_roman_num (num)
  if num == nil || num <= 0 || !num.kind_of?(Integer)
    return "please type a number starting from 1"
  end
  roman_numbers = ""
  roman_letters = { 1000 => "M" , 500 => "D" , 100 => "C" , 50 => "L" , 10 => "X" , 5 => "V" , 1 => "I" }
  roman_letters.each do |key, value|
    case num
    when 9
      roman_numbers << "IX"
      num = num - 9
    when 4
      roman_numbers << "IV"
      num = num - 4
    end
    x= num / key
    x.times do
      roman_numbers << value
      num = num - key
    end
  end
  roman_numbers
end
