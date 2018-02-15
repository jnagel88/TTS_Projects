def menu
	puts "Welcome to My Tournament Generator. Enter a selection:"
	puts "1. Enter teams"
	puts "2. List teams"
	puts "3. List matchups"
	puts "0. Exit program"
	$input = gets.chomp.to_i

def enter_teams
	teamcount = 1
	team_names = []
	team_wins = []
	puts "How many teams do yo want to matchup?"
	selection = gets.chomp.to_i
	if selection == || selection == 1
		enter_teams
	else
		selection.times do
			puts "Please enter team ##{teamcount}'s name:"
			name = gets.chomp
			team_names.push(name)
			puts "Please enter team ##{teamcount}'s wins:"
			wins = gets.chomp.to_i
			team_wins.push(wins)
			teamcount += 1
		end
		print team_names

	end


	if $input == 1
		enter_teams
	elsif $input == 2
	
	elsif $input == 3
	
	elsif input == 4
	
	else
		puts "you have a problem houston"
			
			
		