## encrypt() method

## 1. Take a string
## 2. Loop through each character in the string 
## 3. At each iteration increase the character by one
## 4. If the character is a "z", this is an edge case.  Change to "a"
## 5. Return the new string

def encrypt(str)
	
	alphabet = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVQXYZ"
	i = 0
	
	while i < str.length
	
		if(str[i] == "z")
			str[i] = "a"
		elsif(str[i] == "Z")
			str[i] = "A"
		else
			position = alphabet.index(str[i])
			str[i] = alphabet[position+1]
		end
		
		i = i+1
		
	end
	
	return str
	
end

## decrypt() method

## 1. Take a string
## 2. Loop through each character in the string 
## 3. At each iteration decrease the character by one
## 4. If the character is a "a", this is an edge case.  Change to "Z"
## 5. Return the new string

def decrypt(str)
	
	alphabet = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVQXYZ"
	i = 0
	
	while i < str.length
	
		if(str[i] == "a")
			str[i] = "z"
		elsif(str[i] == "A")
			str[i] = "Z"
		else
			position = alphabet.index(str[i])
			str[i] = alphabet[position-1]
		end
		
		i = i+1
		
	end
	
	return str
	
end

puts encrypt("Jake")
puts decrypt("Kblf")

decrypt(encrypt("swordfish"))

#The code above is passing a method call into a method call.  So first encrypt runs and returns the encrypted
#string of "swordfish".  The returned encrypted string is then passed to the decrypt method.  The decrypt
#method is then run and returns "swordfish"