#1.Add two strings together that, when concatenated, return your first and last name as your full name in one string.
class Concat_string
	def concat_str
		print "Enter Firstname: "
		firstname = gets.chomp
		print "Enter Lastname: "
		lastname = gets
		print "Enter secondname: "
		secondname = gets
		fullname = firstname + lastname + secondname
		
		puts "Fullname: #{fullname}" 
		puts "Fullname: #{firstname}" 
	end
end
str = Concat_string.new
str.concat_str

