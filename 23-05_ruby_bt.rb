=begin
	
Write a method that takes a string as argument. 
The method should return a new, all-caps version of the string, 
only if the string is longer than 10 characters. 
	
=end

def caps(string)
	if string.length > 10
		string.upcase
	else 
		string
	end
end

# puts caps("Selena")
# puts caps("Hello Selena")

=begin
	
Write a program that takes a number from the user
between 0 and 100 and reports back whether 
the number is between 0 and 50, 51 and 100, or above 100.
	
=end
class Demo02
	def demo
		print "Please enter a number between 0 and 100."
		print "Input a number: "
		number = gets.chomp.to_i

		if number < 0
			puts "You can not enter a negative number!"
		elsif number <= 50
			puts "#{number} is between 0 and 50"
		elsif number <= 100
			puts "#{number} is between 51 and 100"
		else
			puts "#{number} is above 100"
		end
	end
end

# puts "---Demo 02---"
# demo02 = Demo02.new
# demo02.demo
# puts "-------------"


#task 1: basic array 

#First way
class Basic_array
	def input
		print "Input size of array: "
		size = gets.chomp.to_i

		a = Array.new(size)
		for i in 0...size
			print "a[#{i}] = "
			value = gets.chomp
			a[i] = value
		end
		return a
	end

	def output(array)
		array.each do |i|
			puts "#{i}"
		end
	end
	def multiple01
		puts "Input arr1:"
		arr1 = self.input
		puts "Input arr2:"
		arr2 = self.input
		
		size1 = arr1.length
		size2 = arr2.length

		for i in 0...size1
			for j in 0...size2
				print "[#{i}, #{j}]"
			end
		end
	end

	def multiple02
		puts "Input arr1:"
		arr1 = self.input
		puts "Input arr2:"
		arr2 = self.input

		arr1.each do |i|
			arr2.each do |j|
				print "[#{i}, #{j}]"
			end
		end
	end
end

	def multiple03
		puts "Input arr1:"
		arr1 = self.input
		puts "Input arr2:"
		arr2 = self.input
		
		size1 = arr1.length

		for i in 0...size1
			arr2.each do |j|
				print "[#{i}, #{j}]"
			end
		end
	end

puts "--Demo 01-01--"
demo = Basic_array.new
# demo.multiple
demo.multiple01
demo.multiple02
demo.multiple03
puts "--------------"
#Second way: 


#task 2: anagram
class AreAnagrams
	def are_anagrams(str1, str2)
		size1 = str1.length.to_i
		size2 = str2.length.to_i
		if size1 == size2
			for i in 0...size1
				if !str2.include? str1[i]
					return false
				end
			end
			return true
		else
			return false
		end
		

	end

	def demo
		str = "Hello"
		size = str.length
		for i in 0...size
			puts "#{str[i]}"
		end
	end
end

puts "--Demo Anagram--"
a = AreAnagrams.new
print "Input str1: "
str1 = gets.chomp
print "Input str2: "
str2 = gets.chomp
check = a.are_anagrams(str1, str2)
puts "Result: #{check}"
puts "----------------"

#task 3: palindrome
class Palindorme
	def is_alphabet?(s)
		if (s.ord >= 65 && s.ord <= 90) || (s.ord >= 97 && s.ord <= 122)
			return true
		else
			return false
		end
	end
	def is_palindrome?(str)
		temp = nil
		size = str.length
		for i in 0...size
			s = str[i]
			if self.is_alphabet?(s)
				if temp == nil
				temp = str[i]
				else
				temp += str[i]
				end
			end
		end
		return temp
	end



end

puts "--Demo Palindorme--"
print "Input a string which you want to check: "
str = gets.chomp
p = Palindorme.new
s = p.is_palindrome?(str)
puts "#{s}"
puts "-------------------"




