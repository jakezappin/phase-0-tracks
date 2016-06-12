module Shout

	def self.yell_angrily(words)
		puts words + "!!!!" + " :("
	end

	def self.yell_happily(words)
		puts words + "!!!!" + " :)"
	end

end


####DRIVER CODE

require_relative 'shout'

Shout.yell_angrily("This sucks")
Shout.yell_happily("This is amazing")