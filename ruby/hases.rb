## Pseduocode
## 1. Create an emply hash
## 2. Prompt the user for input
## 3. Store the user's input in an appropriate key
## 4. Repeat 2 and 3 for each piece of information needed
## 5. Print the hash
## 6. Prompt user if information needs to be update
## 7. If user selects no, print hash and terminate program
## 8. If user select yes, prompt user for key to change and store
## 9. Prompt user for updated information
## 10. Store updated information in appropriate key received from user
## 11. Print hash and terminate program


customer = {}

puts "What is the customer's name?"
customer[:name] = gets.chomp

puts "What is the customer's age?"
age = gets.chomp
customer[:age] = age.to_i

puts "Room to design?"
customer[:room] = gets.chomp

puts "Theme of design?"
customer[:theme] = gets.chomp

puts "What is the budget?"
budget = gets.chomp
customer[:budget] = budget.to_i

puts "Customer name: " + customer[:name]
puts "Customer age: " + customer[:age].to_s
puts "Room to Design: " + customer[:room]
puts "Theme: " + customer[:theme]
puts "Budget: " + customer[:budget].to_s

puts "Do you need to update any of the information? (Y/N)"
needUpdate = gets.chomp

if (needUpdate == "Y")
	puts "Please enter the key you would like to update."
	updateKey = gets.chomp
	puts "Please enter the updated information."
	newInfo = gets.chomp
	
	if(updateKey == "age" || updateKey == "budget")
		updateKey = updateKey.to_sym
		customer[updateKey] = newInfo.to_i
	else
		updateKey = updateKey.to_sym
		customer[updateKey] = newInfo
	end
end

puts "Customer name: " + customer[:name]
puts "Customer age: " + customer[:age].to_s
puts "Room to Design: " + customer[:room]
puts "Theme: " + customer[:theme]
puts "Budget: " + customer[:budget].to_s

puts "The program is over!"