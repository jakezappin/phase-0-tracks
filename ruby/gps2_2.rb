# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # Create hash data structure.
  # Split the string into seperate items.
  # Add items to the hash structure.
  # loop through and set default quantity
  # print the list to the console using the print method
# output: a hash table 

# Method to add an item to a list
# input: item name and optional quantity
# steps: loop through the list to see if item is already included in hash structure
  
 # IF it is
 	# Add the quantity of the item to the default quantity
 # Else
 	# Add the item and quantity
 # End

# print the list to console using the print method
# output: a hash table including the new item 

# Method to remove an item from the list
# input: item name and optional quantity
# steps: loop through the hash table to see if the item is present 

 # IF the key is equal to the item name
 	# reduce quantity value from the key item 
 	# ELSE 
 	# print an error message
 # End

# print the list to console using the print method
# output: a hash table 

# Method to update the quantity of an item
# input: item name and optional quantity 
# steps: loop through the hash table to see if the item is present 

 # IF the key is equal to the item name
 	# add value to the quantity
 # ELSE
 	# print an error message
 # End

# print the list to console using the print method
# output: a hash table with the new value included

# Method to print a list and make it look pretty
# input: the hash table name
# steps: loop through and print out key value pairs
# output: a hash table with all the key value pairs

$groceryList = {}

def create(items)

	tempList = items.split(" ")

	index = 0
	while index < tempList.length

		$groceryList[tempList[index]] = 1
		index = index + 1

	end

	print()

	return $groceryList

end

def add(item, quantity = 1)

	if $groceryList.has_key?(item) == true
		$groceryList[item] = $groceryList[item] + quantity
	else
		$groceryList[item] = quantity
	end

	print()

	return $groceryList

end

def remove(item, quantity = 1)
	
	if $groceryList.has_key?(item) == true
		if $groceryList[item] == 1
			$groceryList.delete(item)
		else
			$groceryList[item] = $groceryList[item] - quantity
		end
	else
		puts "That item isn't in the list!"
	end

	print()

	return $groceryList

end

def update (item, quantity)
	
	if $groceryList.has_key?(item) == true
		$groceryList[item] = quantity
	else
		puts "That item isn't in the list!"
	end

	print()

	return $groceryList

end

def print()
	p $groceryList
end

create("carrots apples cereal pizza")

puts(add("cheese"))

puts(remove("apples"))

puts(update("carrots", 10))


##REFLECTION

#I learned that pseudocoding is trial and error.  My pair and I had different ideas about working through
#the problems.  We were able to work out a solution through trial and error thinking.

#Arrays would require a nested structure.  Hashed you just need one structure.

#A method returns the value, here the hash table.

#You can pass variables, strings, integers or any data structures into methods.  You can even pass a
#method into a method.

#By declaring the information as global or by passing the information as a parameter to the method.

#I got a better idea of hashes.











