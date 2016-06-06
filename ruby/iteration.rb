#Release 0

def say_your_name
	puts "What's your name?"
	name = gets.chomp
	yield(name)
end

say_your_name { |name| puts "My name is #{name}!"}

#Release 1

numbers = [1, 2, 3, 4, 5, 6]

customer = {
	name: "Jake Zappin",
	age: 31,
	city: "New York, NY"
}

puts numbers 

numbers.each do |number|
	puts number
end

puts numbers

puts customer

customer.each do |key, value|
	puts "Customer #{key}:"
	puts "#{value}"
end

puts customer

puts numbers

numbers.map! do |number|
	puts number
	number * 5
end

puts numbers

##Release 2

