customer1 = {
	name: "Jake",
	age: 31,
	location: "New York"
}

customer2 = {
	name: "Susan",
	age: 30,
	location: "Myrtle Beach"
}

customer3 = {
	name: "Jeff",
	age: 60,
	location: "Huntington"
}

customerList = []
customerList.push(customer1)
customerList.push(customer2)
customerList.push(customer3)

index = 0

while index < customerList.length

	customerList[index].each do |key, value|
		puts "Customer #{key}:"
		puts "#{value}"
	end

	puts "------------------"
	index = index + 1
end