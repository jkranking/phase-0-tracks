
var color = ["blue", "yellow", "red", "orange", "green"];

var names = ["Ed", "Sam", "Christina", "Jeff", "Jake"];

// color.push("purple");

// names.push("Paul");

var horse = {};

for (var i = 0; i < color.length; i++) {
  horse[names[i]] = color[i];
}

console.log(horse);

// //

function car(name, model, year) {
  this.name = name;
  this.model = model;
  this.year = year;

  this.honk = function() { console.log("honk!"); };

}


var anothercar = new car("volkswagon", "jetta", 2009);

console.log(anothercar);
anothercar.honk();


var newcar = new car("toyota", "camry", 2016);

console.log(newcar);
newcar.honk();