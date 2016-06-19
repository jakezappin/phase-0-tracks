// Release 0 Psuedocode
// 1. Create empty new variable to store the longest word
// 2. Itereate through the array of words
// 3. Check the length of the current word against the current longest word stored in the variable
// 4. If the current word during iteration is longer than the current stored longest word, update longest word variable to current word
// 5. Return longest word when iteration complete

function longest_string(array_of_strings){
	longest_word = ""

	for(i = 0; i < array_of_strings.length; i++){
		if(array_of_strings[i].length > longest_word.length){
			longest_word = array_of_strings[i];
		}
	}

	return longest_word;
}

console.log(longest_string(["long phrase","longest phrase","longer phrase"]));


// Release 1 Pseudocode
// 1. Get the keys for each object
// 2. Iterate through the Object 1 keys
// 3. Nest another iteration through the Object 2 to if Object 2 has a key as the current Object 1 key
// 4. If yes, check to see if the values are the same.  
// 5. If yes, return true
// 6. If loops finish, return false

function compare_objects(obj1, obj2){

	obj1_keys = Object.keys(obj1)
	obj2_keys = Object.keys(obj2)

	for(i = 0; i < obj1_keys.length; i++){
		for(j = 0; j < obj2_keys.length; j++){
			if(obj1_keys[i] == obj2_keys[j]){
				if(obj1[obj1_keys[i]] == obj2[obj2_keys[j]]){
					return true;
				}
			}
		}
	}

	return false

}

var object1 = {name: "Steven", age: 54};
var object2 = {name: "Tamir", age: 54};

console.log(compare_objects(object1, object2))

// Release 2 Pseudocode
// 1. Create an array of words
// 2. Get input as to the number of words in the string
// 3. Create empty return string
// 4. Generate random number to get random word from the array, add word to return string
// 5. Repeat steps 4 for the number of times the inputed


function random_sentence_generator(num_words){
	var array_of_words = ["computer", "javascript", "ruby", "developer", "bootcamp", "was", "is", "code"]

	var new_str = ""

	for(i = 0; i < num_words; i++){
		random = Math.floor(Math.random() * array_of_words.length)
		new_str += array_of_words[random] + " ";
	}

	return new_str
}


console.log(random_sentence_generator(5))