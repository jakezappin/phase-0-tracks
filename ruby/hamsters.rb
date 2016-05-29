puts "What is the hamster's name?"
name = gets.chomp

puts "What is the volume level of the hamster?"
volume = gets.chomp
volume = volume.to_i

puts "What is the fur color of the hamster?"
furColor = gets.chomp

puts "Is the hamster a good candidate for adoption? (Y/N)"
adoption = gets.chomp

if(adoption == "Y")
	adoption = true
else
	adoption = false
end

puts "What is the estimated age of the hamster?"
age = gets.chomp

if(age.length == 0)
	age = nil
end

puts "The name of the hamster is: " + name + "."
puts "The volume of the hamster is: " + volume.to_s + "."
puts "The color of the hamster is:" + furColor + "."

if(adoption == true)
	puts "The hamster is a good candidate for adoption."
else 
	puts "The hamster is NOT a good candidate for adoption."
end

if(age == nil)
	puts "The age of the hamster is unknown."
else
	puts "The hamster is " + age.to_s + " years old."
end