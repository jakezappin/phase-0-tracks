var colors = ["blue", "green", "red", "yellow"]
var names = ["Jake", "Tony", "Bill", "Sam"]

function add_color(new_color){
	colors.push(new_color)
}

function add_name(new_name){
	names.push(new_name)
}


var horses = []
if(colors.length == names.length){
	for(i = 0; i < colors.length; i++){
		var horse = {name: names[i], color: colors[i]}
		horses.push(horse)
	}
}

console.log(horses)


function Car(make, model, year){
	this.make = make;
	this.model = model;
	this.year = year;

	this.accelerate = function() { console.log("VROOOOOOM!"); };
}

var new_car = new Car("Ford", "Escape", 2016)
new_car.accelerate();