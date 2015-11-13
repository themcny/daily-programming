def MixUp(string)
	words = string.split(" ")
	new_sentence = []
	words.each do |x|
		word = x.split("")
		first = word[0]
		last = word[word.length-1]
		mid = word.slice(1, word.length-2)
		shuf = mid.shuffle
		half = [first] + shuf
		whole = half + [last]
		new_sentence << whole.join
	end
	return new_sentence.join(" ")
end

p MixUp('hello')
p MixUp('this particular information elucidates something else')

# Figure out how to incorporate punctuation