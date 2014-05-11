# U3.W8-9: 


# I worked on this challenge with Danielle Adams.

# 2. Pseudocode
# Create empty array 'fizzbuzzed'
# 	Populate 'fizzbuzzed' with argument 'array'
# Look at each 'fizzbuzzed' element
# 	If multiple of 5 and 3, then change to 'FizzBuzz'
# 	If multiple of 5, then change to 'Buzz'
# 	If multiple of 3, then change to 'Fizz'
# 	If not multiple of 3 or 5, keep value
# Return array 'fizzbuzzed'

# 3. Initial Solution

# def super_fizzbuzz(array)
# 	fizzbuzzed = Array.new
# 	array.each { |x| fizzbuzzed.push(x) }
# 	fizzbuzzed.map do |x|
# 		if (x % 3 == 0) && (x % 5 == 0)
# 			x = 'FizzBuzz'
# 		elsif x % 5 == 0
# 			x = 'Buzz'
# 		elsif x % 3 == 0
# 			x = 'Fizz'
# 		else
# 			x = x
# 		end
# 	end
# end

# 4. Refactored Solution

def super_fizzbuzz(array)
	fizzbuzzed = Array.new
	array.each { |x| fizzbuzzed.push(x) }
	fizzbuzzed.map do |x|
	x =	case
			when (x % 3 == 0) && (x % 5 == 0) then 'FizzBuzz'
			when x % 5 == 0 then 'Buzz'
			when x % 3 == 0 then 'Fizz'
			else x
		end
	end
end

# def super_fizzbuzz(array)
# 	fizzbuzzed = Array.new
# 	array.each { |x| fizzbuzzed.push(x) }
# 	fizzbuzzed.map do |x|
# 		if (x % 3 == 0) && (x % 5 == 0)
# 			'FizzBuzz'
# 		elsif x % 5 == 0
# 			'Buzz'
# 		elsif x % 3 == 0
# 			'Fizz'
# 		else
# 			x
# 		end
# 	end
# end

# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE
def assert
	"Assertion Failed!!!!" unless yield
end

def random_input_array(base, size)
  (1..size).map { |i| base**(1+rand(15)) }
end

assert { super_fizzbuzz(random_input_array(3,100)) == "Fizz" * 100 }
assert { super_fizzbuzz(random_input_array(5,100)) == "Buzz" * 100 }
assert { super_fizzbuzz(random_input_array(15,100)) == "FizzBuzz" * 100 }
assert { super_fizzbuzz([1,2,3]) == [1, 2, 'Fizz'] }
assert { super_fizzbuzz([15,5,3,1]) == ['FizzBuzz', 'Buzz', 'Fizz', 1] }




# 5. Reflection 