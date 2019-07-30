class PigLatinizer
   def piglatinize(string)
      string_array = string.split(" ")
      
      piglatinized = string_array.map do |word|
         word_array = word.split("")
         #find the position of the first vowel
         first_vowel_position = word_array.index {|letter| letter.match(/[aeiouAEIOU]/)}
         #the below ternary does this
         # if the first vowel is not in the first position (greater than 0) then the consonant rules need to be applied, else it does have the first position and the vowel rules apply (when vowel's start the word)
         first_vowel_position > 0 ? word[first_vowel_position..word.length] + word[0..(first_vowel_position - 1)] + "ay" : word + "way"
      end
      piglatinized.join(" ")
   end
end