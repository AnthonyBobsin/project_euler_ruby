# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
# What is the 10 001st prime number?

prime_value = 10001

def is_prime? num
  is_prime = true
  temp_num = 2
  while temp_num < num && is_prime
    if num % temp_num == 0
      is_prime = false
    end
    temp_num += 1
  end
  is_prime
end

