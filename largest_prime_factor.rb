# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

def prime_factors num
	factors = []
	test_value = 2
	while num > 1 do
		while num % test_value == 0 do
			factors.push num
			num = num / test_value
		end
		test_value += 1
	end
	return factors
end

prime_factors = prime_factors 600851475143
prime_factors.sort!

puts prime_factors