def substrings(string, dictionary)
    calc =[]
    dictionary.each do |dictionary_word|
        string.downcase.split.each do |string_word|
            calc << dictionary_word if string_word.include?(dictionary_word)
        end
    end
    calc.reduce(Hash.new(0)) do |acc, word|
        acc[word] += 1
        acc
    end
end

p substrings("Howdy partner, sit down! How's it going?", ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"])
