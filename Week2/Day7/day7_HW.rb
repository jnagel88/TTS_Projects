#################################################
#################################################

# 1.>
# Create a program that will take two numbers and then gives the user a choice of what kind of arithmetic they'd like done to the two numbers. Include at least: add, subtract, multiply and divide. This time you really gotta use methods!

##############
# Program Follows this comment.

# def add(x,y)
# 	sum = x + y
# 	puts "the sum is #{sum}"
# end

# def subtract (x,y)
# 	difference = x - y
# 	puts difference
# end

# def multiply(x,y)
# 	product = x * y
# 	puts product
# end

# def divide(x,y)
# 	quotient = x / y
# 	puts quotient
# end


# puts "pick a number:"
# num1 = gets.chomp.to_i

# puts "and one more..."
# num2 = gets.chomp.to_i

# puts "Would you like to add, substract, multiply or divide them?"
# operation = gets.chomp

# case operation
# 	when "add"
# 		add(num1,num2)
# 	when "substract"
# 		subtract(num1,num2)
# 	when "multiply"
# 		multiply(num1,num2)
# 	when "divide"
# 		divide(num1,num2)
# 	else
# 		"that is not an option"
# end


#################################################
#################################################

# 2. 

# The Remainder Challenge!

#     In Ruby 6 / 4 == 1.
#     But what if we want the remainder also?
#     Write a program that asks for two (2) Integers, divides the first by the second and returns the result including the remainder.
#     If either of the numbers is not an Integer, then don't accept the number and ask again.
#     Do not accept zero (0) as a number.

# ask for two numbers that aren't 0.
# if not an integer or is zero, don't accept it and ask again.
# divide th 1st by the 2nd and return the result
# return the remainder

######################
# Program Follows this comment.

puts "Provide an integer greater than zero (0):"
num1 = gets.chomp.to_i
	while num1 <= 0	
		puts "that is not a valid integer."
		puts "Provide an integer greater than zero (0):"
		num1 = gets.chomp.to_i
	end

puts"and one more..."
num2 = gets.chomp.to_i
	while num2 <= 0	
		puts "that is not a valid integer."
		puts "Provide an integer greater than zero (0):"
		num1 = gets.chomp.to_i
	end

answer = num1 / num2
remainder = num1 % num2

puts "#{num1} divided by #{num2} is #{answer} with a remainder of #{remainder}"

##################################################
##################################################

# 3.

# Build-a-Quiz

#     Build a quiz program that gets a few inputs from the user including:
#         number of questions
#         questions
#         answers
#     Then clear the screen and begin the quiz. Keep score!

#############
# Program Follows this comment.



questions = []
answers = []
c = 1 
score = 0
def quiz_builder
	c = 1
	puts "Quiz Builder"
	puts "How many questions do you want on your quiz?"
	count = gets.chomp.to_i
		while count <= 0	
			puts "invalid input."
			puts "Provide an integer greater than zero (0):"
			count = gets.chomp.to_i
		end
	count.times do
		puts "please provide a question."
		print "Question #{c}:"
		q = gets.chomp
		questions.push(q)
		puts "Please provide the answer to question #{c}."
		a = gets.chomp
		answers.push(a)
		c += 1
	end

	50.times do
		puts
	end
end


def run_quiz
	c = 1
	questions.each do |x|
		puts "Question#{c}"
		puts x
		print "your answer:"
		response = gets.chomp
		if response == answers[c-1]
			score += 1
			puts "correct"
		else
			puts "wrong"
		end
		c += 1
	end 
end

quiz_builder

run_quiz

puts "You scored #{score} out of #{count}."
grade = score.to_f / count.to_f * 100


puts "you got #{grade.to_i}\% correct"