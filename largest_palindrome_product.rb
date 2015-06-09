# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product of two 3-digit numbers.

class String
  def first
    self[0]
  end
  def last
    self[self.length - 1]
  end
  def cut_first_and_last
    self[1...self.length - 1]
  end
end

def is_palindrome? num
  num_string = num.to_s
  num_length = num_string.length
  while (num_string)
    first = num_string.first
    last = num_string.last
    if first.eql? last
      num_string = num_string.cut_first_and_last
    else
      return false
    end
  end
  true
end

LARGEST_THREE_DIGIT_NUM = 999

# This method is going to reduce one number all the way to zero first,
# continously multiplying it with the other number until the product
# is a palindrome.
def one_number_reduce
  reduce_number_one = reduce_number_two = 999
  
end

# This method is going to alternate reducing one number from each,
# until the product is a palindrome.
def two_number_reduce

end