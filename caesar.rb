def caesar_cipher(string, shift)
	the_alphabet = ("a".."z").to_a
	
	original_string = string.split('')
	coded_string = ''
	original_string.each do |letter|
	if letter == ' ' || letter == '.' || letter == '!'
		coded_string += letter
	elsif letter == letter.upcase
		new_letter = letter.downcase
		upcase_index = the_alphabet.index(new_letter)
		new_upcase_index = (upcase_index + shift) % 26
		coded_string += the_alphabet[new_upcase_index].upcase 		
	else
		index = the_alphabet.index(letter)
		new_index = (index + shift) % 26
		coded_string += the_alphabet[new_index]
		end
	end
		p coded_string

end
caesar_cipher("Nice String!", 42)
