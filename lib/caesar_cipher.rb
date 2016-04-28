#def initialize
#	i = 0
#	shift = 5
#end

def encrypt (text, shift)

	i = 0
	text = text.split(//)

	text.each do

		t = text[i].ord
		if (t >= 65 && t <= 90)
			letter = "upcase"
		elsif (t >= 97 && t <= 122)
			letter = "downcase"
		end

		if (letter == "upcase") || (letter == "downcase") # check if character is a letter
			text[i] = text[i].ord # convert char to ascii value
			

			if (letter == "upcase") && ((text[i] + shift) > 90) || (letter == "downcase") && ((text[i] + shift) > 122) # check shift keeps char within case range
				shift = (shift % 26) - 26 # find remainder of shift after each full loop through alphabet
			end
			

			text[i] = (text[i] + shift).chr # change ascii value, change back to char
		end
		i += 1
	end.join('')
end

=begin

puts "Enter text to be encrypted:"
x = gets.chomp
puts "Enter shift value:"
y = gets.chomp.to_i

puts encrypt(x, y)

=end