 
// set an empty string to a variable 
var string = "";

// create a function that takes a parameter of a string and reverses it
function reverse(word) {

// in a for statement set a counter to -1 to act as the index for the string and it will continue to run backwards until it equals the length of the string
// next set that index on the string and plus that into the empty string
for (var i = word.length-1; i != -1; i-=1) { 
  string = string + word[i];
}}

reverse("hello")

var tired  = true 
if (tired) {
console.log(string);
}
