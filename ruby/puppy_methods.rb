class Puppy

  def initialize()
  	puts "Initializing new puppy instance..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(num)
  	index = 0
  	while index < num
  		puts "Woof!"
  		index = index + 1
  	end
  end

  def roll_over()
  	puts "*roll over*"
  end

  def dog_years(years)
  	return years/7
  end

end

class Golfer

	def initialize()
		puts "Initializing the golfer..."
	end

	def swing()
		puts "The Golfer Swings the Club"
	end

	def putt()
		puts "The Golfer Putts the Ball"
	end

end



#DRIVER CODE

fido = Puppy.new

fido.fetch("ball")
fido.speak(5)
fido.roll_over()
fido.dog_years(20)


index = 0
golfers = []
while index < 50
	golfers[index] = Golfer.new
	index = index + 1
end

golfers.each {|x| print x.swing, x.putt}


