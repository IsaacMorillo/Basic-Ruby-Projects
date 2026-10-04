dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


puts "Text to search for: "
message_user = gets.chomp
message_user = message_user.downcase.gsub(/[^a-zA-Z]/, " ")
def convert_string_to_array(string)
  message_Array = string.split(' ')
  message_Array
end

def search_word (dictionary, arr_words)
    words_find = {}
   until  arr_words.length == 0 do
    for i in 0..dictionary.length - 1 do
        if arr_words[0].include?(dictionary[i])
           words_find[dictionary[i]] ||= 0
           words_find[dictionary[i]] += 1
        end
    end
    arr_words.shift
   end
   words_find 
end

message_array = convert_string_to_array(message_user)
puts "#{message_array}"
puts "#{search_word(dictionary, message_array)}"