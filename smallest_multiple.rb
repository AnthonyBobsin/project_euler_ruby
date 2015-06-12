# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

def smallest_multiple
  start_num = 20
  final_num = false
  while !final_num
    is_divisible = true
    (1...20).each do | num |
      remainder = start_num % num
      if remainder != 0
        is_divisible = false
        break
      end
    end
    is_divisible ? final_num = start_num : start_num += 20
  end
  return final_num
end

begin_time = Time.now
solution = smallest_multiple
end_time = Time.now

puts "Solution: #{solution}. Found in #{end_time - begin_time} ms."