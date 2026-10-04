dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


puts "Text to search for: "
message_user = gets.chomp

def convert_string_to_array(string)
  message_Array = string.split(' ')
  message_Array
end

puts "#{convert_string_to_array(message_user)}"