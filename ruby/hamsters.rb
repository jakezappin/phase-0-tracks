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