def NewWord(string)
	#check to make sure that the input is made up of only C's and V's
	#for every C put a random consonant, for every V put a random vowel
	#if capitalized in the input should also be capitalized in the output
	consonants = ['q','w','r','t','y','p','s','d','f','g','h','j','k','l','z','x','c','v','b','n','m']
	vowels = ['a','e','i','o','u']
	new_array = []
	array = string.split("")
	array.each do |x|
		if x == "C"
			new_array << consonants[rand(consonants.length)].upcase
		elsif x == "c"
			new_array << consonants[rand(consonants.length)]
		elsif x == "V"
			new_array << vowels[rand(vowels.length)].upcase
		elsif x == "v"
			new_array << vowels[rand(vowels.length)]
		else
			raise ArgumentError
		end
	end
	return new_array
end

p NewWord('cv')
p NewWord('cvccCccVvcvc')