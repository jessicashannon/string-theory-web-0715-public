require 'pry'

def sort_by_appearance(characters_to_sort, long_text)
  char_array = characters_to_sort.split("")
  char_hash = {}
  char_array.each do |char|
    char_hash[char] = 0
  end
  text_array = long_text.split("")
  text_array.each do |letter|
    if char_hash.key?(letter)
      char_hash[letter] += 1
    end
  end
  sorted_hash = char_hash.sort_by{ |key, value| value } #sort_by returns an array of two element arrays
  sorted_hash.map{|array| array[0]}.join("").reverse
end
