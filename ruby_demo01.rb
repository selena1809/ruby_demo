#puts "This is my first ruby lesson."
#print "This is my first 1 ruby lesson."

#demo strings from multiple lines
# print <<EOF
# This is the first way of creating
#  here document mulitiple line string.
# EOF

# print <<"EOF";
# This is the first way of creating
#  here document mulitiple line string.
# EOF


# print <<`EOC`                 # execute commands
# 	echo hi there
# 	echo lo there
# EOC


# print <<"foo", <<"bar"  # you can stack them
# 	I said foo.
# foo
# 	I said bar.




# BEGIN AND END STATEMENT 
# puts "This is main Ruby Program"

# END{
# 	puts "Terminating Ruby Program"
# }
 
# BEGIN{
# 	puts "Initializing Ruby Program"
# }




# Variable and methods
class Sample
	def hello
		puts "Hello World!"
	end
end

#to use above class, create object
object = Sample. new
object.hello


class Customer
	@@no_of_customers = 0
	def initialize(id, name)
		@cus_id = id
		@cust_name = name
		lang = "id = " + @cus_id + "and name = " + @cust_name
		# puts "id = #{@cus_id} and name = #{@cust_name}"
		puts lang
		 @cus_id
	end
end
cus1 = Customer. new("1", "Selena")


#STRING
msg = "Ruby language"

puts msg[-1]

puts msg[-2]


#demo string 02
x = 5
y = 6
result = "#{x} x #{y} = #{x * y}"
puts result


#compare strings
puts 12 === "12"
puts 12 .eql? "12"

word = "Methods"

puts "Size of #{word}: #{word.size}"

puts word.include? "tho"
puts word.include? "od"

puts word.empty?
word.clear
puts word
puts word.empty?


## 
ruby = "ruBy"

puts ruby.upcase
puts ruby.downcase
puts ruby.capitalize
puts ruby.swapcase

##
msg = "Ruby\nPython"
puts msg


##string format
puts "%d , %d" % [300,200]

#use global variables
$global_variable = 10
class Class1
	def print_global
		puts "Global variable in Class 1 is #{$global_variable}"
	end
end

class Class2
	def print_global
		puts "Global variable in Class 2 is #{$global_variable}"
		
	end
end

class1obj = Class1.new
class1obj.print_global
class2obj = Class2.new
class2obj.print_global

#ruby array
arr = ["fred", 10, 3.14, "This is a string"]
arr.each do |i|
	puts i
end