#def initialize
#	i = 0
#	shift = 5
#end

def encrypt (text, shift)

	i = 0
	text = text.split(//)

	text.each do

		t = text[i].ord
		if (t >= 65 && t <= 90) || (t >= 97 && t <= 122)
			text[i] = text[i].ord
			text[i] = (text[i] + shift).chr
		end
		i += 1
	end.join('')
end