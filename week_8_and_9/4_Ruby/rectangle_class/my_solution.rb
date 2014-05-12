# U3.W8-9: Implement a Rectangle Class


# I worked on this challenge by myself.

# 2. Pseudocode
=begin

create 4 instance methods - #area, #perimeter, #diagonal, #square?
for #area
	return value from @height * @width
for #perimeter
	return value from (@height*2)	plus (@width*2)
for #diagonal
	return square root of @height**2 + @width**2
for #square
	return true if @height = @width

=end


# 3. Initial Solution
class Rectangle
  attr_accessor :width, :height

  def initialize(width, height)
    @width  = width
    @height = height
  end

  def area
  	@height * @width
  end

  def perimeter
  	(@height * 2) + (@width * 2)
  end

  def diagonal
  	Math.sqrt(@width**2 + @height**2)
  end

  def square?
  	true if @height == @width
  end

	def ==(other)
    (other.width  == self.width && other.height == self.height ) ||
    (other.height == self.width && other.width  == self.height )
  end
end




# 4. Refactored Solution

#I'm sure I could refactor this, but I just don't have time.






# 1. DRIVER TESTS GO BELOW THIS LINE

def assert
	puts "ASSERTION FAILED" unless yield
end

assert {  }





# 5. Reflection 