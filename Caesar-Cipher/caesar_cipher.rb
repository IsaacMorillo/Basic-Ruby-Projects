$letters = ['a', 'b' , 'c' , 'd' , 'e', 'f','g', 'h' , 'i', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x','y', 'z']

puts "Message to encrypt: "
message = gets.chomp
puts "Encryption jump: "
jumpEncryption = gets.chomp.to_i

def convert_string_to_array(string)
  message_Array = string.split('')
  message_Array
end

message_array = convert_string_to_array(message)

def make_change_the_font (char_change, number_jump=0)
  if $letters.include?(char_change)
    index = $letters.index(char_change)
    new_char = $letters[index + number_jump]
    return new_char
  end
  char_change
end


puts "#{make_change_the_font('!', 3)}"


