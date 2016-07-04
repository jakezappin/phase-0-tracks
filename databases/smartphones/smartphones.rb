#require gems
require 'sqlite3'
require 'faker'

#create SQLite 3 database

db = SQLite3::Database.new( "smartphones.db" )

create_table_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS smartphones (
		id INTEGER PRIMARY KEY,
		name VARCHAR(255),
		manufacturer VARCHAR(255),
		os VARCHAR(255)
	)
SQL

db.execute(create_table_cmd)


## Method to Add Smartphone to Database
def create_smartphone(db, name, manufacturer, os)
	db.execute("INSERT INTO smartphones (name, manufacturer, os) VALUES (?, ?, ?)", [name, manufacturer, os])
end	

## Method to Delete Smartphone from Database
def delete_smartphone(db, name)
	db.execute("DELETE FROM smartphones WHERE name='#{name}'")
end

## Method to Print the Smartphones in the Database
def print_smartphones(db)
	smartphone = db.execute("SELECT * FROM smartphones")

	
	puts "Name\tManufacturer\tOS"
	puts "____\t____________\t__"
	indexI = 0
	while indexI < smartphone.length

		puts smartphone[indexI][0].to_s + "\t" + smartphone[indexI][1].to_s + "\t" + smartphone[indexI][2].to_s
		indexI = indexI + 1
	end

	puts "-----------------------------------------------"
end


### DRIVER PROGRAM ###

puts "Welcome to Your Smartphone Database Repository!"
puts "-----------------------------------------------"

trigger = false

while (trigger == false)

	puts "Please enter a selection: "
	puts "1:  Print out your database."
	puts "2:  Enter a new smartphone to your database."
	puts "3:  Delete a smartphone from your database."
	puts "4:  Exit the program."

	selection = gets.chomp.to_i

	if(selection == 1)

		print_smartphones(db)
		puts "-----------------------------------------------"

	elsif (selection == 2)

		puts "Please enter the name of the smartphone: "
		spname = gets.chomp
		puts "Please enter the manufacturer of the smartphone: "
		spmanufacturer = gets.chomp
		puts "Please enter the operating system of the smartphone: "
		spos = gets.chomp

		create_smartphone(db, spname, spmanufacturer, spos)

		puts "Your entry has been added to the database."

	elsif (selection == 3)

		puts "Please enter the name of the smartphone you would like to delete."
		spname = gets.chomp
		delete_smartphone(db, spname)
		puts "Your smartphone has been deleted from the database."

	elsif (selection == 4)

		puts "Thank you for using the program."
		trigger = true;

	else

		puts "Incorrect input.  Please try again"

	end

end

