def caesar_cipher(string, shift)
	the_alphabet = ("a".."z").to_a
	
	original_string = string.split('')
	p original_string
	coded_string = ''
	original_string.each do |letter| 
		if the_alphabet.index(letter) == nil
			coded_string += letter
		elsif letter == letter.upcase
			upcase_index = the_alphabet.index(letter)
			new_upcase_index = (up_index + shift) % 26
			coded_string += the_alphabet[new_up_index].upcase
		else
		index = the_alphabet.index(letter)
		new_index = (index + shift) % 26
		coded_string += the_alphabet[new_index]
		end
	end
		p coded_string

end
caesar_cipher("What a string!", 5)
