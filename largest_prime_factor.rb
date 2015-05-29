# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

def is_prime? num
	test_value = 2
	while test_value < num && test_value != num do
		if num % test_value == 0
			return false
		end
		test_value += 1
	end
	return true
end

dividend = 600851475143
quotient = dividend
divisor = 2

# until is_prime? quotient
# 	quotient = dividend / divisor
# 	divisor += 1
# end
puts is_prime? 100141912523

puts "Solution: #{quotient}"
