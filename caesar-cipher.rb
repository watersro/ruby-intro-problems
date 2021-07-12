def caesar_cipher(string, number)
    arr1 = string.split("")
    alphabet = ("a".."z").to_a
    cipherKey = alphabet.rotate(number)
    cipher = alphabet.zip(cipherKey).to_h
    arr1.map! do |letter|
        if (!(letter.match?(/\A[a-zA-Z]*\z/)))
            letter = letter
        elsif (letter === letter.upcase)
            letter.downcase!
            letter.gsub(letter, cipher[letter]).upcase!    
        else 
            letter.gsub(letter, cipher[letter])
        end
    end
    puts arr1.join
end




caesar_cipher("aaa! bbb? wxyz", -5)

