# Use RSpec to test the following exercise! You may wish to wrap the methods below in a class to help facilitate this.
require 'prime'
# First, implement the is_prime? method below. It should accept a number as an argument and return
# true if the number is prime and false if it is not. A prime number is a number that is only
# divisible by itself and the number 1.


def is_prime?(number)
  if Prime.instance.prime?(number)
    puts true
  else
    puts false
  end
end

# # Second, implement the highest_prime_number_under method below. It should accept a number as
# # an argument and return the highest prime number under that number. For example, the 
# # highest prime number under 10 is 7.

def highest_prime_number_under(number)
  all_numbers = []
  number.times do
    number = number - 1
    all_numbers << number
  end
  all_numbers.each do |one_number|
    if Prime.instance.prime?(one_number)
      puts one_number
      break
    end
  end
end

is_prime?(5)

highest_prime_number_under(10)