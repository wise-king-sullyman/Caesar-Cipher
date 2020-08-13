def caesar_cipher(input, shifter) 
    lowercase_letters = ('a'..'z').to_a
    uppercase_letters = ('A'..'Z').to_a

    ciphered_array = input.split("").map do |char|
        lower_index = lowercase_letters.index(char)
        upper_index = uppercase_letters.index(char)

        if lower_index
            char = lowercase_letters[(lower_index+shifter) % 26]
        elsif upper_index
            char = uppercase_letters[(upper_index+shifter) % 26]
        else char = char
        end
    end

    p ciphered_array.join("")
end

caesar_cipher("What a string!", 5)