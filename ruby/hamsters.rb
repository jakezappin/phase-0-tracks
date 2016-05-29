puts "What is the hamster's name?"
name = gets

puts "What is the volume level of the hamster?"
volume = gets

puts "What is the fur color of the hamster?"
furColor = gets

puts "Is the hamster a good candidate for adoption? (Y/N)"
adoption = gets

puts "What is the estimated age of the hamster?"
age = gets

if(age.length == 0)
	age = nil
end

puts name + " " + volume + " " + furColor + " " + adoption + " " + age