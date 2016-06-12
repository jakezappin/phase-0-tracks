module Shout

	def yell_angrily(words)
		puts words + "!!!!" + " :("
	end

	def yell_happily(words)
		puts words + "!!!!" + " :)"
	end

end

class Happy
	include Shout
end

class Sad
	include Shout
end


####DRIVER CODE

#require_relative 'shout'

#Shout.yell_angrily("This sucks")
#Shout.yell_happily("This is amazing")

happy = Happy.new 
happy.yell_happily("This is amazing")

sad = Sad.new
sad.yell_angrily("This sucks")