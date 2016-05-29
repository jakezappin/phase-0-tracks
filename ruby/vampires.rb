puts "What is your name?"
name = gets.chomp

puts "How old are you?"
age = gets.chomp
age = age.to_i

puts "What year were you born?"
birthYear = gets.chomp
birthYear = birthYear.to_i

puts "Our company cafeteria serves garlic bread.  Should we order some for you? (Y/N)"
garlicBread = gets.chomp

if(garlicBread == "Y")
	garlicBread = true
else
	garlicBread = false
end

puts "Would you like to enroll in the company's health insurance? (Y/N)"
healthInsurance = gets.chomp

if(healthInsurance == "Y")
	healthInsurance = true
else
	healthInsurance = false
end
