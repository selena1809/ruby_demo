# class Demo_operation
# 	def power(a, b)
# 		puts a ** b;
# 	end
# end

# demo = Demo_operation. new()
# demo.power(2, 3)

#accessor methods

class Box
	#constructor method
	def initialize(w,h)
		@width, @height = w, h
	end

	#accessor method

	#getter methods
	def printWidth
		@width
	end

	def printHeight
		@height
	end

	#setter methods
	def setWidth=(value)
		@width = value
	end

	def setHeight=(value)
		@height = value
	end
end

#create an object
box =Box.new(10,20)

#use setter method
box.setWidth = 30
box.setHeight = 50

x = box.printWidth()
y = box.printHeight()

puts "Width of the box is: #{x}"
puts "Height of the box is: #{y}"


#to_s is a method which return a string representation of the object
class Box
	def initialize(w, h)
		@width, @height = w, h
	end

	#define to_s method
	def to_s
		"(w: #{@width}, h: #{@height})"
	end
end

box = Box.new(10,20)
puts "String representation of box is: #{box}"


#access control
class Box
   def initialize(w,h)
      @width, @height = w, h
   end

   def printArea_2
   	self.printArea
   end

   def getArea
      getWidth() * getHeight
   end

      def getWidth
      @width
   end
   def getHeight
      @height
   end
   private :getWidth, :getHeight

   def printArea
   	@area = getWidth() * getHeight()
   	puts "Big box area is: #{@area}"
   end

   protected :printArea

end

#create an object
box = Box.new(10, 20)
a = box.getArea
puts "Area of the box is: #{a}"

=begin

private methods only can be access by private members.

width = box.getWidth
puts "Width box is: #{width}"
	
=end

box.printArea_2()

#demo self

class Post
  class << self

  def author
    "Jimmy"
  end

  def getAuthor
    puts author
  end
end
end
Post.getAuthor

#demo conditional statement
#if-else
x = 1
if x > 2
	puts "x is greater than 2"

elsif x <= 2 and x != 0
	puts "x is 1"
else 
	puts "I can't guess the number"
end

#case statement
age = 5
case age
	when 0..2
		puts "baby"
	when 3..6
		puts "little children"
	when 7..12
		puts "child"
	else
		puts "adult"
end

#redo statement
for i in 0..5
   if i < 2 then
      puts "Value of local variable is #{i}"
      i += 1
      redo
   end
end

#retry statement

#A way to access a method without instantiating a class
class Accounts
	def Accounts.return_today
		puts "today is 17-05-2018"
	end
end

Accounts.return_today

#alias and undef statements


#blocks and methods
# a block is always invoked from a function with the same name as that of the block

def test
	yield	"Avadar", "so so crazy!!! :v "
end

test {|i, l| puts "#{i} is #{l}"}


#block use &
def test(&block)
	puts "Hello Selena ^^"
	block.call
end
test{puts "Hello World"}


#read inppted text keyboard
puts "Enter A"
a = gets.chomp
puts "Enter B"
b = gets.chomp
c = a.to_i + b.to_i
puts c
