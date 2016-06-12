class Santa
	attr_reader :age, :ethnicity
	attr_accessor :gender

	def initialize(gender = "non-binary", ethnicity = "white", reindeer_ranking = [], age = 0)
		puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = reindeer_ranking
		@age = age
	end

	def speak()
		puts "Ho, ho, ho! Haaapy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good " + cookie + "!"
	end

	def celebrate_birthday()
		@age = @age +1
		return @age
	end

	def get_mad_at(reindeer)
		index = @reindeer_ranking.find(reindeer)
		@reindeer_ranking.delete(index)
		@reindeer_ranking.push(reindeer)
	end

	#def set_gender(newGender)
	#	@gender = newGender
	#end

	#def age
	#	@age
	#end

	#def ethnicity
	#	@ethnicity
	#end

end


#DRIVER CODE

santa1 = Santa.new()
santa1.speak()
santa1.eat_milk_and_cookies("Chocolate Chip Cookie")

santas = []
santas << Santa.new("agender", "black")
santas << Santa.new("female", "Latino")
santas << Santa.new("bigender", "white")
santas << Santa.new("male", "Japanese")
santas << Santa.new("female", "prefer not to say")
santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
santas << Santa.new("N/A", "N/A")

index = 0
while index < santas.length
	puts santas[index]
	index = index +1
end