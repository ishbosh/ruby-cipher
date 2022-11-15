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

# Test Case #
puts "- - Test Message - -"
original_message = "One glance at a book and you hear the voice of another person, perhaps someone dead for 1,000 years. To read is to voyage through time. -Carl Sagan"
puts "Original Message: #{original_message}"

shift_value = rand(1..50)
puts "Shift Value: #{shift_value}"
encrypted_message = caesar_cipher(original_message, shift_value)
puts "Encrypted Message: #{encrypted_message}"

remove_spaces = true
encrypted_no_spaces = caesar_cipher(original_message, shift_value, remove_spaces)
puts "Encrypted With Spaces Removed: #{encrypted_no_spaces}"
puts "- - End Test - -"

# Enter Custom Message #
print "\nEnter new message to encrypt: "
new_message = gets.chomp
print "Enter encryption shift factor: "
shift_factor = gets.chomp.to_i
answer = nil
until answer == "Y" || answer == "N"
    print "\nRemove White Space? (Y/N)  "
    answer = gets.chomp.upcase
end
whitespace = answer == "Y" ? true : false

print "\nYour Encrypted Message: "
puts caesar_cipher(new_message, shift_factor, whitespace)