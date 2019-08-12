class PigLatinizer

   def piglatinize(phrase)
    vowels = ['a','e','i','o','u']
    original = phrase.split
    completed_phrase = []
    original.each do |word|
    x = []
    letters = word.split("")
    if vowels.include?(letters.first.downcase)
        x << 'w'
    end
    while !vowels.include?(letters.first.downcase)
          x << letters.shift
    end
    x << 'ay'
    completed_phrase << letters.join + x.join
    end
    completed_phrase.join(" ")
    end

  end 
