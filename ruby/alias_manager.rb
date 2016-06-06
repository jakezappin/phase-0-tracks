# 1. Prompt user for name
# 2. Split name into first and last name, save in variable
# 3. Swap the first and last name variables
# 4. Loop through and swap vowels to next vowel
# 5. Loop through and swap constants to the next constanant
# 6. Print out fake name and store it in array
# 7. Prompt user to quit or do it again


##Collection of Names/SpyNames
names = []

##Variable to kick out of loop asking user for names
continueRunning = true

##Loop continuing to ask user for names to encrupt
while continueRunning == true

	##Array to store the user's inputed names and encrypted names
	spyName = []

	##Prompts the user for the first name and stores in array
	puts "Enter your first name:"
	firstName = gets.chomp
	spyName.push(firstName)

	##Prompts the user for the last name and stores in array
	puts "Enter your last name:"
	lastName = gets.chomp
	spyName.push(lastName)


	##Creates encrypted first name
	indexFirst = 0
	encryptedFirstName = ""

	while indexFirst < firstName.length

		if firstName[indexFirst] == "a" 
			encryptedFirstName = encryptedFirstName + "e"
		elsif firstName[indexFirst] == "A" 
			encryptedFirstName = encryptedFirstName + "E"
		elsif firstName[indexFirst] == "b" 
			encryptedFirstName = encryptedFirstName + "c"
		elsif firstName[indexFirst] == "B" 
			encryptedFirstName = encryptedFirstName + "C"
		elsif firstName[indexFirst] == "c" 
			encryptedFirstName = encryptedFirstName + "d"
		elsif firstName[indexFirst] == "C" 
			encryptedFirstName = encryptedFirstName + "D"
		elsif firstName[indexFirst] == "d" 
			encryptedFirstName = encryptedFirstName + "f"
		elsif firstName[indexFirst] == "D" 
			encryptedFirstName = encryptedFirstName + "F"
		elsif firstName[indexFirst] == "e" 
			encryptedFirstName = encryptedFirstName + "i"
		elsif firstName[indexFirst] == "E" 
			encryptedFirstName = encryptedFirstName + "I"
		elsif firstName[indexFirst] == "f" 
			encryptedFirstName = encryptedFirstName + "g"
		elsif firstName[indexFirst] == "F" 
			encryptedFirstName = encryptedFirstName + "G"
		elsif firstName[indexFirst] == "g" 
			encryptedFirstName = encryptedFirstName + "h"
		elsif firstName[indexFirst] == "G" 
			encryptedFirstName = encryptedFirstName + "H"
		elsif firstName[indexFirst] == "h" 
			encryptedFirstName = encryptedFirstName + "j"
		elsif firstName[indexFirst] == "H" 
			encryptedFirstName = encryptedFirstName + "J"
		elsif firstName[indexFirst] == "i" 
			encryptedFirstName = encryptedFirstName + "o"
		elsif firstName[indexFirst] == "I" 
			encryptedFirstName = encryptedFirstName + "O"
		elsif firstName[indexFirst] == "j" 
			encryptedFirstName = encryptedFirstName + "k"
		elsif firstName[indexFirst] == "J" 
			encryptedFirstName = encryptedFirstName + "K"
		elsif firstName[indexFirst] == "k" 
			encryptedFirstName = encryptedFirstName + "l"
		elsif firstName[indexFirst] == "K" 
			encryptedFirstName = encryptedFirstName + "L"
		elsif firstName[indexFirst] == "l" 
			encryptedFirstName = encryptedFirstName + "m"
		elsif firstName[indexFirst] == "L" 
			encryptedFirstName = encryptedFirstName + "M"
		elsif firstName[indexFirst] == "m" 
			encryptedFirstName = encryptedFirstName + "n"
		elsif firstName[indexFirst] == "M" 
			encryptedFirstName = encryptedFirstName + "N"
		elsif firstName[indexFirst] == "n" 
			encryptedFirstName = encryptedFirstName + "p"
		elsif firstName[indexFirst] == "N" 
			encryptedFirstName = encryptedFirstName + "P"
		elsif firstName[indexFirst] == "o" 
			encryptedFirstName = encryptedFirstName + "u"
		elsif firstName[indexFirst] == "O" 
			encryptedFirstName = encryptedFirstName + "U"
		elsif firstName[indexFirst] == "p" 
			encryptedFirstName = encryptedFirstName + "q"
		elsif firstName[indexFirst] == "P" 
			encryptedFirstName = encryptedFirstName + "Q"
		elsif firstName[indexFirst] == "q" 
			encryptedFirstName = encryptedFirstName + "r"
		elsif firstName[indexFirst] == "Q" 
			encryptedFirstName = encryptedFirstName + "R"
		elsif firstName[indexFirst] == "r" 
			encryptedFirstName = encryptedFirstName + "s"
		elsif firstName[indexFirst] == "R" 
			encryptedFirstName = encryptedFirstName + "S"
		elsif firstName[indexFirst] == "s" 
			encryptedFirstName = encryptedFirstName + "t"
		elsif firstName[indexFirst] == "S" 
			encryptedFirstName = encryptedFirstName + "T"
		elsif firstName[indexFirst] == "t" 
			encryptedFirstName = encryptedFirstName + "v"
		elsif firstName[indexFirst] == "T" 
			encryptedFirstName = encryptedFirstName + "V"
		elsif firstName[indexFirst] == "u" 
			encryptedFirstName = encryptedFirstName + "a"
		elsif firstName[indexFirst] == "U" 
			encryptedFirstName = encryptedFirstName + "A"
		elsif firstName[indexFirst] == "v" 
			encryptedFirstName = encryptedFirstName + "w"
		elsif firstName[indexFirst] == "V" 
			encryptedFirstName = encryptedFirstName + "W"
		elsif firstName[indexFirst] == "w" 
			encryptedFirstName = encryptedFirstName + "x"
		elsif firstName[indexFirst] == "W" 
			encryptedFirstName = encryptedFirstName + "X"
		elsif firstName[indexFirst] == "x" 
			encryptedFirstName = encryptedFirstName + "y"
		elsif firstName[indexFirst] == "X" 
			encryptedFirstName = encryptedFirstName + "Y"
		elsif firstName[indexFirst] == "y" 
			encryptedFirstName = encryptedFirstName + "z"
		elsif firstName[indexFirst] == "Y" 
			encryptedFirstName = encryptedFirstName + "Z"
		elsif firstName[indexFirst] == "z" 
			encryptedFirstName = encryptedFirstName + "b"
		elsif firstName[indexFirst] == "Z" 
			encryptedFirstName = encryptedFirstName + "B"
		end
		
		indexFirst = indexFirst + 1

	end

	spyName.push(encryptedFirstName)

	##Creates encrypted last name
	indexLast = 0
	encryptedLastName = ""

	while indexLast < lastName.length

		if lastName[indexLast] == "a" 
			encryptedLastName = encryptedLastName + "e"
		elsif lastName[indexLast] == "A" 
			encryptedLastName = encryptedLastName + "E"
		elsif lastName[indexLast] == "b" 
			encryptedLastName = encryptedLastName + "c"
		elsif lastName[indexLast] == "B" 
			encryptedLastName = encryptedLastName + "C"
		elsif lastName[indexLast] == "c" 
			encryptedLastName = encryptedLastName + "d"
		elsif lastName[indexLast] == "C" 
			encryptedLastName = encryptedLastName + "D"
		elsif lastName[indexLast] == "d" 
			encryptedLastName = encryptedLastName + "f"
		elsif lastName[indexLast] == "D" 
			encryptedLastName = encryptedLastName + "F"
		elsif lastName[indexLast] == "e" 
			encryptedLastName = encryptedLastName + "i"
		elsif lastName[indexLast] == "E" 
			encryptedLastName = encryptedLastName + "I"
		elsif lastName[indexLast] == "f" 
			encryptedLastName = encryptedLastName + "g"
		elsif lastName[indexLast] == "F" 
			encryptedLastName = encryptedLastName + "G"
		elsif lastName[indexLast] == "g" 
			encryptedLastName = encryptedLastName + "h"
		elsif lastName[indexLast] == "G" 
			encryptedLastName = encryptedLastName + "H"
		elsif lastName[indexLast] == "h" 
			encryptedLastName = encryptedLastName + "j"
		elsif lastName[indexLast] == "H" 
			encryptedLastName = encryptedLastName + "J"
		elsif lastName[indexLast] == "i" 
			encryptedLastName = encryptedLastName + "o"
		elsif lastName[indexLast] == "I" 
			encryptedLastName = encryptedLastName + "O"
		elsif lastName[indexLast] == "j" 
			encryptedLastName = encryptedLastName + "k"
		elsif lastName[indexLast] == "J" 
			encryptedLastName = encryptedLastName + "K"
		elsif lastName[indexLast] == "k" 
			encryptedLastName = encryptedLastName + "l"
		elsif lastName[indexLast] == "K" 
			encryptedLastName = encryptedLastName + "L"
		elsif lastName[indexLast] == "l" 
			encryptedLastName = encryptedLastName + "m"
		elsif lastName[indexLast] == "L" 
			encryptedLastName = encryptedLastName + "M"
		elsif lastName[indexLast] == "m" 
			encryptedLastName = encryptedLastName + "n"
		elsif lastName[indexLast] == "M" 
			encryptedLastName = encryptedLastName + "N"
		elsif lastName[indexLast] == "n" 
			encryptedLastName = encryptedLastName + "p"
		elsif lastName[indexLast] == "N" 
			encryptedLastName = encryptedLastName + "P"
		elsif lastName[indexLast] == "o" 
			encryptedLastName = encryptedLastName + "u"
		elsif lastName[indexLast] == "O" 
			encryptedLastName = encryptedLastName + "U"
		elsif lastName[indexLast] == "p" 
			encryptedLastName = encryptedLastName + "q"
		elsif lastName[indexLast] == "P" 
			encryptedLastName = encryptedLastName + "Q"
		elsif lastName[indexLast] == "q" 
			encryptedLastName = encryptedLastName + "r"
		elsif lastName[indexLast] == "Q" 
			encryptedLastName = encryptedLastName + "R"
		elsif lastName[indexLast] == "r" 
			encryptedLastName = encryptedLastName + "s"
		elsif lastName[indexLast] == "R" 
			encryptedLastName = encryptedLastName + "S"
		elsif lastName[indexLast] == "s" 
			encryptedLastName = encryptedLastName + "t"
		elsif lastName[indexLast] == "S" 
			encryptedLastName = encryptedLastName + "T"
		elsif lastName[indexLast] == "t" 
			encryptedLastName = encryptedLastName + "v"
		elsif lastName[indexLast] == "T" 
			encryptedLastName = encryptedLastName + "V"
		elsif lastName[indexLast] == "u" 
			encryptedLastName = encryptedLastName + "a"
		elsif lastName[indexLast] == "U" 
			encryptedLastName = encryptedLastName + "A"
		elsif lastName[indexLast] == "v" 
			encryptedLastName = encryptedLastName + "w"
		elsif lastName[indexLast] == "V" 
			encryptedLastName = encryptedLastName + "W"
		elsif lastName[indexLast] == "w" 
			encryptedLastName = encryptedLastName + "x"
		elsif lastName[indexLast] == "W" 
			encryptedLastName = encryptedLastName + "X"
		elsif lastName[indexLast] == "x" 
			encryptedLastName = encryptedLastName + "y"
		elsif lastName[indexLast] == "X" 
			encryptedLastName = encryptedLastName + "Y"
		elsif lastName[indexLast] == "y" 
			encryptedLastName = encryptedLastName + "z"
		elsif lastName[indexLast] == "Y" 
			encryptedLastName = encryptedLastName + "Z"
		elsif lastName[indexLast] == "z" 
			encryptedLastName = encryptedLastName + "b"
		elsif lastName[indexLast] == "Z" 
			encryptedLastName = encryptedLastName + "B"
		end
		
		indexLast = indexLast + 1

	end

	spyName.push(encryptedLastName)

	##Stores the user's names and encrypted name in the array of aliases
	names.push(spyName)

	puts "Encrypted name is: " + encryptedLastName + " " + encryptedFirstName

	puts "Do you want to continue? Type 'quit' if you would like to quit"
	quit = gets.chomp
	if quit == "quit"
		continueRunning = false
	end

end


##Prints out the collection of aliases inputed by the user
index = 0
while index < names.length
	puts names[index][3] + " " + names[index][2] + " is actually " + names[index][0] + " " + names[index][1] + "."
	index = index + 1
end

		
		
		
		
		