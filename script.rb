def caesar_cipher(str, shift = 1, remove_spaces = false)
    char_array = remove_spaces ? str.delete(' ').chars : str.chars
    new_char_array = char_array.map do |char|
        ascii = char.ord
        if ascii.between?(65, 90) || ascii.between?(97, 122)
            new_ascii = char.ord + shift
            if ascii >= 97 && new_ascii > 122
                new_ascii = (new_ascii % 26) + 97
            elsif ascii <= 90 && new_ascii > 90
                new_ascii = (new_ascii % 26) + 65
            end
        else
            new_ascii = char.ord
        end
        new_ascii.chr
    end
    new_str = new_char_array.join
    new_str
end