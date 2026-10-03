letters = ['a', 'b' , 'c' , 'd' , 'e', 'f','g', 'h' , 'i', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x','y', 'z']

puts "Message to encrypt: "
message = gets.chomp


def convert_string_to_array(string)
  message_Array = string.split('')
  message_Array
end

puts "#{convert_string_to_array(message)}"