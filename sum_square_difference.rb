# The sum of the squares of the first ten natural numbers is 1^2 + 2^2 + ... + 10^2 = 385
# The square of the sum of the first ten natural numbers is (1 + 2 + ... + 10)^2 = 552 = 3025
# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.

# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

def sum_of_squares
  sum = 0
  (1..100).each do | num |
    sum += num * num
  end
  return sum
end

def square_of_sum
  sum = 0
  (1..100).each do | num |
    sum += num
  end
  return sum * sum
end

begin_time = Time.now
solution = square_of_sum - sum_of_squares
end_time = Time.now


puts "Solution: #{solution}. Found in #{end_time - begin_time} ms."