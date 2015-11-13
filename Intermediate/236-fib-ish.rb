# Challenge: 
# The Fibonacci Sequence[1] is a famous integer series in the field of mathematics. The sequence is recursively defined for n > 1 by the formula f(n) = f(n-1) + f(n-2). In plain english, each term in the sequence is found by adding the previous two terms together. Given the starting values of f(0) = 0 and f(1) = 1 the first ten terms of the sequence are:
# 0 1 1 2 3 5 8 13 21 34
# We will notice however that some numbers are left out of the sequence and don't get any of the fame, 9 is an example. However, if we were to start the sequence with a different value for f(1) we will generate a new sequence of numbers. Here is the series for f(1) = 3:
# 0 3 3 6 9 15 24 39 102 165
# We now have a sequence that contains the number 9. What joy!
# Today you will write a program that will find the lowest positive integer for f(1) that will generate a Fibonacci-ish sequence containing the desired integer (let's call it x).

def fib(n)
  return 0 if n == 0
  return 1 if n <= 2

  fib(n - 1) + fib(n - 2)
end

p fib(0)
p fib(1)
p fib(2)
p fib(9)

def fib_ish(n, mul=1)
	x = 0
	while (mul*fib(x)) <= n
		if (mul*fib(x)) == n
			return mul
		end
		x += 1
	end
	return fib_ish(n, mul+1)
end

p fib_ish(0)
p fib_ish(9)
p fib_ish(578)
# p fib_ish(123456789)