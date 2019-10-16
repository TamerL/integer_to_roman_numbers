def get_roman_num (num)
  if num == nil || num <= 0 || !num.kind_of?(Integer)
    return "please type a number starting from 1"
  end
  roman_numbers = ""
  roman_letters = { 1 => "I" , 5 => "V" , 10 => "X" , 50 => "L" , 100 => "C" , 500 => "D" , 1000 => "M" }
  if num / 1000 > 0
    multiples_of_1000 = num / 1000
    multiples_of_1000.times do
      roman_numbers << roman_letters[1000]
    end
    num = num - multiples_of_1000 * 1000
  end
  if num / 500 > 0
    multiples_of_500 = num / 500
    multiples_of_500.times do
      roman_numbers << roman_letters[500]
    end
    num = num - multiples_of_500 * 500
  end
  if num / 100 > 0
    multiples_of_100 = num / 100
    multiples_of_100.times do
      roman_numbers << roman_letters[100]
    end
    num = num - multiples_of_100 * 100
  end
  if num / 50 > 0
    multiples_of_50 = num / 50
    multiples_of_50.times do
      roman_numbers << roman_letters[50]
    end
    num = num - multiples_of_50 * 50
  end
  if num / 10 > 0
    multiples_of_10 = num / 10
    multiples_of_10.times do
      roman_numbers << roman_letters[10]
    end
    num = num - multiples_of_10 * 10
  end
  if num == 9
    roman_numbers << "XI"
    num = num - 9
  end
  if num / 5 > 0
    multiples_of_5 = num / 5
    multiples_of_5.times do
      roman_numbers << roman_letters[5]
    end
    num = num - multiples_of_5 * 5
  end
  if num == 4
    roman_numbers << "VI"
    num = num - 4
  end
  if num / 1 > 0
    multiples_of_1 = num / 1
    multiples_of_1.times do
      roman_numbers << roman_letters[1]
    end
    num = num - multiples_of_1 * 1
  end
  roman_numbers
end
