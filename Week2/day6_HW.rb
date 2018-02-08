
# 1.

puts "Please enter your test score:"
grade = gets.chomp.to_i

case grade
	when 90..100
		puts "you have an A in class!"
	when 80..89
		puts "you have a B in class."
	when 70..79
		puts "you have a C in class, try harder."
	when 60..69
		puts "you have a D in class... bro, com'n"
	when 0..59
		puts " you have an F... sorry homie..."
	else
		puts "wrong score."
end

##########################################

# 2.

# puts "give me a number:"
# num1 = gets.chomp.to_i
# puts "and one more:"
# num2 = gets.chomp.to_i
# rem = num1 % num2
# div = num1 / num2

# if rem == 0
# 	puts "Your numbers are divisible!"
# else 
# 	puts "your numbers are not divisible. They have a reaminder of #{rem}"
# end

############################################

# 3.
###Still need to not have comma at ends

# puts "enter a word:"
# word = gets.chomp
# wordArr = word.split(//)

# wordArr.each do |l|
# 	print l + ", "
# end
# puts

# wordArr.each do |l|
# 	puts l
# 	puts ","
# end




############################################

# 4. 
# puts "Pig Latin Translator:"
# puts "enter a word to translate:"
# word = gets.chomp
# letter =- word[0]
# vowels = ["a","e","i","o","u"]

# vowels.each do |x|
# 	if word[0] == x
# 		puts word + "way"
# 	end
# 	word.slice! letter
# 		# word + letter + "ay"
# end

# puts word + letter + "ay"


##############################################

# 5.
# require 'prime'

# puts "Enter a number:"
# input1 = gets.chomp.to_i
# arr = Prime.first(input1)

# puts arr

# arr.each do |x|
# 	if x <= input1
# 		puts x
# 	end
# end

#############################################

# 6. 

# arr = ["rock","paper","scissors"]
# round = 1

# playerScore = 0
# aiScore = 0
# puts "Want to play a game?"
# player = gets.chomp
 
#  if player == "yes"
# 	puts "Pick rock, paper, or scissors"
# 	puts "We'll play to 5 wins"
	

# 	until playerScore == 5 || aiScore == 5 
# 	player = gets.chomp.downcase 
# 	ai = rand(2)
# 		if player == "rock"
# 				player = 0
# 			elsif player == "paper"
# 				player = 1
# 			elsif player == "scissors"
# 				player = 2
# 			else
# 				puts "thats not an option."
# 		end
# 		puts "The computer chose #{arr[ai]}."

# 		if ai == player
# 				puts "Draw! You both chose #{arr[ai]}!"
# 				puts
# 			elsif ai == 0 && player != 1
# 				aiScore += 1
# 				puts " You lose, the computer chose rock."
# 				puts
# 			elsif ai == 1 && player != 2
# 				aiScore += 1
# 				puts " You lose, the computer chose paper."
# 				puts
# 			elsif ai == 2 && player != 0
# 				aiScore += 1
# 				puts "You lose, the computer chose scissors."
# 				puts	
# 			elsif player == 0 && ai != 1
# 				playerScore += 1
# 				puts " You win, the computer chose #{arr[ai]}."
# 				puts
# 			elsif player == 1 && ai != 2
# 				playerScore += 1
# 				puts " You win, the computer chose #{arr[ai]}."
# 				puts
# 			elsif player == 2 && ai != 0
# 				playerScore += 1
# 				puts " You win, the computer chose #{arr[ai]}."
# 				puts
# 			else
# 				puts " I didn't see that coming..."
# 		end

# 		puts "the score is"
# 		puts "Computer: #{aiScore}  Player: #{playerScore}"
# 		round += 1		
# 		puts "Round: #{round}"
# 		puts "Pick rock, paper, or scissors"	
# 	end

# 	if player == 5
# 		puts "You Won!!!"
# 	else
# 		puts " You lost..."
# 	end

# 	else 
# 		puts " Thats too bad..."
# end

#############################################

# 7. 
# I know this doesnt work... It got late...

# arr =*(1..30)


# arr.each do |x|
# 	if  x % 3 == 0 && x % 5 == 0 
# 		arr[x] = "FizzBuzz"
# 	elsif x % 5 == 0
# 		arr[x] = "buzz"
# 	elsif x % 3 == 0
# 		arr[x] = "Fizz"
# 	else
# 		return x
# 	end
# end
# puts arr


