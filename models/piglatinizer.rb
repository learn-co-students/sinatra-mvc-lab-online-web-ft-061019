class PigLatinizer

    #consonants defined as !vowels
    def consonant?(char)
        !char.match(/[AaEeIiOoUu]/)
    end
    
    #piglatinize takes input string - if 1 word piglatinize_word - if sentence piglatinize_sentence
    def piglatinize(input_str)
        input_str.split(" ").length == 1 ? piglatinize_word(input_str) : piglatinize_sentence(input_str)
    end

    #piglatin rules for words
    def piglatinize_word(word)
        #begins with vowel add -w
        if !consonant?(word[0])
            word = word + "w"
        #begins with 3 consonants transfer 3 consonants to end  
        elsif consonant?(word[0]) && consonant?(word[1]) && consonant?(word[2])
            word = word.slice(3..-1) + word.slice(0..2)
        #begins with 2 consonants transfer 2 consonants to end   
        elsif consonant?(word[0]) && consonant?(word[1])
            word = word.slice(2..-1) + word.slice(0..1)
        #begins with 1 consonant transfer consonant to end
        elsif consonant?(word[0])
            word = word.slice(1..-1) + word.slice(0)
        end
        # +ay
        word << "ay"
    end
    
    #piglatin split sentence , map words?, follow begins with rules, then join words
    def piglatinize_sentence(sentence)
        sentence.split.map {|word| piglatinize_word(word)}.join(" ")
    end        

end