dict = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


def substrings(words, dictionary)
    wordsFound = Hash.new(0)
    words.downcase!
    cleanString = words.gsub(/[^a-zA-z\s]/, "")
    wordCollection = cleanString.split(" ")
    wordCollection.each do |word|
        dictionary.each do |item|
            if item === word
                wordsFound[word] += 1
            end
        end
    end
    puts wordsFound
end

substrings("Below HOWDY Partner Horn it it it don hello", dict)