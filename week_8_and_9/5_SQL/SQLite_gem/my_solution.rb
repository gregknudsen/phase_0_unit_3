# U3.W7: BONUS Using the SQLite Gem

# I worked on this challenge with Ken Sin.

require 'sqlite3'


$db = SQLite3::Database.open "congress_poll_results.db"


def print_arizona_reps
  puts "AZ REPRESENTATIVES"
  az_reps = $db.execute("SELECT name FROM congress_members WHERE location = 'AZ'")
  az_reps.each { |rep| puts rep }
end

def print_longest_serving_reps(minimum_years)  #sorry guys, oracle needs me, i didn't finish this!
  puts "LONGEST SERVING REPRESENTATIVES"
  longest_serving = $db.execute("SELECT name, years_in_congress FROM congress_members WHERE years_in_congress > #{minimum_years}")
  #years_served = $db.execute("SELECT years_in_congress FROM congress_members WHERE years_in_congress > #{minimum_years}")
  longest_serving.each do |rep| 
  	puts "#{rep[0]} - #{rep[1]}"
  end
end

def print_lowest_grade_level_speakers(grade)
  puts "LOWEST GRADE LEVEL SPEAKERS (less than < 8th grade)"
  puts grade_level = $db.execute("SELECT name FROM congress_members WHERE grade_current < #{grade}")
end

def print_states_reps(*states)
	reps = states.map do |state|
					$db.execute("SELECT name, location FROM congress_members WHERE location = '#{state}' AND name LIKE ('Rep%')")
				end			
	reps.each do |rep| 
		rep.each { |person| puts "#{person[0]} - #{person[1]}" }
	end
end

def print_separator
  puts 
  puts "------------------------------------------------------------------------------"
  puts 
end


print_arizona_reps

#print_separr


print_longest_serving_reps(35)
# TODO - Print out the number of years served as well as the name of the longest running reps
# output should look like:  Rep. C. W. Bill Young - 41 years

print_separator
print_lowest_grade_level_speakers(8)
# TODO - Need to be able to pass the grade level as an argument, look in schema for "grade_current" column

# TODO - Make a method to print the following states representatives as well:
# (New Jersey, New York, Maine, Florida, and Alaska)
print_separator
print_states_reps("NJ", "NY", "ME", "AK", "FL")

##### BONUS #######
# TODO (bonus) - Stop SQL injection attacks!  Statmaster learned that interpolation of variables in SQL statements leaves some security vulnerabilities.  Use the google to figure out how to protect from this type of attack.

# TODO (bonus)
# Create a listing of all of the Politicians and the number of votes they recieved
# output should look like:  Sen. John McCain - 7,323 votes (This is an example, yours will not return this value, it should just 
#    have a similar format)
# Create a listing of each Politician and the voter that voted for them
# output should include the senators name, then a long list of voters separated by a comma
#
# * you'll need to do some join statements to complete these last queries!


# REFLECTION- Include your reflection as a comment below.
# How does the sqlite3 gem work? 
# => It allows you to create sqlite3 databases and interract with them in the terminal
# What is the variable `$db` holding? 
# => the database to be interracted with in the ruby program 
# Try to use your knowledge of ruby and OO to decipher this as well as h
# ow the `#execute` method works.  Take a stab at explaining the line 
# `$db.execute("SELECT name FROM congress_members WHERE years_in_congress 
#   > #{minimum_years}")`. Try to explain this as clearly as possible for 
# your fellow students.  
# => It would seem that the $db.execute puts you into an sqlite3 environment. I would liken it to using style tabs in an
# => html document. Just for that short amount of code, you are in a CSS doc.
# If you're having trouble, find someone to pair on this explanation with you.
=begin

I met up with Ken to work on this one. Ken was a great help in helping me solve the first two TODO's. And we ended up coming up with the third TODO together in a way he had not done it.
We eventually got it to work by being able to enter whatever states as arguments for the #print_states_reps method...pretty cool. 

=end