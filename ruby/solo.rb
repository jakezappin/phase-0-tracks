## GOLFER

#Attributes
#  1. Name
#  2. Handicap
#  3. Clubs
#  4. Scores

#Methods
#  1.  Get a club
#  2.  Add a club
#  3.  Remove a club
#  4.  Get Golfer Nme
#  5.  Get Handicap
#  6.  Change Handicap
#  7.  Get Scores
#  8.  Add Score


class Golfer

	attr_accessor :name, :handicap, :clubs, :scores

	def initialize(name, handicap, clubs, scores)
		@name = name
		@handicap = handicap
		@clubs = clubs
		@scores = scores
	end

	def is_club_in_bag(club)
		index = @clubs.find_index(club)

		if(index == nil )
			puts "That club isn't in the bag"
		else 
			puts "That club is in the bag!"
		end
	end

	def remove_club(club)
		index = @clubs.find_index(club)
		if(index == nil)
			puts "That club isn't in the bag!"
		else
			@clubs.delete_at(index)
		end
	end

	def add_club(club)
		if get_number_of_clubs >= 14
			puts "You already have 14 clubs"
		else
			@clubs.push(club)
		end
	end

	def get_number_of_clubs()
		@clubs.length
	end

	def print_clubs()
		puts "You have the following clubs: "
		index = 0
		while index < @clubs.length
			puts @clubs[index]
			index = index + 1
		end
	end

	def add_score(score)
		@scores.push(score)
	end

	def print_scores()
		puts "You have the following scores: "
		index = 0
		while index < @scores.length
			puts @scores[index]
			index = index + 1
		end
	end

	def print_average_score()

		sum = 0
		index = 0

		while index < scores.length
			sum = sum + scores[index]
			index = index + 1
		end

		result = sum / scores.length
		puts "Your average score is:  " + result.to_s + "."

	end

end


##DRIVER PROGRAM

puts "Please enter your name."
golfername = gets.chomp

puts "Please enter your handicap."
golferhandicap = gets.chomp


triggerClubs = false
timesLoopedClubs = 0
golfclubs = []

while (triggerClubs == false)

	if (timesLoopedClubs == 0)
		puts "Please enter the clubs in your golf bag one at a time.  Type 'done' when you are finished."
		input = gets.chomp
		timesLoopedClubs = timesLoopedClubs + 1
	else
		puts "Enter the next club or type 'done':"
		input = gets.chomp
	end

	if (input == "done")
		triggerClubs = true
	else
		golfclubs.push(input)
	end

end

timesLoopedScores = 0
triggerScores = false
golferscores= []

while (triggerScores == false)

	if (timesLoopedScores == 0)
		puts "Please enter your scores.  Type 'done' when you are finished."
		input = gets.chomp
		timesLoopedScores = timesLoopedScores + 1
	else
		puts "Enter the next score or type 'done':"
		input = gets.chomp
	end

	if (input == "done")
		triggerScores = true
	else
		input = input.to_i
		golferscores.push(input)
	end

end

golfer = Golfer.new(golfername, golferhandicap, golfclubs, golferscores)


triggerModify = false

while (triggerModify == false)

	puts "-------------------------------------------------------"
	puts "Please enter a number corresponding to an action below."
	puts "1. Check to see if a club is in the bag."
	puts "2. Remove a club from the bag."
	puts "3. Add a club to your bag."
	puts "4. See your clubs."
	puts "5. Get the number of clubs in your bag."
	puts "6. Get your handicap."
	puts "7. Change your handicap."
	puts "8. See your scores."
	puts "9. Add a score."
	puts "10. See your average score."
	puts "-------------------------------------------------------"
	input = gets.chomp.to_i

	if input == 1

		puts "Please enter the club."
		club = gets.chomp
		golfer.is_club_in_bag(club)

	elsif input == 2

		puts "Please enter the club.  You currently have the following clubs in you bag: "
		golfer.print_clubs()
		club = gets.chomp
		golfer.remove_club(club)
		golfer.print_clubs()

	elsif input == 3

		puts "Please enter the club."
		club = gets.chomp
		golfer.add_club(club)
		golfer.print_clubs()

	elsif input == 4

		golfer.print_clubs()

	elsif input == 5

		puts "You have " + golfer.get_number_of_clubs().to_s + " clubs in your bag."

	elsif input == 6

		puts "Your handicap is " + golfer.handicap.to_s + " ."

	elsif input == 7

		puts "Please enter your new handicap."
		handicap = gets.chomp.to_i
		golfer.handicap = handicap
	
	elsif input == 8

		golfer.print_scores()

	elsif input == 9

		puts "Please enter your new score."
		score = gets.chomp.to_i
		golfer.add_score(score)
		golfer.print_scores()

	elsif input == 10

		golfer.print_average_score()

	end


	shouldExit = false

	while (shouldExit == false)
		puts "Type 'continue' to continue.  Type 'exit' or exit the program."
		exit = gets.chomp

		if(exit == "exit")
			triggerModify = true
			shouldExit = true
		elsif (exit == "continue")
			triggerModify = false
			shouldExit = true
		else
			puts "You entered invalid input.  Please try again."
		end
	end

end


