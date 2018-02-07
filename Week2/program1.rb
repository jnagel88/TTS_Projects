# puts "Hello, my name is stalker. Please enter your name."
# name1 = gets.chomp
# puts "Hello, nice to meet you #{name1}."






# #CatSays:DogSays

# dog = "Woof!"
# cat = "Meow!"
# mouse = "Squeak!"
# horse = "Nay!"
# fox = "what DOES the fox say?"

# puts "Pick Dog or cat:"
# input = gets.chomp

# if input == "dog"
# 	puts dog
# elsif
# 	input == "cat"
# 	puts cat
# elsif
# 	input == "mouse"
# 	puts mouse
# elsif
# 	input == "horse"
# 	puts horse
# elsif
# 	input == "fox"
# 	puts fox
# else
# 	puts "unknown animal"
# end







# Guessing Game

sysNumber = 1 + rand(9)

puts "Guess what number I'm thinking between 1 and 10"

until mynum == sysNumber
	mynum = gets.chomp.to_i
	if mynum == sysNumber
			puts "Wow! You guessed my number as #{mynum}!"
		elsif mynum <= sysNumber && mynum < 11 && mynum > 0
			puts "You guessed too low. My number was #{sysNumber}."
		elsif mynum >= sysNumber && mynum < 11 && mynum > 0
			puts " You guessed too high. My number was #{sysNumber}"
		else 
			puts "That is not between 1 and 10."
	end
	puts "Try again:"
	mynum = gets.chomp.to_i
end




# # Grading

# puts "Please enter your grade for class (As a number)"
# grade = gets.chomp.to_i

# if grade < 60 && grade >=0
# 	puts "bummer! you have to take the class again..."
# 	elsif grade > 100 && grade < 111
# 		puts "Holy shit! You did the extra credit! WHAT?!"
# 	elsif grade > 110
		# puts "What kind of extra credit did YOU do?!"
# 	elsif grade <0
# 		puts "your lying, you can't have a negative grade!"	
# 	else
# 		puts "Your passing the class! w00t!!"
# 	end


		
		