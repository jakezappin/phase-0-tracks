
// PSEUDOCODE
// 1. Enter a string
// 2. Create a new empty string
// 3. Iterate trhough the original string starting at the last character, add that character to the new string
// 4. Return the new string

function reverse(str){
	new_str = ""

	for(i = str.length - 1; i >= 0; i--){
		new_str += str[i]
	}

	return new_str
}

reverse_str = reverse("Hey there!")

if(reverse_str.length > 1){
	console.log(reverse_str)
}