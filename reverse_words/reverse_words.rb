message = 'find! you will pain only go, you recordings security the into if'

# Not in place. Creates a copy

# def reverse_words(message)
#   words = message.split(" ")
#   reversed = []
#   index = -1
#   until index == (-words.size - 1) do
#     reversed << words[index]
#     index -= 1
#   end
#   reversed.join(" ")
# end


# Reverse words in place

def reverse_words(message)
  reverse_characters(message, 0, message.length-1)
  word_start_index = 0
  message.each_char.with_index do |char, index|
    if char == " "
      word_end_index = index - 1
      reverse_characters(message, word_start_index, word_end_index)
      word_start_index = index + 1
    elsif index == message.length-1
      word_end_index = message.length-1
      reverse_characters(message, word_start_index, word_end_index)
    end
  end
  message
end

def reverse_characters(message, front_index, back_index)
  while front_index < back_index do
    back_ltr = message[back_index]
    message[back_index] = message[front_index]
    message[front_index] = back_ltr
    front_index += 1
    back_index -= 1
  end
end

# p reverse_characters(message, 0, message.length-1)
p reverse_words(message)
