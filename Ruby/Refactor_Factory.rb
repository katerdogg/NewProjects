$VERBOSE = nil    # We'll explain this at the end of the lesson.
require 'prime'   # This is a module. We'll cover these soon!

def first_n_primes(n)

  # Used to be:
    # unless n.is_a? Integer
    # return "n must be an integer."
  # end
  return "n must be an integer" unless n.is_a? Integer

  # Used to be:
  # if n <= 0
    # return "n must be greater than 0."
  # end
  return "n must be greater than 0." if n <= 0
  
  # Used to be: prime_array = [] if prime_array.nil?
  prime_array ||= []
  
  prime = Prime.new
  # Used to be:
    # for num in (1..n)
    # prime_array.push(prime.next)
  # end
  n.times {prime_array << (prime.next)}

  # Used to be: 
  # return prime_array
  prime_array

end

first_n_primes(10)