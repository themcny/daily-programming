def Threes(number)
	while number > 1
		if number%3 == 0
			p number.to_s + " 0"
			number = number/3
		else
			if (number+1)%3 == 0
				p number.to_s + " 1"
				number = (number+1)/3
			elsif (number-1)%3 == 0
				p number.to_s + " -1"
				number = (number-1)/3
			end
		end
	end
	p number.to_s
end

Threes(100)
Threes(31337357)