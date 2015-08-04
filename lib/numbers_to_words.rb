require('pry')

class Fixnum
  define_method(:numbers_to_words) do
    ones_digits = {"1" => "one", "2" => "two", "3" => "three", "4" => "four", "5" => "five", "6" => "six", "7" => "seven", "8"=> "eight", "9" => "nine"}
    tens_digits = {"2" => "twenty", "3" => "thirty", "4" => "forty", "5" => "fifty", "6" => "sixty", "7" => "seventy", "8"=> "eighty", "9"=>"ninety"}
    number_string = self.to_s() 
    digit_array = number_string.split("")

    final_number = []

    if digit_array.length() == 2
      digit_array.each_with_index() do |digit, index|

        if index == 0
          tens_written = tens_digits.fetch(digit)
          final_number.push(tens_written)
        else
          ones_written = ones_digits.fetch(digit)
          final_number.push(ones_written)
        end

      end
      final_number.join("")
    else
      ones_digits.fetch(number_string)
    end
  end
end
