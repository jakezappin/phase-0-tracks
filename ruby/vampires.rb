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


#Return value
isVampire = "Results inconclusive"

#Check age v. birth year
ageIsRight = false;
ageCalc = 2016 - birthYear

if(age == ageCalc)
	ageIsRight = true
elsif (age == ageCalc - 1)
	ageIsRight = true;
end

#Logic
if(ageIsRight == true)
	if(garlicBread == true || healthInsurance == true)
		isVampire = "Probably not a vampire"
	end
end
	
if(ageIsRight == false)
	if(garlicBread == false || healthInsurance == false)
		isVampire = "Probably a vampire"
	end
end
	
if(ageIsRight == false)
	if(garlicBread == false && healthInsurance == false)
		isVampire = "Almost certainly a vampire"
	end
end
	
if(name == "Drake Cula" || name == "Tu Fang")
	isVampire = "Definitely a vampire"
end

puts isVampire