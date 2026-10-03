$letters = ['a', 'b' , 'c' , 'd' , 'e', 'f','g', 'h' , 'i', 'j','k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x','y', 'z']


puts "Message to encrypt: "
message = gets.chomp
puts "Encryption jump: "
jump_encryption = gets.chomp.to_i


def convert_string_to_array(string)
  message_Array = string.split('')
  message_Array
end

message_array = convert_string_to_array(message)

def make_change_the_font (char_change, number_jump=0)
  if $letters.include?(char_change)
    index = $letters.index(char_change)
    new_index = index + number_jump
    if new_index > $letters.length - 1
      new_index -= $letters.length 
    end
    new_char = $letters[new_index]
    return new_char
  end
  char_change
end

def apply_caesar_cipher (array, number_jump=0)
  for i in 0..array.length-1
    array[i] = make_change_the_font(array[i], number_jump)
  end
  array
end

def convert_string_to_array (array)
  newString = array.join('')
  newString
end


array_cipher = apply_caesar_cipher(message_array, jump_encryption)
message_cipher = convert_string_to_array(array_cipher)
puts "Message cipher: "
puts "#{message_cipher}"


