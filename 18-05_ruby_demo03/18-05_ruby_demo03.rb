#!/usr/bin/ruby
# $LOAD_PATH << '.'
# require "support"

# class Decade
# include Week
#    no_of_yrs = 10
#    def no_of_months
#       puts Week::FIRST_DAY
#       number = 10*12
#       puts number
#    end
# end
# d1 = Decade.new
# puts Week::FIRST_DAY
# Week.weeks_in_month
# Week.weeks_in_year
# d1.no_of_months



# #mixin into modules
# module A
#    def a1
#    	puts "hello a1"
#    end
#    def a2
#    	puts "hello a2"
#    end
# end
# module B
#    def b1
#    	puts "hello b1"
#    end
#    def b2
#    	puts "hello b2"
#    end
# end

# class Sample
# include A
# include B
#    def s1
#    end
# end

# samp = Sample.new
# samp.a1
# samp.a2
# samp.b1
# samp.b2
# samp.s1


#string
# myStr = String.new("This is test")
# foo = myStr.downcase
# puts "#{foo}"

# #array
# nums = Array.new(10){|e| e = e * 2}
# puts "#{nums}"
# i = nums.at(1)
# puts "#{i}"

# #hash
# H = Hash["a"=> 100, "b" => 200]
# puts "#{H['a']}"


# months = Hash.new( "month" )
# months = {"1" => "January", "2" => "February"}

# values = months.values
# puts "#{values}"
# puts "#{months.inspect}"

# temp_hash = months.invert
# puts "#{temp_hash.inspect}"

#time
# time = Time.new
# puts "Current time: " + time.inspect
# values = time.to_a
# puts Time.local(*values)

# time = Time.new
# #format date
# puts time.strftime("%Y-%m-%d")

# #range
# score = 70
# result = case score
# 	when 0..40 then "Fail"
# 	when 41..60 then "Pass"
# 	when 61...71 then "Pass with Merit"
# 	when 71..100 then "Pass with Distinction"
# 	else "Invalid Score"
# end

# puts result
# #Iterators
# a = [1, 2, 3, 4, 5]
# b = a.collect{|x| 10*x}
# puts b 
# temp = b.at(0)

# #demo clone
# c = a.clone
# puts c
# puts temp


# #####
# puts "Enter a value: "
# val = gets
# puts val
# puts "Enter a value2: "
# val2 = gets
# puts val2
# puts "Enter a value3:"
# val3 = gets
# puts = val3
# print "Hello "
# print "world"


#I/O File
# puts Dir.pwd 
# puts Dir.entries("Desktop").join(' ')


# begin  
#    puts 'I am before the raise.'  
#    raise 'An error has occurred.'  
#    puts 'I am after the raise.'  
# rescue  
#    puts 'I am rescued.'  
# end  
# puts 'I am after the begin block.' 

  #kool

#   begin
#    file = open("/unexistant_file")
#    if file
#       puts "File opened successfully"
#    end
# rescue
#       file = STDIN
# end
# print file, "==", STDIN, "\n"

#vong lap vo tan. 
# begin
# 	fname = "unexistant_file";
#    file = open("/#{fname}")
#    if file
#       puts "File opened successfully"
#    end
# rescue
#    fname = "Desktop"
#    retry
# end

# def promptAndGet(prompt)
#    print prompt
#    res = readline.chomp
#    throw :quitRequested if res == "!"
#    puts "Hello ^^"
#    return res
# end

# catch :quitRequested do
#    name = promptAndGet("Name: ")
#    age = promptAndGet("Age: ")
#    sex = promptAndGet("Sex: ")
#    # ..
#    # process information
# end
# promptAndGet("Name:")

# begin
#   raise ArgumentError.new("You messed up!")
# rescue ArgumentError => e  
#   puts e.message
# end

# def foo
#   begin
#     raise 'here'
#   rescue => e
#   puts  e.backtrace # ["test.rb:3:in `foo'", "test.rb:10:in `<main>'"]
#   puts  e.message # 'here'

#   end
# end

# begin  
#    puts 'I am before the raise.'  
#    raise 'An error has occurred.'  
#    puts 'I am after the raise.'  
# rescue  
#    puts 'I am rescued.'  
# end  
# puts 'I am after the begin block.' 

