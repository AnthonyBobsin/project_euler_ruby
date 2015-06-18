# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
# What is the 10 001st prime number?

def is_prime? num
  is_prime = true
  temp_num = 3
  return false if num % 2 == 0
  while (temp_num < (num / 2)) && is_prime
    if num % temp_num == 0
      is_prime = false
    end
    temp_num += 1
  end
  is_prime
end

def find_prime_number n
  prime_num = 2
  prime_increment = 1
  iteration_num = 3
  while prime_increment != n
    if is_prime? iteration_num
      prime_num = iteration_num
      prime_increment += 1
    end
    iteration_num += 2
  end
  prime_num
end

begin_time = Time.now
solution = find_prime_number 10001
end_time = Time.now

puts "Solution: #{solution}. Found in #{end_time - begin_time}ms"