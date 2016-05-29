puts "How many employees do you want to check?"
numEmployees = gets.chomp
numEmployees = numEmployees.to_i

iterator = 0;

while (iterator < numEmployees)

	#Asks the user the name of the employtee
	puts "What is your name?"
	name = gets.chomp

	#Asks the user the age of the employee
	puts "How old are you?"
	age = gets.chomp
	age = age.to_i

	#Asks the user the birth year of the mployee
	puts "What year were you born?"
	birthYear = gets.chomp
	birthYear = birthYear.to_i

	#Asks the user whether the employee wants garlic bread
	puts "Our company cafeteria serves garlic bread.  Should we order some for you? (Y/N)"
	garlicBread = gets.chomp

	if(garlicBread == "Y")
		garlicBread = true
	else
		garlicBread = false
	end
	
	#Asks the user if the employee wants health insurance
	puts "Would you like to enroll in the company's health insurance? (Y/N)"
	healthInsurance = gets.chomp
	
	if(healthInsurance == "Y")
		healthInsurance = true
	else
		healthInsurance = false
	end
	
	#Asks the user the employees allergies
	sunshineAllergy = false
	loopChecker = false
	
	while (loopChecker == false)
		puts "Please list your allegeries.  Type 'done' when finished'"
		allergy = gets.chomp
		
		if(allergy == "sunshine")
			sunshineAllergy = true
			loopChecker = true
		end
		
		if(allergy == "done")
			loopChecker = true
		end
	end
	
	#Return value
	isVampire = "Results inconclusive"
	
	if(sunshineAllergy == true)
		isVampire = "Probably a vampire"
	elsif
	
		#Check age v. birth year
		ageIsRight = false;
		ageCalc = 2016 - birthYear
	
		if(age == ageCalc)
			ageIsRight = true
		elsif (age == ageCalc - 1)
			ageIsRight = true;
		end
		
		#Vampire checker
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
		
	end #elsif
	
	puts isVampire
	iterator = iterator + 1
end

puts "The program is over!"