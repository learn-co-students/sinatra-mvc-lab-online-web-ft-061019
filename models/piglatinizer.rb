class PigLatinizer
  
  def piglatinize(string)
    string_array = string.split(" ")
      
      piglatinized = string_array.map do |word|
         array = word.split("")
         first_vowel_position = array.index {|letter| letter.match(/[aeiouAEIOU]/)}
         first_vowel_position > 0 ? word[first_vowel_position..word.length] + word[0..(first_vowel_position - 1)] + "ay" : word + "way"
      end
      piglatinized.join(" ")
    end 
end 