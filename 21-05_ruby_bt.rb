=begin
	
Use the modulo operator, division, or a combination 
of both to take a 4 digit number and find the digit in the: 
1) thousands place 
2) hundreds place 
3) tens place 
4) ones place
=end

# test if a string is basically an integer in quotes
class String
	def is_integer?
		self.to_i.to_s == self
	end
end

class Demo
	def printPlaceOfDigit
		begin
			print "Input a number: ";
			number = gets.chomp
			if number.is_integer?
				check = true;
			else
				puts "You must input a number. Please check again!"
				check = false;
			end
		end while check == false
		

		temp = number.to_i
		i = 1
		while temp !=  0 do 
			if i == 1
				puts "Digit in the:\nOnes place: #{temp%10}"
			elsif i == 2
				puts "Tens place: #{temp%10}"
			elsif i == 3
				puts "Hundreds place: #{temp %10}"
			elsif i == 4
				puts "Thousands place: #{temp %10}"
			end

			temp /= 10
			i += 1

		end
		
	end
end

puts "---Demo 01---"
demo = Demo.new
demo.printPlaceOfDigit
puts "-------------"

=begin
Write a program that uses a hash to store a list of movie titles 
with the year they came out. 
Then use the puts command to make your program print out 
the year of each movie to the screen. 
The output for your program should look something like this.
1975
2004
2013
2001
1981
=end

class String 
	def is_integer?
		self.to_i.to_s == self
	end
end	

class Hash_Movie_demo

	def initialize
		@movie_list ||= Hash.new
		#@movie_list present? ? @movie_list : Hash.new
	end

	def input_movie
		#input movie name
		begin 
			puts "Enter name of movie: "
			movie = gets.chomp
		end while movie == ""

		#input movie year
		begin
			puts "Enter year of movie come out: "
			movie_year = gets.chomp
		end while movie_year.is_integer? == false

		#input movie value into hash
		# @movie_list[movie] = movie_year
		@movie_list.store(movie, movie_year)
	end

	def output_movie
		puts "We have movie list:"
		@movie_list.each do |key, value|
			puts "#{key} : #{value}"
		end
	end

	def input_movie_list

		begin 
			self.input_movie
			puts "Do you want to continue to insert a new movie?[yYNn]"
			print "Input your choose: "
			check = gets.chomp
			while check != "y" && check != "Y" && check != "n" && check != "N" 
				puts "Your choose invalid! Do you want to continue to insert a new movie?[yYNn]"
				print "Input your choose: "
				check = gets.chomp
			end 
		end while check == "Y" || check == "y"
	end
end

puts "---Demo 02---"
hash_demo = Hash_Movie_demo.new
hash_demo.input_movie_list
hash_demo.output_movie
puts "-------------"

# class Hash_demo

# 	def demo
# 		setup
# 		i = 0
# 		while i < 5
# 			i += 1
# 			puts "Enter name of movie: "
# 			movie = gets.chomp
# 			puts "Enter year: "
# 			year = gets.chomp
# 			@list.store(movie, year)
# 		end
# 	end

# 	def output_movie()
# 		setup
# 		puts "We have movie list:"
# 		@list.each do |key, value|
# 			puts "#{key} : #{value}"
# 		end
# 	end

# 	def setup
# 		@list ||= Hash.new
# 		#@list.present? ? @list : Hash.new
# 	end
# end

# demo = Hash_demo.new
# demo.demo
# demo.output_movie


=begin
	
Use the dates from the previous example and 
store them in an array. 
Then make your program output the same thing as exercise 3.
	
=end
class Array_demo
	def initialize
		@movie_array = Array.new
	end

	def input_movie
		#input movie name
		begin 
			puts "Enter name of movie: "
			movie = gets.chomp
		end while movie == ""

		#input movie year
		begin
			puts "Enter year of movie come out: "
			movie_year = gets.chomp
		end while movie_year.is_integer? == false

		#input movie value into array
		@movie_array.push(movie_year)
		
	end

	def output_movie
		puts "We have movie list:"
		@movie_array.each do |i|
			puts "#{i}"
		end
	end

	def input_movie_list

		begin 
			self.input_movie
			puts "Do you want to continue to insert a new movie?[yYNn]"
			print "Input your choose: "
			check = gets.chomp
			while check != "y" && check != "Y" && check != "n" && check != "N" 
				puts "Your choose invalid! Do you want to continue to insert a new movie?[yYNn]"
				print "Input your choose: "
				check = gets.chomp
			end 
		end while check == "Y" || check == "y"
	end
end

puts "---Demo 03---"
array = Array_demo.new
array.input_movie_list
array.output_movie
puts "-------------"

=begin
	
Write a program that outputs the factorial of the numbers 5, 6, 7, and 8.
	
=end

class String
	def is_integer?
		self.to_i.to_s == self
	end
end
class Factorial_demo
	def caculator_factorial_Of_number(number)
		result = 1
		while number > 0
			result *= number
			number -= 1
		end
		return result
	end
end

puts "---demo 04: Factorial---"
begin
	print "Input a number: "
	number = gets.chomp
end while number.is_integer? == false
factorial = Factorial_demo.new
result = factorial.caculator_factorial_Of_number(number.to_i)
puts "Result: #{result}"
puts "-------------"

=begin
	demo: scope of a local variable
# x = 0
# 3.times do
# 	x += 1
# end
# puts x

# y = 0
# 3.times do
#   y += 1
#   x = y
# end
# puts x
	
end



=begin
	
Write a program that prints a greeting message. 
This program should contain a method called greeting 
that takes a name as its parameter and returns a string.
	
=end

def greeting(name)
	puts "Hello " + name + ". Have a nice day!"
end

puts greeting("Selena")

# puts x = 2

# p 2

# p "2"

# print something = "nothing"

=begin
	
Write a program that includes a method called multiply 
that takes two arguments and returns 
the product of the two numbers.
	
=end
def multiply(a, b)
	return a.to_i * b.to_i
end

puts "---Demo 05: Multiply---"
begin
	print "Input a number1: "
	number1 = gets.chomp
end while number1.is_integer? == false

begin
	print "Input a number2: "
	number2 = gets.chomp
end while number2.is_integer? == false
result = multiply(number1, number2)
puts "Result: #{result}"
puts "-------------"