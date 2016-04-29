def encrypt (text, shift)

	# gets remainder of shift after all full loops through alphabet considered
	shift = (shift % 26)
	
	# counter to move through array
	i = 0

	# splits input text into an array of it's characters
	text = text.split(//)

	# itterates through each character in array
	text.each do

		# assigns value of text[i] to x
		x = text[i].ord

		# checks if x is an upper-case letter
		if (x >= 65 && x <= 90)
			letter = "upcase"

		# checks if x is a lower-case letter
		elsif (x >= 97 && x <= 122)
			letter = "downcase"
		end

		# only accepts letters
		if (letter == "upcase") || (letter == "downcase")
			text[i] = text[i].ord # convert char to ascii value		

			# checks if char will be shifted beyond 'Z' or 'z'
			if (letter == "upcase") && ((text[i] + shift) > 90) || (letter == "downcase") && ((text[i] + shift) > 122)
				# calculates how to get to correct letter without going beyond A-Z/a-z boundaries
				shift = (shift - 26)

			# checks if char will be shifted backwards beyond 'A' or 'a'
			elsif (letter == "upcase") && ((text[i] + shift) < 65) || (letter == "downcase") && ((text[i] + shift) < 97)
				# calculates how to get to correct letter without going beyond A-Z/a-z boundaries
				shift = (shift + 26)
			end	

			# changes ascii value by value of shift and converts back to char
			text[i] = (text[i] + shift).chr
		
		end

		# changes value of i in text[i] for next loop
		i += 1

	end.join('') # converts array back to string
end


# Remove comments below to test this using command line

=begin

puts "Enter text to be encrypted:"
x = gets.chomp
puts "Enter shift value:"
y = gets.chomp.to_i

puts encrypt(x, y)

=end